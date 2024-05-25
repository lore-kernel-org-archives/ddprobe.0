Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FC22126F1C
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 17:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716659063; cv=none; b=MrVBpMDRB6YeeNRleLoC/tEWFn1aYF0q3/j3nT5VrZxw/+koY+j3b8sxfvM+zv9YPpzLZPLr+JN5iHogFULqkGq468LBsPU+Sfay8mtf4cb5Wu6UfYO1Njib62EXIruMlhESe3IDJ3XZ/TApGG5eEVTvhQJ0pwBdpl12KTciFOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716659063; c=relaxed/simple;
	bh=Udxmo70cDVRMXjrGMhMiufB+rk7F2MaqCpE4rdDPd5A=;
	h=To:Subject:From:Message-Id:Date; b=bH2fnS20r2UCBPzCwOyDRltkZ8sra+YD98wJChU1sNQL064KbRCtZmngfK4T4fawBk5ws8N70fxYMFHDpfFmOVJKepi3D4SJpdWc4SOtrT1317qIdSHHCzWWse4dF9LuKCTJAVE/eCOTNO6hrZWrjP957hgV8lCXhn3bZYtqr4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bcMw32EQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bcMw32EQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D59EBC32782
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 17:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716659062;
	bh=Udxmo70cDVRMXjrGMhMiufB+rk7F2MaqCpE4rdDPd5A=;
	h=To:Subject:From:Date:From;
	b=bcMw32EQkap+Li5z5BiuAoAANE3CRh/L/YRAk3dC4k6kn72yhmkenJBlEeZDyoAp4
	 DnT71IXsYWL+gQMxskWRIEOl4VJyE6DNtloKO92N8aaG2aNVu7p7kHN/9vuhgHYuTy
	 W3Rp4j3gZD3+ycdIRBIFAZspfWKezFTO3Rh3DdgMC6hjbOwIDAL4jZGuadBhWOP8iT
	 XaAvVcvNyW7Op1IKJbhYl9AIPm6eSfuqmArDHv/iaVV8ubbPxwXz5qiRmnQB8pOLAd
	 gfwgl9SbFBv07Tx0ol9lrLjYjSIXE5F+kAz35mHCXZWvG+VyhQsHO8XGU4l592TrZS
	 JVOg/8M9iTJ+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C47A3C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 17:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171665906277.32266.6872976809533291454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d1a5eede9f5f2f0471e5452c09e67214cff588f09303e1eac83002daee6047c
Date: Sat, 25 May 2024 17:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716659062
