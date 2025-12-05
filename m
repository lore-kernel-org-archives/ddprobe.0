Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8035F2EC553
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 06:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764916374; cv=none; b=Ht8y3f2a7llzXRfBmXRIph7F0NyKYh3X561WuXKQwXqyXj3YXaBa72ZyQJOfHv9al/AgxD8Ot7SdfZ9rwTKJ0KD1aGqHAbsYK+Ki75IiFoCP3Sq+a1MoCMgdBe9/9rDt2seeADn1qfxyAHcBag2jmr1bWt2hVOHcbg7x7b9bGis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764916374; c=relaxed/simple;
	bh=lPNdigzTQ8T95sHNIUQKcBh73El7HKY7LnYxfOqWGac=;
	h=To:Subject:From:Message-Id:Date; b=jkBsDdYBvPthj1jPEd8AhfnwvuA7igMbj7uOsMQFUxlIW41JkkJIxuPfVp8RMTCpkEraI0miN3/7yRiIMyRUSH95SwETdrT747atZasagA9vsfd8mXWH8ydVta++rRkkCOTCTAr0x107q3HRx0W1wbMkupCrmXZbZustpB9QKI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DDGorFOT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DDGorFOT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3196C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 06:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764916373;
	bh=lPNdigzTQ8T95sHNIUQKcBh73El7HKY7LnYxfOqWGac=;
	h=To:Subject:From:Date:From;
	b=DDGorFOTEyoNC55QvBPbgZEpP98Fl3KP8hjwiYGQ+4iZwEsz/6v12kgpG5oGH6iE7
	 94XPEvqUhjPdP7ovCYisHxRu+HAXT7b13USSeOGqC7/lHGs13S/qVWmA7K251LWsKB
	 ZZOm0+qsx2mJ7OfrekIp+xiRLmxvw5fE6qHUNSIbXdCnYSRBEYXFMCJez61OlJJdzY
	 jZFmSuaoculmuZRim/N3uvk6nvutPWNt4sR0jlSLMVy16Kos1dI/+ynYk8c4+hY48e
	 AZpeT2deMyyNpvke0DRNkH73NFMgUnkgnSx9AjS7aj3VCLK52mY4QEELkdpOv5cdH+
	 ItV0jRGwrZZ6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9115DD2E00A
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 06:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176491637358.2570.15234124282560095530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3839db942d93107d07859b2da2a610e3a7db2a84e930373ba7fbe392ee11dae
Date: Fri, 05 Dec 2025 06:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764916373
