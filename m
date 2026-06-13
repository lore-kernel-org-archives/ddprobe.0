Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73C2D38756E
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 20:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781381194; cv=none; b=Wyj1WQF3PcarwZinP9Y5KxF9j/1Ob/fpzTY85DQ9o1TwcYXH+yvv5dduiBMYieEqvOVH5jW8QucrDndzsIkQ5rv2cxv3eUOfNz2Q4lnWSkvWD+WMym32KAPIIWW7eJJ+kqUHtGtZcn3Aje+q9UckbO7Sg5nJfHkuRVwnuGU7K00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781381194; c=relaxed/simple;
	bh=9ngvG35sxM1A6NVtpHU134hd/SsKfH41+p+tVH+Mjbs=;
	h=To:Subject:From:Message-Id:Date; b=K6H/vzn30ygIrNt48ghxVEwCo0RlvdZws5WZbYR6LFbLlFSGGGEQ3mEzxpZ/vDLl7XJPR8UdxtheUh7DnU2dCQnQDsQJ6IXmMIxPq2y4NJn7xUvmgtdVN8t+f9ftFdR2ONPwpu7LqemDOgsGUK2jhUX3j2aoCwB1vxf517HGgEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HgGEH9KR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HgGEH9KR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C71EEC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 20:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781381193;
	bh=9ngvG35sxM1A6NVtpHU134hd/SsKfH41+p+tVH+Mjbs=;
	h=To:Subject:From:Date:From;
	b=HgGEH9KRGSwzd979XhHAHaGCQvRntpEIKEtwmBwHm+B7xN8CaP818ATc8p1K3MZH6
	 3E2XFTMsgfmP8FFLxZOLGMBiuTpkqGuK8f0HPM4R6DARvWwbioIjKbNOzNBDX/P5Lz
	 9/czoCsGQ2EVoEBg6AMkmYVAaTgKjbEYXze2ujhs2rdDLdVe7+OdMyldiwN0u8mHG4
	 4SsICDJw1FEi8r7SYj5Fu3ge2/fA1yaho6kxOVICZoZcmcONsS5fpRl2kyPx2WeL6G
	 FrgkbJAjWLRF49+qDLs5pjaO4Ucss8/ihl9viwAkQj70XO6NOFsdwKG8lo0Wa0bbc2
	 cypQGndV3HdFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7A6CD98CF
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 20:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178138119369.5571.9538551762624724370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a291f1c80ffbd067d3d8b89885bbc29fd07be44a730ef3e1be5b3e28db02106a
Date: Sat, 13 Jun 2026 20:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781381193
