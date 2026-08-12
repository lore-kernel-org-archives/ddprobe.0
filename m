Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D92369D55
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786498234; cv=none; b=iX05nvsfbOy3DCNQHmCv+4l9WxsQRPHukJeL+litFDMjPiQtdmOnPMyBm5TLqT+BCyAY3MxpAbtA8IUIJDFooOcdbLixJvlB6LOgS2M7iFY/vM1YlofydXSsJirLX31H1FjTZHnKDBoxa+aZD0N52cAuXNenOwogfvoZvSCcGB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786498234; c=relaxed/simple;
	bh=ShZhHFHHho6XyMMDscdh5GTCW1X1CtztnGFGlpcf0oE=;
	h=To:Subject:From:Message-Id:Date; b=kTpJ0P4RveTBfeOaViHBP1SL4qaaeg5OCFfp1nPO/8mDfIWIqT7uYEMaTLYZ+2+c5r/k2IFnPtnjPY+Qlfpq38A8t0oGQ6bsFMMZRv5D5Raio8fdyRnjXwutt+TMtZGonZOAxtsM6wcsGdm6jCazd3SzUn8gh43lbgMUKsGtTSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ELJ7IIxh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ELJ7IIxh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC21C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786498233;
	bh=ShZhHFHHho6XyMMDscdh5GTCW1X1CtztnGFGlpcf0oE=;
	h=To:Subject:From:Date:From;
	b=ELJ7IIxhnRQnar1Hc1LoE4JpBuEsKjLZPN9TmUS4hhTki2x2LqQvVm6ruwR27B0x+
	 WlDnxmsJGhknWPzt68IhejGtKqDTnTrdwibZ9PEPheGkKgh9ntSFPidoRjCsSdz+6L
	 lCHerqKw4kOFfHJbAlLkuELcGJolL6/yHXVMeTFhchsw2R7yAZPOtGALffmlHZnWWE
	 jPib+KI8EO9caPAGCdFjcBKsvSxpDsyCVLGneEfEjkApOQ79iBrmQGgPryu3LNNpS6
	 97yn2STIRNM0pMCdAM03wKN0pz7Dpc1BClxpHRhrDC5an9n2AaU/iNvBOpJT6BVNH8
	 tbHs59G6pfqsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9098C5B572
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178649823368.29688.636961215623650464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c675c328adca59526f7606f2c1fb3ff0152b039fbd2f57793807d3b24117d3c
Date: Wed, 12 Aug 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786498233
