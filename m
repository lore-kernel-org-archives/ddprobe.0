Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0000F30C36E
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 13:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763385714; cv=none; b=OkqUNGLM+4emeVw01gSq2gkJbr2nP0zgysgAt+9JVERa8PWz11bHxZCnULMNyjK6ijDz62qDmx0fzcwhB9Go8JJttBHM4mp3JPr6HmZ87HFdL0y1tXJCajyjeGQ+y/PlugDDz9FLqtJM78jnfOx4P/PrSMxBbvd+DYABYJ+LLVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763385714; c=relaxed/simple;
	bh=vxvmv4q008ryjIO4ao9XdCOUS7B3UwU0i/AW7ihPPkY=;
	h=To:Subject:From:Message-Id:Date; b=Ok/HnhKiFEhMmaZXKMMwZD4z1i7cbtIlPuDIY8SvmIQpy0IWyg8A5D3QFIqCu3C6S3Y5tSSwHayYmHgTjo02D4mU+WPUf1hi1zYxhpVCF8OWJTyiTc2YGnXvhHAZC+7Dj2XwTQ5qzDa8p2JotpvMy4EafOz3Mb9QiSbJ/VRv1e4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GPS6B1fe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GPS6B1fe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA254C19422
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 13:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763385713;
	bh=vxvmv4q008ryjIO4ao9XdCOUS7B3UwU0i/AW7ihPPkY=;
	h=To:Subject:From:Date:From;
	b=GPS6B1fekun2vXMq+50FjOGqpeQ0BV2t3S7H23H/GVZmDtqQlpBhi/nfGspxu5TqX
	 wyy1HwYHDGjtHtkHxKgBNGMFld1EmAQCp1B1QzN4kmkNEGAi5OYWxT4ZRzm2pY3lMI
	 vwnmotPp+QCTEKX96QL9o2Wu/sz9uPpsdGFoK1HQYnYTKAIiKcR0lY9/cOLcRcDO76
	 KXp19VK9h3UBTN87Fa4CvobJZE+umG7/KGqtiIOhB89qAL+pR6MvSwKU08YDip4dND
	 tFmwNr5XEG6/cXcsiWZP3OdKIlqdBB3mK12PcuOuP/i+9M+ksxLeV6LMiHSTQRHcFE
	 /YEBvc43hZw1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC62CEBF61
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 13:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176338571360.27782.12008439965930685850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d10a89dc8d5e019a294fd3356f5bb42db60f2465f76b94ed8434210054d8d42
Date: Mon, 17 Nov 2025 13:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763385713
