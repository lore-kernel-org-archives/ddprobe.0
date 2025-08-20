Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A46F1F2BB5
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755668395; cv=none; b=ZeAXt6ZiD1SnJzbwt0BpL9ZuIb5d9hWlNVP8h2S1ZOa287l6fDaH9Szn02vgP2AzCc6QAgA9tI94N4/zyAdC5tjCkZNFMHOqaF3VKhRRAxSocFnr7hVgN18Fkr6NOEGlfXlnt7lZ8tNRVdokmB4Srxtbleg+ufLD7VZl0w0Qgek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755668395; c=relaxed/simple;
	bh=Mwd8OZHAsu+TpXrfNgADqQjfvOyR5puUj7unq75iJNs=;
	h=To:Subject:From:Message-Id:Date; b=qheePaLsdq0cmdS7fe5JYFQEyhkkhL1g1ufRl9MZsAr6YM6t8JezXv1v+/m37ODbIBIM3Mw+kD0uFBhJh7wQ761VL/SrD9iDB/BvzYphZLBzy9dUlybXyfdSefjKvkV83wAfjUPaQ86I/b/K/3hotUvWIerk02xdMvrSzk0NeQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O9VeZDOK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O9VeZDOK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CAD5C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755668393;
	bh=Mwd8OZHAsu+TpXrfNgADqQjfvOyR5puUj7unq75iJNs=;
	h=To:Subject:From:Date:From;
	b=O9VeZDOKjzMhXCCvpOqVWf8UsUhQ+LI/zxNQetJ02FabGPBWDl7AutRDEFICz5Ha1
	 Xq94fUXTgk75Vl/RYYrFIF0InI4ossTveWRlRnv4OSfsfAoRaT+mmw7D5fMSuos46A
	 OqusG1Dwkb+r1vZYnw8UZXXWLkjihEhD2oRgZ5+0oLVmj0sQL/gO/XuO0kjCW1K7ZE
	 wqpw+yTEfsRSqS4y7SiSm3LiqfbKKCi6XdibNVaZXIA5CAHJXq1fRngHoZiEcdonSN
	 KmufI8s6t4YpChQLOCmlglukkN4kSS4upt/ijFkoen5GH+nfgvs5jm52RZtTgee8aF
	 BdkEDbS1qFmFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFDCCA0EED
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175566839357.1173.15674446556707230398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9de8205d0e42faaf9aa4a82e5a157ac5aacda7b37717fb1f3c5d4ba3823ef673
Date: Wed, 20 Aug 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755668393
