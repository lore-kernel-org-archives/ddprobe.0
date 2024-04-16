Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535C31332BD
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 15:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713280763; cv=none; b=BcdbNAfHbhM0yYeOAidWa9zI+4Owq1yctwDsCj/Cc1qEKkjNLAcmkHyZAgfLgIYlItKy+b11FqulLA82FK8cbE4D+KkPXi95YRtakS9U4D3EvlurWbaznP66EQ2tXVZc2SoM5OVPZqgIK4lOwJfh8Lm4B7Df9dYxO7aG4vnk0mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713280763; c=relaxed/simple;
	bh=r/H/etwPMr4w9qBXZYjky4c2t8nyaq5GZpRcVvka+vg=;
	h=To:Subject:From:Message-Id:Date; b=WPjVYy4GZ6XaQNKx5vNK1DE85njmT0QK+dNbCFCjOnpbUkoRWEFXIdYXJ4kdqgkAvTEJ4bHNjcHfg2A9HqxQ2M6ZwYkp0DTX0PCsiAuSX2EW5t6b47ijqt/kzkV8NExvM+PbtcmDH4CgGYGfMhD4JOfgqCe4vNv7ka4i83o8YJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jSF27pL9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jSF27pL9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E04C2BD11
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 15:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713280762;
	bh=r/H/etwPMr4w9qBXZYjky4c2t8nyaq5GZpRcVvka+vg=;
	h=To:Subject:From:Date:From;
	b=jSF27pL9Hp7NtvNjq79bAe8yznQ+KhALtum3jCsjtfAumzYWg2KTY3AAsOgFvwTMS
	 ywLJHQJ/M3D/VB/T/Xy8OOqgx7AIBvEYOY3wZb3TINGs2779HTms4LVnLR8EbXQxN0
	 QHWBOuF1r5PaFZlxG7tdl8LJAHO6L1YZpvNuNptx6SgW+RO2NBaXVnAfSb7feb2sh6
	 futUfzk76A2WQSx8YLkTxG2i/3FOwkN1NRV7aibBBlrzTjoHz8z0CqtfCOFj12gJPJ
	 qRGAgVLM24TbntSt0Lfg1nqyLKb7+ShgSb3IGyWfOCqf1niVB49WVdSVgCuCXsJC6n
	 L0AoDJbZbZE2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5A43C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 15:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171328076279.26446.6151271185065841377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bff586a9ac3890820013b90e32ca1c72120ada538f35d292299a0cc7b1039d2
Date: Tue, 16 Apr 2024 15:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713280762
