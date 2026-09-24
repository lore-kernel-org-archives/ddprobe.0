Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504EE30C606
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790238634; cv=none; b=l+HQ9OUSOG8CaAEyirKj4liGoat2BdIedxL8l9CModclK3PD6ndmhyT3eK//MdCbSzSOqXElf05CYCJJGVsvAe33FPx6a+sCjMrc1lp4uprqusLwLJ4tyvflB+g91uyJbiWRkOY5a4LfLRG6HgyeMfC3yX6Ey5ZV6MmhE5iVhag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790238634; c=relaxed/simple;
	bh=ag++cm974XQFAWJvsLDxc8tD2YYienBgTm/kmfrk6gc=;
	h=To:Subject:From:Message-Id:Date; b=U/H35DrMs/715VUjWzVEqOTwXkhrzhSk7jlLGiXY93IVBgCSt/laR8oJTDxJHjhhXnb5+wjD2xyZRrFKs/YJhLB7cPWPehtQ1Kl3RRgqhvvD2tJEE2jpI00KD83Lj+hnnAf8tfCPNj3giF6dfRbzqKWCqvNLQupUVEYIVlhnPPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IGCXzTRb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IGCXzTRb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3216C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790238633;
	bh=ag++cm974XQFAWJvsLDxc8tD2YYienBgTm/kmfrk6gc=;
	h=To:Subject:From:Date:From;
	b=IGCXzTRbPd+DYr/uwoEv4ZPSeifgmy8PN3my6vr7OmbL7Xn1FPhXpnXy+su+Mbfka
	 36dlgTd5lGwbZFPV5UYRokdxc8IFSERNi83GnVcYQKgvz0TtNZLhqYS3rIo33B4poo
	 kBmM48FpReYjzPg0X9nnLFHSkhCYzYAtOWqKi98mijiLaKXl9Eh2/rqgbExLWCubuq
	 UPJXF2efvHXs4Un8GI0zufe3yAEt54lz3W4V9p6hRonWwNcZw1/NYqcTPBH7zyNUMW
	 tDQDNdoOZd+jDf5nOjyRiczzQS8oUoBRxEuNAhTfaOvl47eQTGQorPrLZjwGKyA/ss
	 G7EIxXSGBJ/5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE50FC98310
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179023863370.28476.1765553062069428230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b29d3f60d0e328424e5f20578b27d1d78b9c5523dec5630fce43722585aea9fe
Date: Thu, 24 Sep 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790238633
