Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BE41448DF
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733593554; cv=none; b=cUdoY1B3ALxiQZ3eI+cNi6RLahWQl5czgHQRfvEhCPJX1/wLeuDYQp/wG92PoMl0dduRoojHehnyiYgRenvF0wMWqEHzLuDE2G8kcWT+qOEdeLcFjzSmiO1PRvft3HJIwwKbr5w4aFvRz4khsMKRe6Eynl7xTeMHhPKplFEp0xA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733593554; c=relaxed/simple;
	bh=TkOz6pXkvk/2qmRJWVgDd7uZ0ZcKCMSukuBpvG1SEYA=;
	h=To:Subject:From:Message-Id:Date; b=XRiBBBVStFq2AtNnSAXSldcJKMxYei6hfbaFSIjWfBQ4VLYtdPGi2wFYxtEOL7MGrp6WpH4wczz1rJ9FD5OXmYPfhCxKDodERbHUlq8anx0+AqRtxKncr3uV3EANA37wEhJgAaeEAyoBZCbj4CyY9+ANWIMQzs/vI+wHn8d5PAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rSE7uwYp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rSE7uwYp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0EB0C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733593553;
	bh=TkOz6pXkvk/2qmRJWVgDd7uZ0ZcKCMSukuBpvG1SEYA=;
	h=To:Subject:From:Date:From;
	b=rSE7uwYpRkrYdUfrHFQb5eSxvbv8tTguFu8jwNScIURgcHj6JJttGJZiguYTtAbko
	 yKajkDye+Cwa4LMZg8XT7qbuhQrBG8s+fujWb+MZH59UKCXp4FIpqwHI2/vp5yaoAx
	 B661zGMWeByELI94F5n88gA22TOTT1ERj9VJiQ/Mr8GaPdAkE9mtD2SfIiY+UDergf
	 A7G0aNSWt8Gl0TiThgUErXbLp+hGudIP1OlDpR9HDVMYZKG2RtoMkApsdVjsxm8Pb9
	 vCTYVj+sQ5csvN5GPGwF7d3mB2YZF/o49Z7vD3pnEr4stHSzn/hKiKXIqYJYBRg7Ot
	 Alvhn8n6i48+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D2D0E7717B
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173359355360.30863.16828059074500325300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1084d08ff83d551ba1428bcfb351ca1dcd95c80b89ca4d9b301c7f69cb349e9b
Date: Sat, 07 Dec 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733593553
