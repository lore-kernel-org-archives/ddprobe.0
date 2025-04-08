Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEE1C26988E
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744114194; cv=none; b=R0ZHtoAdTAn3hSEI9nOgXfUpQEDzvrPeB6hN6rc1LsQkfQwL5y1Hhv3PnU0FCL8VFd8hGrIqXvd3PgdEjQ88EZf1aPmxgmMA8bRzEx7x9JMIKhwZJL4yzAG1uxvryGEbxtH7W9Oi1RwoikKbhy+TPE/wZh7pMzfyUqpvAL/5Dd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744114194; c=relaxed/simple;
	bh=HhKfLhhGD9c4XOnbZzW4zu/OvBXFscjD1fwyErCHc0I=;
	h=To:Subject:From:Message-Id:Date; b=jwExkZykIS3JvxV+CG8fBULsofc1h74Vhn/1Yr/CxOOBvenPdkh2A1ELWxwnwoCoNqNY9kfJh+luwUYVG3PNYOQA8k2ZiUUV3qfFrHcyFcSkcaaRbQjcWgSUUsDCe1NImqjh3p960UHp0C3tn7Dr/k8iyDhIsoKEVZxLssk1ZNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XwxpcEyz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XwxpcEyz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D85C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744114193;
	bh=HhKfLhhGD9c4XOnbZzW4zu/OvBXFscjD1fwyErCHc0I=;
	h=To:Subject:From:Date:From;
	b=XwxpcEyzWttore6UYYWhPDxyKLX/97FKGWIT++pSa4rGZeFgfrvuy1R/Yn+UDb7Yt
	 lKv5pxUIl5+2BcPPj1Q3uZd6p6TfnoQFkpBj4nVB3mMYq92oXqq9ZwmvsY1/0m6Mkk
	 PwWvMmQqLiKwu2KugzsIRF+yr4dJe0SFsMse3C44Cf91EC0932QLKg0GvkriuhMuLe
	 0ld+MTndO61W6/AV0C/v9iO9Ml94OxrWKjp0HA3ycehM6RF8kanf5hEtCs/ErxVfKa
	 GqE9d3dpZR+seXmNjNhOp9Il7KriEuUWB7EuO2E1sVcVgyTqCDn7Zn5GaVHdL7P6Qz
	 7ARdXoRuQz9mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94063C3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174411419359.4577.12498185607088390995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53130c1582119c165fc9f816dae9f0b8db4cf58d09a5152e984af9e2a3d4f867
Date: Tue, 08 Apr 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744114193
