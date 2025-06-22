Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181471F4CB6
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750617595; cv=none; b=ROOVHcVJiBwSrdST52YDjGSSuX5lYoSXGUBjqHCdYNdgJW4Ev7cxhvTl4UN+ueGiuT2qjt7bskyuCC1cxLZxipzkDj60+Yj8cSLfSfja2ULHYVgfNr7SqK02DH8EUrqB0lgh5kyntQf77ns2Ads8NBWCvODpqSIxP4/gdh83IOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750617595; c=relaxed/simple;
	bh=6v953hO3BJoROJ59K+OzPjsM/DLqgKQksh4jyMHdCyY=;
	h=To:Subject:From:Message-Id:Date; b=U5nagcTOcWY1iW/aK2Z3kyuBgMwCONg0H6U8qfH1lqA857GMqPjfJp1Q10eLVUs9I4BLolqBnhan1cShwBYNPabt7/07iwMPsdNJHgHHnZ0ChKDmKPjcZk/s6vCfGgvgrGrdJvL28oUktMeU/knRKP986W8zYsnO9mfQowgn03w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LjTyhRa4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LjTyhRa4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DDFC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750617593;
	bh=6v953hO3BJoROJ59K+OzPjsM/DLqgKQksh4jyMHdCyY=;
	h=To:Subject:From:Date:From;
	b=LjTyhRa4Iv7FEf2zr2Hg20M6rCvEUburZ8+L+oyTDSCYoJXRzUhcbRt4/TVSM/zOx
	 neeSK7dMOh1q/r8VZkNA+RqWZEJsV3dnyD544xkemHgCGWQ1fJ6TvmuHJBP0ae2qJY
	 BExgw2J9Ijy53lnBfm/Mrm4m+zN/wQendpVpHzyUR+kc8XQVS88DcnBPXFLp9ke1fG
	 QkhqQXVIC3w4+zYkcfghq4kiBKX2fVuishs3x9x/tNZab8KdqK7wllbMum65MjxdpO
	 WQfXID+IMSbq3ngyLj7/7wyu872uyVuN60WA/9OOWsEuve03QbfmEnhjuYbSzz+mQH
	 rSfgyLvXQyZdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97099C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175061759358.31435.10044880249196934531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4c45f2ed6d7600f9a4ed16ea5ce9a3ae2871a3e77bc1f870d1f5fe466a52ded
Date: Sun, 22 Jun 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750617593
