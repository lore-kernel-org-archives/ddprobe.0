Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0F8391856
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 08:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776328054; cv=none; b=i4WQrBAWBR144fikQaKz8ttRB+WrjnZ/qJ24LPgA8QoRIsDpbrW019yStKXepfPm1TdVhb5R5KVZSmQegWcfxuZthIkxtIM3gATloyPuQW61WpPglHDg+Q03KGwSIWQ4S/oznXxYaP1l4A8WzFyavEwZxrNUNJ5GzFNsFSIfXSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776328054; c=relaxed/simple;
	bh=G4ndmSBpQWyqmdIbxCVoe5hGBvF14a0HDoEpS7lI3G8=;
	h=To:Subject:From:Message-Id:Date; b=UQpSo2yOBABPF2QvblQFY03fJmzENrifUIUxK1skaLJ/3MSpgbunYr472mBFn8euHJSPOqCmPoqS64xpQOfgJa6IuArHKhy3E3PDx6gnjChGFW6hJcOFQjvV5kaF1/Ia/B8RvkUGaQw/CXfwC6kWJ6a4D3OJjzGj7rOkF3g8J54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iu9rapje; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iu9rapje"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBBCEC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 08:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776328053;
	bh=G4ndmSBpQWyqmdIbxCVoe5hGBvF14a0HDoEpS7lI3G8=;
	h=To:Subject:From:Date:From;
	b=Iu9rapjehEsJcatmpgJO2ccSa6bmBhJduZBp7npvdsiFRpfTfbnFnBETanDZO6OwQ
	 5kSZZW7mkhgim8IVA23qLa3nIAARVsSD6rFg8Up4klVbd02qMbWEJumtdlXP5b/25/
	 K/Zz5VCGR6uOHMqSwtgHVeJZTcxQ2tZmlrfpShxcQyBvnwH9LMdnoeeyuhrJVkAchw
	 P69j3Fme5SkIV7Hx4P9V1fINjDIcFvbBCPtUGNc9ZlhHM5tfCGxLAJS6MnUQhIKsV7
	 DGSY+rpyO8INuGJI1/sdorHVvEPNXNGH+MMbnPXv94XK5P6ju2PEdv4VFmaB9/Fgd1
	 sM/IDw69ZV7Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0AFF8A140
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 08:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177632805368.22923.4238606519131822914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b61e1f933c2d855db6e9b15277e332a445af046dc69eaea1f9281a58cc57e49e
Date: Thu, 16 Apr 2026 08:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776328053
