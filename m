Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61A1417C91
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738497954; cv=none; b=Fci1jvysL59Uj09W92gIGZnaWfKRR6oDG6UfuOneIV8kuF8PSNAfV+F4zOQJ/DrvEvw99hbZuPndruf1Ldd9Ldo4BDDgu5QaQzQKuLUo1tr0a6Zhagj2irbuIJr1res1yfuIoqivHvijQM8W2Gm2FQppZJqvqCTKou1koYZouGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738497954; c=relaxed/simple;
	bh=EOHUSJ9UrL+4ZD+A656RAexyaESCQbzOU+UsRKnNrKE=;
	h=To:Subject:From:Message-Id:Date; b=JAkcWnxFC20SEB1Frcz8Z5oAPLK2WYy5K22TevB5wJafeh8qcmFFS/Q1I3qaewjCF2Jrn7xadOqbK2e67VCDlgAIs7vBr+ygjan4eY2Lk+JUjk0Eq0RvpwkY+VXTi7tBNoLKtEJxB30lD7wx8sJNwHIdPw6lD5wmc5Kf3bpRaro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FdHJAd3g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FdHJAd3g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B18A6C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738497953;
	bh=EOHUSJ9UrL+4ZD+A656RAexyaESCQbzOU+UsRKnNrKE=;
	h=To:Subject:From:Date:From;
	b=FdHJAd3gTJc4+HZKa55J8wHwIL9grSbBBE9CCKc3InWs8Di11CHbAj1+6szChIUzq
	 Q0lNZ4h56SB/kk7CGh41X2GtSksxlKTDnJqpsptUzBN9kEka61aFhmlahaNcXH7u/j
	 Q63mKY9ABa6KzSA+QxJFKdamhAOdDj8TxR/HNunmzDXu5YoDiodWUgpoL70pfQZ71+
	 cKXb4bv7lOo/BWde0FOdkEsZl9tx5u/lrVgGUa0FEpYJkAdPjv2p+ov89qUmYdAHIq
	 K2NszEht1gholNFFAsBq6WyI1Hc/A8EyAGEFHpxsrfezzUctNhvx68g3C1AgveQP2b
	 Dtt+NW+nxtK4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999D5C0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173849795360.17295.8424620476648966264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 108c46458056241c941e3c62a793ba0395a31bfd73bdeee2d157ad6cb200d457
Date: Sun, 02 Feb 2025 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738497953
