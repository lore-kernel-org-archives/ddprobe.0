Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277B92DCF77
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758811794; cv=none; b=rfAO0DC+81t7z/7iZEDbo9yf6MJGbs+fz/pdxdbAOIyMpJuhNxB6n84vqPD/CuGk5Z/a+UtG97xbMD2Fbve+NS+O93z/Ii+eC6oOSirHnlIc9inJFnxNKyBMcVTWynDfGK1f+44RLrxfn64Wrwr6zEXng11831cNLqwWemDMKuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758811794; c=relaxed/simple;
	bh=ep/rtDWk6yPDjm2ZSSMXkzw+wAsKd/r/VnvTtUoxxh8=;
	h=To:Subject:From:Message-Id:Date; b=Bhj6D3S1W3kVZnhgqzY0AhdAIzhhGH9wSaoULsS7K568JcOFtHgnY60taiESjwNj0OTnCLKNgcmglaCkCBU9Ez+8V1j7+z+YiNlcxWWnu2MWctV+273zUW3ZTZPimHm3K8BVojstFXmwaV6QTT83evokiiw0FozgsrTdj3JGEWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hig2ygcj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hig2ygcj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC55BC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758811793;
	bh=ep/rtDWk6yPDjm2ZSSMXkzw+wAsKd/r/VnvTtUoxxh8=;
	h=To:Subject:From:Date:From;
	b=Hig2ygcjDcEPBc661M8I4bm8lwTWE0qmAvgMu1C3RKKuAW2NeSC6x/YVeNvE1f/t8
	 yeXHN1oOkaHzOT44HE744h+RhZf9F4H+rIDTA2giftRSOfcKHIcefehtIArjZOOdpU
	 a4+Z7gUnah7rNgRHwOoUCFlgepaCPZ9YhvGt/wBcYGBAFTfMf0jofVyw79rHLHtmva
	 u+ayoG9vrgn22OV37/NoU34YVS+9cbqdDcci9PY6FGoP8QWr984RKxEjiiS4/4PoRr
	 9NAq4R74lHBdNPkMAskwm1FmotLHtQPjyamnUBHNJ7SULVhNGEUNNaPV6FJ9KZVB/X
	 Oyl0oEus3VelQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0AECCAC5B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175881179364.21923.13396149452832696110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ae15ce49270eb2b2444252383eb86e00fe26c8d46f385294b1b7edaa022cc1d
Date: Thu, 25 Sep 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758811793
