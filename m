Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5886C1FA3
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 19:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720468583; cv=none; b=aUV5I/0DdaHhlYvp/uI3KAX+yPWuk+sYsMR8eUgsITEmDfNXJwABBHzgmDhYFQJAwa5RiNl4cluuamOY8SSJUE5erAg3sLr/AdrwgQiXQJAUrDH7I47/Uq36bOKTq0oye6jNLXWQj/Mhj9LU4j5H4+xK7ASyexqd++4TDvICzRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720468583; c=relaxed/simple;
	bh=uPmooDVWH+8OWPfnLG+hXJPEJmjcPCR/BZCjGFfHDd0=;
	h=To:Subject:From:Message-Id:Date; b=rH1JgM00TbGhOlu6PWOf4EdyrEeidv/XvnzW2N6XtkbXzIGWwpTbY3kTS1TRC/K2y8lrRZJvvuBZap1Zh8NHVixwqyHfTOI8SG+/XZveVSfrcZXpExHmvxtAVnFnKgnkM3vajpXlYzKIFuHsInP1TWfJPm22YTTFVRf1SEnb7Uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O1sX0Drx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O1sX0Drx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D99CBC116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 19:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720468582;
	bh=uPmooDVWH+8OWPfnLG+hXJPEJmjcPCR/BZCjGFfHDd0=;
	h=To:Subject:From:Date:From;
	b=O1sX0Drxql99m4R/4NLJKiQIzqF8uDRkyc9OOR5UxoJJkTXtwb8btd9O1A7ETAmp+
	 uNKREQyEgPrqRJVV0u0GxFwboKC6rtFtpFx8yWRm9un6aRk1EBKun+g8nsgVCcAKcZ
	 RURZkXfkOF6Lh1P7ayAAHTAxVJpNxr5bggoHzZvZ6yst+ldM9KJOpCx+TVDALzmjCN
	 8I+aRyUrBPly3uIL1QpYxVpyINCCjhDSqP5PDQTH9ntD2ARGWEH8gDmEQNH19WUMPU
	 G8hVEYTDIB2T6nbk+T1Wrmlcny5JBvruUOlMnFGhhmP6bQsdj18su9hav0+e85QPI6
	 xop7TOTMtp79A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C834EC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 19:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172046858281.7514.1682630302778616354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db65a40d9ec991efc88e9782ceb64176d8c074717c93965b862067e97d8c8fdf
Date: Mon, 08 Jul 2024 19:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720468582
