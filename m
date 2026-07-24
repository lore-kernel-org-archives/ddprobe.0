Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48FCA376A0C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784889634; cv=none; b=g4m/9XaCC9csyGu7yBnltOEuI/8acEe0kvSgfKDXEOmVG+E0yTfFrT0QFdIlxbZoEOcJlA3qTyQBM7isxnSAfKuJPikZqSqIUsaDGr37PhvTmdFHJN3x7yAA5ebzKejXNEXqTijnyjRyE4Nm18byAr426+ijwYjZbohj2iMZozE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784889634; c=relaxed/simple;
	bh=TCFDzki/RX6STFieBjVZuWkLy/mncFpeQIndISM4gl4=;
	h=To:Subject:From:Message-Id:Date; b=Pv/TtFNkIi78WKX0ieHLdi3ZNXSEEtnK72AbG66WUy6tQdMipN9h7kuAGwGKoiLUvmX7xfWpovSxBVkEcpi1AvcBu+57xXhe/jo707pPQgeblBDd87XSsav8zcuNx+zGBQkLvtR0upuvf1qng2b2rBgSl27lg1KRaxN8IJ2bikA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uHXEazNT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHXEazNT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFFBFC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784889633;
	bh=TCFDzki/RX6STFieBjVZuWkLy/mncFpeQIndISM4gl4=;
	h=To:Subject:From:Date:From;
	b=uHXEazNT8HUIUkBCWswIU3SIBOAv8OZJ75vZxQ4SufPByP0RPmS5tvmkCPCocVlHZ
	 Z/4YWqhKTs39+0gK8oK5dyJ67g2hk36kKTd5EfhR7gd8sb7UjvVQ4tPADl6CjV8g5Z
	 4AxmBBJH9Rn+FJox93IKCf0OUE6/DYcnl4LGkmdu4xQR9qe7B9qo81vykHXCe38b0b
	 SoQxvnuq6e8VOzayiFBYzuN6XrGXtmS6Rx2NUlrtq9GmbPeUG8tMmno74wsQzySHoZ
	 Qe/67jBO89t5Fb7ZDeJOkifMwFT3kD0PsQUznh1SdRwdUj/YHEExnetIXgaeFVeUG5
	 5ahO5EIBZ95YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA76C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178488963368.26471.13541992193646125511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72394387354fb79a3a01640fec4bcf6e84fa83e283972aa31d9adfbe7bc7b974
Date: Fri, 24 Jul 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784889633
