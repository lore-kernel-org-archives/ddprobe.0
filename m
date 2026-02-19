Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B9B2D1913
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771481694; cv=none; b=MKcbbaZyAFjeQrWQw0/Tlq+507YoJbSJGX2leAom5sYV91rmiyGqkKxIUVckMlKYiMeLkcT8LYg9M2fWPXPBnQrmi8m7cfrcwcY0oaaL/Ccl+4AOXVgW0RSLdtNs3S0GQGTQiTlujxAaJiQtGyIpLMlfWWXc+ke9V7IFo8DripM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771481694; c=relaxed/simple;
	bh=bqVwrWq+sQbLvR6PbATb+FzSWLyFCEr/Xvc4P6LV37Q=;
	h=To:Subject:From:Message-Id:Date; b=o5I/6bCW7FlbTspz5l/L10NHFvjuQLcuT9aKSwOovc7kRGtL77A6YaA7yScAG95LT/rlxIeoTq30ZkFzod1EIVYfNfmhbkzsCNW2WvIA1Na9moo6dP6GdnAEjEPF9eubn9iQ0ybUKkDYn5GoNMbCSikcDZWC6tIB/4JMSKqEAyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rEjrh0Q/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rEjrh0Q/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD9B5C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771481693;
	bh=bqVwrWq+sQbLvR6PbATb+FzSWLyFCEr/Xvc4P6LV37Q=;
	h=To:Subject:From:Date:From;
	b=rEjrh0Q/i+euON86KrAM02+zYAd6OlIUkoSe5UFtkEJCdBr6II6maYHecP0H+kdYn
	 iLKh7+RZT0nFjNyBe1ahmlYryN9Cz7607+9R5lzyEn3RKSPuQ97Amioc8qxqX/69wC
	 xO6SPLMWiOmGQDC3PRjy2I7bxS596CJ4GeBcLn0f38dv95QVqRGsWr+bG/u5GY0PF0
	 yIZaWghBoGOwCf2UeNaWDEOysM0TFOXFoh6NHBUUF0gLfMTRaJC0ucQ/nJ3zRlBIdK
	 6eS7rGBY0oVYGAfGmthCx39xx/Fm96mKGManOErxj4Ckzhh799AKG0V/DXPwv45mgp
	 Ba1ldKMgF224w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F8BAE9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177148169361.18625.8611808292165414215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f30e2786c654a808e52c57b280b4d656011bfe01f641682d50ac79f68ed42cd
Date: Thu, 19 Feb 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771481693
