Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0903A36921A
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 07:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770102834; cv=none; b=KCy4Cgz9SaEE4tttIbahkYPOaVg4ZwliTWHRKvVScooIxMfpFkXFpFVUymLTQ9dYeIQLhDhyUJ9/gueZb7BKA5i1/bqPjAxU09+WZyZYTkBE3ZcOgGAQw0EyCJgzhVKAJhtUAdJH5H0sq+kdkgqYh5TJ4ZpHdsolZVojS3g3454=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770102834; c=relaxed/simple;
	bh=AVHV7P2WxYl+9K4j2fTC0fcBZQA8mPJPgcitRpCpoeU=;
	h=To:Subject:From:Message-Id:Date; b=T1/xaUg8KhR0u+OhQZ0Q6T+zxN/EtToPrvJ09f8BHIyNntysy0zBI2gHufEYQHO2xsr+fS8ItYFvyrdxAzlkC4R+kdKXGAv8eoQVFtLFscRUyynKeXTNbXJGUfylv2MdMexCdw6yxBT5VW8BchmntuC6E2+7r/4VrxauMwNFod4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=imaEtke1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="imaEtke1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C20C16AAE
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770102833;
	bh=AVHV7P2WxYl+9K4j2fTC0fcBZQA8mPJPgcitRpCpoeU=;
	h=To:Subject:From:Date:From;
	b=imaEtke15rHF87DirqbSEECj/m07hpEEItBZwrQOXOS2+MhEj5zYf5oG2jTLcjRvU
	 q7FpRLZd5XcWJErqWwyT+KhlnDtOky1qwnJHn9cK9vki1OSQJExwO8KKMCig1QQjpJ
	 KIhYyYYe5d3cbGH+Yr883PmzKDMmUp8NaOw0OgiOyV4vqGKNOIITMMNLIcwRkqaYOv
	 3EUatwGCwQSYtyZg3V0oOKb3uEQgPQ3Sfg2tfCzkt+Mz5ue6keuImMumBKpA5nZsg/
	 BB8DC5Crxbmw98BaE4hdRF/8RUNPEIxN+pdtDVdKHEVS80sANjXETmuL0X+GEvaTNe
	 Dykxdi2W3FAQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9F00E8305D
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177010283373.20873.15550070953272858580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d86f64a7a41b12e266ae9502ba82ee48f74e8910f4035c8a7b1715d004fab435
Date: Tue, 03 Feb 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770102833
