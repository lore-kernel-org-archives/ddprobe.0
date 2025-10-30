Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E1DD3019B6
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761827994; cv=none; b=aGsTcU0YIasluEqrlp5FQDZRlhjQzjgmBs/eccx8Jrh6MtWLitiDh5lEMcvwovdN3sbZpy6vlf0s9vHJI+qtOKKP6Ph6wBM4JYRUllZ5cFFVDqltjPRaJMP9FJKkUocsbBNUX5mvcgGCMsSzjBlukOXS6W8TM60DppsCIPvB2dA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761827994; c=relaxed/simple;
	bh=5VtllPs5zm4Nj8ae6Chsn31IoZS5SldpaDORbzFmzoc=;
	h=To:Subject:From:Message-Id:Date; b=CjOoQhusnEnWEb0qb14juGZwT1ILt015VmEYhTm3M4X1Cljze6O4DTclQheQhsoQBXiqtjsubcf+9v3ltpdOtdh0quTkKfq4QqwtTn5Pl4EJ7MfNORX/iHBxhln8pDiWrycbTqD/ixfrBj86T2flJfhVqBQZPkdgEizhlQtqUeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rsdE8VZE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rsdE8VZE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F653C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761827993;
	bh=5VtllPs5zm4Nj8ae6Chsn31IoZS5SldpaDORbzFmzoc=;
	h=To:Subject:From:Date:From;
	b=rsdE8VZEy/BJh7IAATrzJ99nIH5ytiLEURwG4SYc+CGPVvxGPYzzoPaVs5sMu8Q/3
	 n01Ihxl7cPQBEgpzpng12nKzopDVPRjjaf9vNNTA1V/5MCemM6g/yFmzxcqKLSvGH3
	 +f7E11N94q5el0YPuH4LC5RHU1xWv5GeEAX2L7UuxToBbf2houDb0AGqqW9MuT8/B2
	 ui3Wb8KLH223rLgS9sX57bfFfU2s7tu65UNenk5Dzia/NEy28iyzzt8F8StQLJSno1
	 PMCNtklsu48X+uTanLtEnPtUAAjjE9PfvC5YJcYSBPrpp0C6taa8qKVPXffo2WNCEC
	 R+/maWgG3k9dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903B0CCF9FC
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176182799358.30934.16292831608888282003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a09f814d3f7cf41a3282887d8e1951cd8555d0d40c887376dc6dfcf8a5a0b08e
Date: Thu, 30 Oct 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761827993
