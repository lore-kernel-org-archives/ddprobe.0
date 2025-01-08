Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3008F2AF04
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736301354; cv=none; b=PuAy3ollONDc9MUd0cf/3q2XEzLTsHSZBaYFg3In/P66b35xT/Opng0V18Vk3UYl2Q3B8nU9krSsTI5DsYzeXwtz3TwFNewbDF04k4Jvy2iTW2iN1S7fLTxhTjcTLt660ahYvLQrrC0RxVopmj9cMYq3veCYgMdOqL0cAEnzoyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736301354; c=relaxed/simple;
	bh=P//78EdbeZXjUMRoed3fOxMB2ErgiuYap1kErbbPnPU=;
	h=To:Subject:From:Message-Id:Date; b=ZrB2/jmzSIdzHP9ObJWUy+IIIkLvRja7qM3CA2RdgfuAy8J/tczbObBgRly3q2OprsYSA9YJqreBdByUPOgCQPXayD4Y/c9P8VQNfYULcjuze+qdb9d62nOvoimwxstA+kdvPyx71H5JIVNk6rylLDgmQRWxO2TNQ/l719R6QhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IgdGbfFV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IgdGbfFV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4E9C4CED6
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736301353;
	bh=P//78EdbeZXjUMRoed3fOxMB2ErgiuYap1kErbbPnPU=;
	h=To:Subject:From:Date:From;
	b=IgdGbfFVm77J/JIqrbNEA6xRDwN9X8ytBFMWW03Y5Ij0bW2MMuRsS60wd8MBqyfXu
	 0U0Imm6bvZrrytyANim9tGA4VCcXko/178BAIv6cyLuC7q3JBFcCmdbLqWmJKGZij6
	 cDVpMbL6pl2pVME9rVokSQcGaCpXCCkcBCOZ5v+wDXOrJv4ULwP4I70oyUeb1+n4ml
	 lxLIk33f91aTsNJO15GcvnhrVuwJSRdCjwNEXIDAP4VsfOnHsri/uF0hW45LNm5xud
	 lHAd3xBRYDxu6PUNValqD7s+51PXQqfQZEOT2PgTOwAik5A07Bp2MqMw2JblOz4m84
	 LR+SAfrEnBZsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D51CE77197
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173630135360.10546.10908724859973302926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6be69d6401a090bef9efb8649819628493f801db49fc147ba102482c65bb4528
Date: Wed, 08 Jan 2025 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736301353
