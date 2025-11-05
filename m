Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406E629992A
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762379394; cv=none; b=JcfYCHSH5yJtClPkwJF3M1LBkjHibuIt3tJ9+3k1NQX2XxehgAT126rGNuVKzFcHIZZ0A2LCXGYAo2N/TtvSoPAYE4l6yU9o/zRHU+OBIko7y10xsIDPc1gt2Ztodi0IOz/waXc/MMWuw6UrcGwQ8Dyxg42TmOLsL3X8qWx0VXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762379394; c=relaxed/simple;
	bh=FGknOjh5KK1gYYUREfwEO4xRC5e/4xyGaKd6GbpZmaY=;
	h=To:Subject:From:Message-Id:Date; b=PnxT5GBl4hbqm4v2bNhbZ0DdWV8MHugUk03LnAF2xXPqsCJX/sYItb0/FziruDlvVsV0MQ6pl3CzLlzahWpnq1pX7myURTR/hN5TuWOacjOR9hqHJl1oM+8OK4CnSi0wvLv7Mk+wOCJeBoDO41ux7H8zNdlLBNCieAyktH9sung=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dgs0DrJP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dgs0DrJP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87D0C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762379393;
	bh=FGknOjh5KK1gYYUREfwEO4xRC5e/4xyGaKd6GbpZmaY=;
	h=To:Subject:From:Date:From;
	b=dgs0DrJPWGbFegKN76OCVBuze9CYJGxBz8Agw7AnJJdh9qgoFUMRTCaFddUJbhBDe
	 ylf442k7WtGwJU0zMDyDY2vy/lPdROcZJEpghy29niMGDDuV8hJvMsP0FURpJq2Pmf
	 WlXZqMWtkeEHnSL3Aun9q8ag7TiyWWW2W/s5XOG1bVjY77aAlJhtNIN0AcuPA1mgLG
	 rRHkB0A10yIbb4TGLAyC3bcnWnMOMVY3cihFtO6FAm0dHFBUtl4gLUjzZsj9FuZ+y2
	 6PzbS0NEpfheZ1hFpLVM2ULa7QccebVcsx2tzcZVPNydL7YpmBD/lywbYePjo7n7on
	 YfD4EgOidsVhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9800FCCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176237939358.21731.10753154486146461268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50c742a3aba388f7e1a7317190887dde652a33e0f6b25b99b21923d9df2ede0c
Date: Wed, 05 Nov 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762379393
