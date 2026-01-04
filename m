Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFD52356D9
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767534234; cv=none; b=V2NYZom5nPM1uGZ2jMHasDhyPXM/5u6bmMVR2XPyiUeWVg5gXE7LPg04h6D2ENhH8RMhUDH5A1yud4sGTTxfDE24PeJzqNiFrNfdux+hRYV9e4e+81BxS3XNW7mFCGKta1w1M0OZkEpPYDr7PxCKQF2cW5lEoMwJBSwOnVMuDlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767534234; c=relaxed/simple;
	bh=TujhnLU1944psgOrO0wNT3l2mU6EN1fpsBy1Bl4XeZE=;
	h=To:Subject:From:Message-Id:Date; b=X417/1HkHQWXnopxQuOD3VyX73JoSF4qehU+LO8IOGTdRAcCctSV66khKUU7oMN3TbY4jy1VBdUgY3Njh9MAKz/4thHIGWts08fhUhJDCkH3ehhozHWp9GXOSq5z7zVMSJZC/hE74UgtfxnsD+1eflUz5I8FXFT+IEykXQ9qGHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HNEfEbDw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HNEfEbDw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3165C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767534233;
	bh=TujhnLU1944psgOrO0wNT3l2mU6EN1fpsBy1Bl4XeZE=;
	h=To:Subject:From:Date:From;
	b=HNEfEbDwYC7zWs3kEcB64apxF5sTTnW4ifEpSJ9EO0IE/mnwZotl7LcHefvRVu26n
	 Ept3g9KDvjhRiu2v8+Y5dcmC0ITKcQ7FHzsk47CM8qDIZgWBLoPugBJKfCV8jhbnDK
	 urYOekA/rJul2l+cn4oF1MZ2I3v9AD2n7piOmlzDpWq5P/xW7NY01610WoHT/Hnz1u
	 YOFj1oazhmxlCJsPHWBcbdCaWbco2lSMkSFsI2pp5yzIDpp7cmdkgMN0XhzG7RiG0+
	 urgZ/kR3K70Q4OuHuARYGUDJgoKwV2GyGqtH4LD5Fa4JoOj2soXSTOvFi5pyqS9d/P
	 VNditpBXLVdKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943D3C2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176753423357.28784.785575095073925715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0f91478d88ce2179466700ef397578118feb97581709eaa7e83d6402baa89ea
Date: Sun, 04 Jan 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767534233
