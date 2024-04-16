Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5306813440C
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 18:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713290963; cv=none; b=GZt/unmEojNqiF9N1MRIYHdkVBDwS6Q3p6xyuA40wG4TWLxATLeCmasTQ48992nfvmTE1qlVDUf1FMNOBFTBGkdVD7pRvU3MO/YJyQZa/TzEjTxsc7boya+UtlT6LLpuozN4/lCv51IMv9vIxHr/5BdX6xkcGKgl/XENB008ESE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713290963; c=relaxed/simple;
	bh=+knJy1at9yTwLmV0+ui5O/Q+2ji6QrVw0AUUdwB+NSg=;
	h=To:Subject:From:Message-Id:Date; b=kK70mY71YP32nJTP6g4t7HNwvBSj+Z7NMk93DqLs3W5t3hOtCINf5nK0sBfpYEZ4qtuzJaRR2NmscUlNu9/42BmWRPn/J5EwH0cMTDmNcmzDNBxweP+nxi41HFSrA94/3LvK/25mYH3kprv4OH7Z9sA2akSMRt6CgKKs71VJgSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nocROYb+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nocROYb+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6581C113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 18:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713290962;
	bh=+knJy1at9yTwLmV0+ui5O/Q+2ji6QrVw0AUUdwB+NSg=;
	h=To:Subject:From:Date:From;
	b=nocROYb+0egpvVsst+a7W/obM2ysEad+pJ7kJRr+s9x70Suz29Ie/Bw/khLLjpP5b
	 UA7U49op4zOhdWX9/zhkDe1SrqzbuFLUDAkrmdtYEFic9BWJ2+m2nKdImAanlYJqa4
	 WAoRVeJNTfja/K1yzkF92aSQZ/47nhO/oeKDZv7oJXMBQab1DrauLZHwjzKAUBfhrG
	 6Z/M37jZKzB2YA/ayqXCtiSNav+2NXHE9fSUtc9BBsm3mNcSISy0nqdhkcv7JpvNK9
	 u5NLaY12iHlumtW8CuOorU21FQS6XOwtRrfObLISyFM2LN+nh56no5kf4QOU5FyxoZ
	 xKFBXFs24FhKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCE24C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 18:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171329096278.8575.10706710174757888718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abc1fe71bb2d05b63e61c921eb7aa46167acbef0ad6b6ceb9d677b3814c1f507
Date: Tue, 16 Apr 2024 18:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713290962
