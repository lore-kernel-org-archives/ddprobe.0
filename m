Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F1A3A1DB
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 02:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776218854; cv=none; b=ZY2Va8dPSaXaCqKxIiVmQDVHYQTJrpwDI8ZTQfLUH1grX91G82glqHHgmKrFg4enpZgmv0a7Bz9HpX3q2PTOEC0Z6q845j8hLRC9lg9+JmTdjJf2pzw2irKwVlkVMfdylMZhL2C/zPo4diB+zfv8GqtQKz0rDkB74E52mXdmtM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776218854; c=relaxed/simple;
	bh=XRjdKm2D6uBpyLiemBVm9kkOLP9AsRHwYDct65QIDbQ=;
	h=To:Subject:From:Message-Id:Date; b=R2JpOXv0Tob5NBbLevzwau2MoN8g5ji19MaAfELOmmvETkcu8/axCW7hUBWkBM9G3lRli95kpYh+0TaLm6ERdnIfIvCvUWdyMIVz7fgSRVRvVeX+J4SxsEQsM/GqldkOaLNYdlfZ1J8Cgx3E/J3YchIF2KSyaDAdMg/jU++6B7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IexrHmtC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IexrHmtC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F50C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 02:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776218853;
	bh=XRjdKm2D6uBpyLiemBVm9kkOLP9AsRHwYDct65QIDbQ=;
	h=To:Subject:From:Date:From;
	b=IexrHmtC9eWcE4qs5IaJaXXq6a9ahbw6/9MOOWGZlWPtRk7mhxBRuXyF89W5yin07
	 nbLlhOD1r7uj/XOh6GuGQzd87GGSNGFzoE7wRf5NuK0jqMEeVAomfatgB7PTeRcVxq
	 qMHhEzmuSkKgklmsjAZW85qZ5FgFctRE8VbQEPI5wyNQkKhFGOQGgMUWDZLkPH/syg
	 wouZUgzEhGQGjBuU2z+1yCr0UVH34ldhXhzZXMar/c+GMIfKLizZdnOrh8glZw2NE+
	 +UY9B16ZE9UnE7h52B734kg6JKoQCimN3WcTym1RVVALjGNk8ZEIoptYS3qTK/tiVC
	 YQqbnGbqEFrGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9681F9D0FD
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 02:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177621885368.1122.15284466994631995953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 647076b7f9e9cb76cbc90467116bb3e7a15d2eda131cd2ca7f3398cc1aea4bed
Date: Wed, 15 Apr 2026 02:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776218853
