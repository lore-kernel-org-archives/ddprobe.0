Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65F3F1F95E
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 18:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720376783; cv=none; b=gMIfJZfXBkFTwiXedNtnRJijtyvLhstub+1RBCyoL13tem2MVDfuZSgXf+ZYNzMCZdXyoZC7yChgwzH+B4Ut6TgzXhU11+sisGlUiFNfwUpqaziuqdq4hTXLIjZwbJMIt3EpOh+WrCRhwhJ8bctleM8Bsl9tMlJZEfA2I1BMPKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720376783; c=relaxed/simple;
	bh=b52dkSrNPHlUvY7dqpkgc+0loSPFTAAisGlp1XG2UXw=;
	h=To:Subject:From:Message-Id:Date; b=I8zr+WYmr7wPGniwZRi9Sc2yPtk6MnJ6snlXzNatV7hHOM4bzbTnRDUG9zUjM474fK4UPfTwfkGjA2x0uqS4KQSzYXk04YK5mM14qHMm9NHOVwnKMiFjX460TcSuIwsAEOe1GbWx/tV/lX17049iVcAObkx8wTljpcyuyVnZZ7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TV+PNgf5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TV+PNgf5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D806FC3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 18:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720376782;
	bh=b52dkSrNPHlUvY7dqpkgc+0loSPFTAAisGlp1XG2UXw=;
	h=To:Subject:From:Date:From;
	b=TV+PNgf5PFlXlGpfz6Cp3SdD/gJhAAqp5ww697VbwAiRGFNEQvcvoXOppyslacS5h
	 MHwlKFo9hO8MJTQmOuCL0k3RvvD1Iad3r/9jayTLDrMDzjVGbecI7R4qmoW9/cQIyF
	 zWeoDsrM/1cGjjj1Xs5CWBggPrjIIw0gKN+FstDjvD9nNk1HBSMvCN/PWs4VZTvhtZ
	 Ai15auG49yjtNAcY8ZH7p1BrevNG0ANZSAjib7CDQz3EHAxtXZUNYnEldnEoKksi8P
	 7mlrc8jdjTSEguiaGSSYF5DSWmHrKBnxRvCuTckGUUw4vzGYKef1JVv1HwMueo6mCQ
	 zDn1I1gsRUDHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED08C3DA41
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 18:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172037678276.15131.579898542616460935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4ab3951198e53f03a3d61ee919e696d6696176d3f16f39aec44f2ad4407d7dc
Date: Sun, 07 Jul 2024 18:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720376782
