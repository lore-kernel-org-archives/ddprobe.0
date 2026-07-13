Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4206C306D26
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 16:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783961914; cv=none; b=EWjWCSNUCkTWwrDCZ4vJZJ2QftWe7AQYnJ2SlQi8PP362TzpvmJsWpBgF5x+9BG71/cNXzeURL1shIxZqSFFW4NXLsQ99rcEITjNgd9WHTOwDfSB3RAaiTXp+yvXORdg1OZ7QdGRq69FXJ2jUfUwqXHV2kQrfnyhuVSc2wgQAK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783961914; c=relaxed/simple;
	bh=9puSGaFJiddceXM1V8+OF4cNoWUic5o/D8oTMGZEtjo=;
	h=To:Subject:From:Message-Id:Date; b=C3q2VIjqdSjv73CoAqbHCe1rj+vYLcrXjdTNryO2boWhNv7iECLvJlRIWaJu0k0mitx80dWnigIq8Io7IhQB2rdOd3hbeySR9TwvqiIwRLKC2tWKCCGgtz+r37iowXhWHWrHxa/9bxw8YUHu1SrmkgZaz8FiOfHb13MYD5LSj7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NuKxxGxN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NuKxxGxN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC36DC2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 16:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783961913;
	bh=9puSGaFJiddceXM1V8+OF4cNoWUic5o/D8oTMGZEtjo=;
	h=To:Subject:From:Date:From;
	b=NuKxxGxNCA1HelVxk3GNAGuIQB6Oc+b6/RQhfbBE7rxBP53SIdlUX4o82tYfh6vqH
	 IK5ihl8mU552YSa1UCbzvGs+xMapQ2e7fhC8dCf2PAg9+R5vNS6R6f7RlGfQiBhDKa
	 ijdMNRWedJFubUrLtpPJ2ELoz/DO59R0fzSz990HYH/2rIVng/QoT6l2oqv36BFLK9
	 mZ1U7+VP+pDKBtdGrXTqotqLasYsHxFOolk8h3coAF0zC2OlaGkq6SqG/lBK0iZt0t
	 JtrD/FwBGkwxpt1AEZKOpacMbXN1fRtPT42bd3YIyDp1TEJEo0q5PPvvOUxvj0XESR
	 fFrGuAzjwb8Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9640C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 16:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178396191368.15241.4429307468558679208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdf94b2d4848e9ea262bce1d89d467d84e2d53545fdb99a707ee0aeb3c97a5f2
Date: Mon, 13 Jul 2026 16:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783961913
