Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10BFB175A5
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772960694; cv=none; b=NxQf/x2yV6XO6cSD0mkb1fllmKOuhwNMuWAdEwyWHCm9YWNcr1680afcJ2chOGwru6EGHNQAaBc3+F9YEEPYEo+D5XBqu0I/qakciKTbdJLfHqDF9F27Xn9Ft5Zb5iBDq8vbpY6djv1gqu4TTrYtVdWNirMeuBc6esJUlfSKb7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772960694; c=relaxed/simple;
	bh=FegNoAe+MKvdGmwLvPcPMdiHyGELn96ylh7Bp6O1QK0=;
	h=To:Subject:From:Message-Id:Date; b=KuC4AMnVzqCoJ9p7XPxIZks3mlQGNaHq8cBGmM7mvDEDnJZzaqVVRk3FgaiTcwt1PrxA4zI8ev9NX1j/hUadeL7bHq2Ev2VCygqyD5WZIabDl6AGEWLsy58YkCPRaoXTjCUYKsjOXS3jIxhbiN8nSBdv7AlfXLmwoCgbvIoKE38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bbL714W4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bbL714W4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B2CC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772960693;
	bh=FegNoAe+MKvdGmwLvPcPMdiHyGELn96ylh7Bp6O1QK0=;
	h=To:Subject:From:Date:From;
	b=bbL714W4SLBmB0yaLtUWkCw4I07g3iidk8slEdCOVig56SXRK9kXRntJgEIw3R4nA
	 fWjNqXDfY1J99J9Wo/8T51sP9tmGAI1hcr6BiXnXAGZMVfbHb1pLWpBtBA1howDhDO
	 F7GDzr8IBVPZ3JlDJCYFsbX48VwrINMvCZ2Wh1FMTm9LIiaPh20TKWrz1KM1oU7Wx+
	 Lr+3oXezDAUfppqFQSshAKArHQYNcReVyZyCjyOJk0ECA/TCZ3GaIi8KaTdD3a2QcP
	 1ynIRHktgMEcmwvVMg35QNuioFsBtHacPqOH516S4yiDlmJ0FSdLLR0nmiCmqJJkzH
	 4AGLuFBdwlX+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F74FF55126
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177296069357.1659.7414569663209647016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1e80af6b49a85aff669bb062f5cbcea915a690f7c32536c9a33c55f7d75819d
Date: Sun, 08 Mar 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772960693
