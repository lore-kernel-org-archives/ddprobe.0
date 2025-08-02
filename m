Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DE7A48
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754098194; cv=none; b=azt/u9CxR+MjLxyeFsN5ALQ6EcOvyZAreS2dsKondk/Ji9uhqBn2WiWnFqqO6/pCdlaHYzlraiD6ZSo7dLPTliK09dGgLNdrU9UA65y25OMP2Gg7fMKWxCOoEF6e53qdTls+59ulxnWNE7SZwCwDs/1dJ601jj7ChM5qlbzPF0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754098194; c=relaxed/simple;
	bh=16AhKSRGwV93M641UkKsELNI7MEgDPOvxHymQul46HU=;
	h=To:Subject:From:Message-Id:Date; b=EMMPfSZI4jlJs6vgDBlc15F2BNdQZTWS1mtvrZxLo0ZfoEGMcpm7Q0MV2GZQijAqEyd6nP+jKlNM2a1QVNjRoyNxqYoCTCJbHjWpyaSfTsg6i4TOpA5+3Hhp0GV1NMd8CSfxyBjVG0LMDuaqVVODrTrMzP5oUw4duiwcI801u1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mTvD1glL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mTvD1glL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A6AC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754098193;
	bh=16AhKSRGwV93M641UkKsELNI7MEgDPOvxHymQul46HU=;
	h=To:Subject:From:Date:From;
	b=mTvD1glLSboIv2rH0Z2+Xrg6bx378Emz44cQC8GwOFJJNkJ8xaOpbLiq/X7ThwqxW
	 t/aHHroC6P7nFRKyEzJIvbv3QUR/SzryDLgENvr8jhujERQBfVTKtlpZwk4ofsL3Jx
	 DRK7BYy05TF+KoEVNacWGzQyTJUuXx5TC5vjQnbWHmFmU2AxQf24b9FaYbfTLS6DCj
	 ZzGlpDj/OSgWZ5gvCqqpM8ELWpVA2VIOwq7NixpyTVfdu/4iy3USJHFbZWUPbq8BE1
	 pBRnUlvaZervcXkpDqmAG8TSL5OwYBNKon3pjJqm2mLvSspkdq550E3yOdOrNfgeWz
	 qrWzEc9DPb6kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F98CC87FCA
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175409819358.3761.143746674700687752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 874c0ee1055e00b0e3abb5102c6f4e5c7360e77f5fac463e5f9796196d878c4a
Date: Sat, 02 Aug 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754098193
