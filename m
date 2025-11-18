Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88DD52E7F1E
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 19:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763493114; cv=none; b=sj3Sr/mds7G6iJnL0dQxPvQ1VqL61HeqhI983wegefwJfD7JeA+QCtCiaBieCGvshqmTDM35c0gHLsqbDPEkOf3T/Wg0wEF9sQitEbUGTmxJqY+7KDNz2zi/v7RgWpOeabSG3V240E5w2oFqEsaxEVjrkDo3FFa33FdzYSHBV8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763493114; c=relaxed/simple;
	bh=AmJ2dYQRGK0R7p6twqkisaEjXsoy6rtzU58v3ORVYsM=;
	h=To:Subject:From:Message-Id:Date; b=lqZ8l04idIIoV0Bw0qHCbeaA50LfhCBMV5fMuMMlI4L4FZZjgTeF8TKvW1TiuUgKe8kcjSLVqo/NICUL71M31qi/cqEpJGO1JOT/vvgHNJZ+EOcJIxrJxK7b7Vem/d877Ql6Fbe0S62spGeaWhLLUR0e93C5iHe2vpcUkKur7us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DhdsU814; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DhdsU814"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD6A7C19422
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 19:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763493113;
	bh=AmJ2dYQRGK0R7p6twqkisaEjXsoy6rtzU58v3ORVYsM=;
	h=To:Subject:From:Date:From;
	b=DhdsU814L/5X5TH3Xf4tqcuXSbBwdNiQJ1N5lUNsOf18u0+IhPo6obX0rQ3yPi6s/
	 UjkIQx31nN7Vo2BxcHc6mEX6oQOyqRdU+mYG7/tSyuG9usc5n+tafaP3/YPMvCXkJ/
	 A42TescwCsz4u+6IDvSfbEN1bp71z5ttnknybo6bI+3NKHHQikkMBxH0W04PLX1wMT
	 d4AOrnBgGHMpObbwdX6qca1IbKvLdZYSLM3lE4LTn24xOB+VP5RbXUidKp8ctL7K0d
	 Dt6R52s8DrklsiifZ2w5KVQKabh7fdjacpmHD5XkBaScYJRfnunY+TKTmbH63rdJUX
	 MDYzuKHdaxCpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2E3CED63D
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 19:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176349311359.13634.6063590982717548278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dea5e5863a1afef033d423ee9f9186444f30eef0dd0abc64cba4122696d21217
Date: Tue, 18 Nov 2025 19:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763493113
