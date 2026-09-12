Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AF136B90A
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789232434; cv=none; b=ofWKDiQ5RX1oouxcsE1YsA2f2OQXEJcXbk3gz4nfvjb+HG0wFDg0nv2Wt3dOO64RqqrkfzS4pgo0uOIIe4R3NUnfOLvVbb5V0TISzFx4uXW04iWiX92jSspDC4E+/2UI13941mqj+wDFBVgV4GIPGlfHLy3lQOBN/c+K4ZP6ZE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789232434; c=relaxed/simple;
	bh=uJSZJFEF1kEJgU/TLWVwE/oOP7gOQezsZy0yNajHeaA=;
	h=To:Subject:From:Message-Id:Date; b=ePAh4gBq7yC2EgCPX23BrXgHLjtRXvSWxrPvMOpYzDyHA0qDbB0IagZdP5AM3AVIQRvqpflYnZxfV3qD94FFcWO+mxIRhbnLprmqeEuQmLi0iu/xydKpvAKg03AK99RtXWXx40vcn1f5FsUs9NmDGJNsLOSjjZycJ36EH3OabxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXVP897x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXVP897x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E59C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789232433;
	bh=uJSZJFEF1kEJgU/TLWVwE/oOP7gOQezsZy0yNajHeaA=;
	h=To:Subject:From:Date:From;
	b=BXVP897xo544wPUfOtglY1Z35heo74dEo/bfQ9JCPW/Zw0ca10KEV2aRPqiA2SC2d
	 uQSARw+K//3a6pomHjHD+eJTQsQ6iZorenPLI8/p743NfZKPYAom1gZrCycAURHS8f
	 vVeo6YcQGMaXzD1YMCwdvPTAm6jdlzOwRLMYoI7Kpmq188cH/I4cw45e192ZPCUTyh
	 /BqTF2K8hYwJBSX3NiSlrHWeMo9bYlAbOf6vTfu0RY9i8dugsFEQICxO6OXcyZRIUY
	 wBKybFDaigAlBCjzsHzKIhRN5nUomCHZeSy8NReCkM2/0RyluGLByfAsOPK3OL47iq
	 E2Ouzm4ag6Rkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF36BC88E59
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178923243368.27152.10248710807076319103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43f9e1ffcb8d880c7a4c60e708db9c91ba7ce00c65165bf73a3e4eb9e9e847a8
Date: Sat, 12 Sep 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789232433
