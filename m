Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C2B241116
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752488394; cv=none; b=efwjU9DLM65VzmsdXgEeHtSZaN8U6Z2mRl8CB/XUAFuhpooA/g8LRS0M65JS9DVP6UWTLXIRxE1QtoBtNI+2nqvwqj/159CIOTjUfo5W2ZVQSXHigBhALN19wG/aWQBNAhileTaxngGBgl0vrNHscaHoKebyhbKdLwy9N6wruy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752488394; c=relaxed/simple;
	bh=SFeykj2KJmGfkI/54ZC0ZNavLnLqSF7HiiJEym52Ync=;
	h=To:Subject:From:Message-Id:Date; b=i5BKXKFrPQKaexYJlqnyrF/UrDr4zr0dBojQL2QB+EiZk1TF9O8RGcOcuwuV/1F4B3LOMNKz2lW2Xun2BLQY6hY9qtC8Ed1IVPmUjF/3PychQuoIGHUezDRhOOjkfIMOSdaiOx8+C+0GgyT/a/BisrS5a3XNcoZoC6MGCYopbIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DrNRjf4B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DrNRjf4B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E6DC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752488393;
	bh=SFeykj2KJmGfkI/54ZC0ZNavLnLqSF7HiiJEym52Ync=;
	h=To:Subject:From:Date:From;
	b=DrNRjf4BZ51oAFr22ErHzgp2w/eIDQs/1p03G3PjrLiSfAMByY9y/29F3lDjTpsri
	 Nav8g3jnuugw2chzD3prRJ29nC0reqgwUEPKQZKIDYsyVpeMbI2Up8ze2BfVl5oR7I
	 olI4Bwg+E4HFH1dfb0dQJ9n+y+wgNAk/war+m7op/DsSLlWQbdyuUAnYuG03+YaS6A
	 qLauVPcyNcrfGqVTdoIVxyTsY41T22ZF2XJXLwjT3NlfjmbnUjFS5m9i3LbzfNadFF
	 2ieFFAFTjpLpEH/eYfDYKnRkSdPNy6pPsKwVMSFXvoN0B3cO8q1qk0msL8xtBflkgn
	 gJmzei4A6LYvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D6CC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175248839358.23556.678702307214464168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17bbeda3a4c0b62702c86823d00b1ff09dd7ceca04af4d7a568a8a2ac61765af
Date: Mon, 14 Jul 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752488393
