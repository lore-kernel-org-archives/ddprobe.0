Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A42175A80
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774179294; cv=none; b=TAPdkgou//BLRZ+0E16Z80+Dj6FToAOjRLmQQssRIUBt1UKPd9Z0cMpayl22nTZu6V48+DXOdfrM0hQFH2wE9cjQIbVTjDIMn48wXTQverj4VbA+XMK4RpOlL+NwW3cO0GeF5q5FH0W5rOUXuPFU3BdWGtV3oo40m82pf/iSzb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774179294; c=relaxed/simple;
	bh=+CpboFCGVkkcFbcaZA/nXnmlFRFrLtyLUBfvcfzeZjw=;
	h=To:Subject:From:Message-Id:Date; b=WwyJFBivbyf6OL/tg6oovxMHiAOThmTue1bRwiDrqQBYttEROcUT4B/ZIokvOyLP74IK5oiud+waqi0nR95nWyDndfBsxxCJ0EkXhmDd2Rm8PPsK2KNNFomOIFxiTWtWVS/x9Q7FsR+V9ZB7cDfnxNbIAoCMbRClVufu86YyXfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RyzZvHub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RyzZvHub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2DE0C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774179293;
	bh=+CpboFCGVkkcFbcaZA/nXnmlFRFrLtyLUBfvcfzeZjw=;
	h=To:Subject:From:Date:From;
	b=RyzZvHubAq5jprPQMCYDjZnr/W/SfeY1W1kaTsmhY9I0sZ6NHbSKLA7c+XY/wVbj6
	 fVB14LBHvhhEjevR8A7XCoKTzzhbScJFMP/QhWhXH/5vVUjNqtewX74TFVjNMqyLL4
	 F/dNoNR9rlsa8keuOYJwkTbOTDJDkBeSm8XWHg5YZVsg3Q5VEJOn3WIy2I2lN2kwta
	 WrVvfLl+vfPx9BLlMZyWU+4UlaELVK4S+43FyXoZ+17RGsYoj3VB0OxOstCE2HVGpl
	 ZkZHo+QKaCBTQZ0PWGfPqsQmQp2HIKyOpoQ8VnuvCh55m2g7NtI/S/RS7ujWXC5M3P
	 JF02muSrA3cBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBECFC72BE
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177417929360.14209.14476661808860077408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f3c419caa522308a10cd15e0b2d7c6af7e8104bbc453a9990fdf564abbe9c8c
Date: Sun, 22 Mar 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774179293
