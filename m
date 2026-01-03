Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4F5021ABD7
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767456233; cv=none; b=LBxkLsOJjMkF9fevlLuT/c0Lg+2f/hpn/8mho/xSBR+dtcqp6+zxzl40Zb8Hvv06EH9UfycsZahy3VvgYUAT6j8sBY09a7BclZAfoYk7QnWwduW3v6EOe+BYzTldJFH1V6Cd88zfJSW6OUrj+L1dlbJM0zLPqLiNrcnOAn2C2PU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767456233; c=relaxed/simple;
	bh=fgqY82SgfZfYhi0rOgNH+BB+1A2IXLrB+vJxci+JnK4=;
	h=To:Subject:From:Message-Id:Date; b=OO1ibgYVERtE+GNDIuy+I8bT+0lD1Qyx9gWPzTtpSEjm+orucEMZcwztRI5MPoBoH/kAlRpJwidctRtNjMYUA8Vatr8+3DsmU0R4Al3E18tmuB8R31HbtRJPnGgpkJ8LCzUCE8hCPMenK/EvDGaW7PphYFL1+2OrJnIQ8P/fvdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d7n6z+IL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d7n6z+IL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CE0C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767456233;
	bh=fgqY82SgfZfYhi0rOgNH+BB+1A2IXLrB+vJxci+JnK4=;
	h=To:Subject:From:Date:From;
	b=d7n6z+ILAeaSieNncytu+6PATQN1uYYkkSN50QBgClht8aiF7Ku1cBvy9cepEIHEE
	 y4PxnKI6us+bVtLLCaf0AEIbhFk0+9UwcZk6ir1c8WtUt9MikTJpJZ6Gj9lqNJtzDO
	 djCm3z7PR49sZbQ05LASYidtxhkIm5Y0/iXeuazXmkvs7GyLNsJv4tVsscwlhBf9uK
	 jfDqEJM5EtFi5WmxHoDho6vGmBjfkvtxdjN4H//TiykO0DN8LS2Yscrmf1jwSpmZBg
	 yycRMFNBSMgb/15w1ppnhxaMONdCZMDB4MahzdhOeMuw7skX6aLI13Qep0mhXgJQWQ
	 KkbpZDTStf4VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965EBFC6160
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176745623358.25186.5450851992116232274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8fe6e688bb526ad2fa75e5c4b09f69a0f3b171d289597925fdfae554ad1cc41
Date: Sat, 03 Jan 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767456233
