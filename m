Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC902913
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737251754; cv=none; b=C2ysWObo+4ynxzoqQMQCHK9Q3WQoT06jyNMHEDnY0wfzFgsPj5MkklKN99cGp5OfMfWDlTfl+C8wcva+0zcIy7nPBNtmnr5C/WkVj6rTLAUTtEIP6jYHj8YCewOd81U2zF0QBO7vpLvf+b+fmi1LH+zruxC6yOmJ8nZtahe2qc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737251754; c=relaxed/simple;
	bh=h3EsRhu9FpM8sZ6f3SBNbG1/0sc087cApT8/FtShGdE=;
	h=To:Subject:From:Message-Id:Date; b=iKxoWP2PCW6paqCuVsbgcgTRPswxmJNytN64SL/zaWAd8/77ujTWPGyd9umDAPWFuFZXPP1rTN40y7m0Sr1iEzrMQAdct9ESseqSEdr4nu2qc6QITT3dEsvBIuMABFPnQUKoH4jypMUOsntlsJM2ffKcvE+GwH0xmbRoVMPIH5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZSxkLHVE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZSxkLHVE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40C4C4CED1
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737251753;
	bh=h3EsRhu9FpM8sZ6f3SBNbG1/0sc087cApT8/FtShGdE=;
	h=To:Subject:From:Date:From;
	b=ZSxkLHVED8ZQrNgnO8kJ3h9+DCOYal2gVAYwsq7eU20ejletOl40MGQ3Hi+mIbXXY
	 j8Vbqq1ny0lni+ck56oXSLREPMEzfLKR4C9UuR5hipJL7wV9UxLbVVg2mxGzEMIIZH
	 eeumjmiPCUJJQlmtVj4GFHOssMic9ffH/IHvohiNu28WvSw6UvgHxf5yXse6hhbyat
	 YmS+3EjbJBw6leIvcIK/s690oQ8YxY5+KITMLvWmSt2NgjtzEQf9gzZ9uRSVt+eBP5
	 E86HpRrohGQusXJfKOAbqY102s/9CKqRrdCG2bqWpPfUts8Oyoviufjiy8Zi42a+kZ
	 8PYb7vD+LHUFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949DEC02185
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173725175360.26661.2928419621383950796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 333d4137efb4681b8487efdeb4d517f58059809705921a8dadaacc42e0a53a15
Date: Sun, 19 Jan 2025 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737251753
