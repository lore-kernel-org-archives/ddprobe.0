Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3340713AA53
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747235394; cv=none; b=Xy7oCKJAedgUK7dWiUsIsue7db8c2VRAIvCEPs6JT7GB2loomUNcb6kICK6b785KvnubvhQQpEgepGoXOpkoWmkxowBQIDeXaZr50Y3mZKjklvYS500JidcKR2Co5YVX8BL3aN2bJyncVNHVT9rmBt2YATyydZtBMN7Pmb+fqh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747235394; c=relaxed/simple;
	bh=vxeYusaWkak2bbPGU17yzV60EDpf8w2AxegqqidGzxQ=;
	h=To:Subject:From:Message-Id:Date; b=i9JzQ7FNW6cNzAOTFV4kAFFgljCzKVabGLr7Zli8tDVf/76QfogTRe95Qy35/94uslvExhrNrd1AFRpxOdnczJcqYoEEJUX4bws+pIIoE9UVUpAfvA6gAljN5pXv+DAqwSmfgv/antrDw1ujjAGCuT2lpwClQTLKToFEL3xqTcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I8JYK0fM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I8JYK0fM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A23C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747235393;
	bh=vxeYusaWkak2bbPGU17yzV60EDpf8w2AxegqqidGzxQ=;
	h=To:Subject:From:Date:From;
	b=I8JYK0fMT6ZEW1ygATYeQJcsyazpMRxe7SxAtegK+BUALW7wviLsDGY7/fkg3j0B5
	 Tu+JIbz3XxNdVbYi1+FwAznt4b690IpdI+BgFXFl8AHQSYD42mCBXsG3UNv4f9B+MM
	 7dkp5W1LphNSCqhswD9A3yFjYLnZ0CvC+Wv1TSJqIasc6fk1LBCVft0TWAmuk7CNzR
	 ZAA6LK42RGf1kW5+tAgKUQDDRvPvaQSfhEFEASJ+WU7LqmMo5IoZ6SUj/hmyL3T0+t
	 Lo1kLP/Lc2XC6ZLHqL2j92wrq7bwDML6F5fI/nuRWw4F2tdhxDePlhtBDdEt4kAqQr
	 X2+eE8j8L21VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AADC3ABD8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174723539361.28929.11797810117520480022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad30c5239a0eeab50b8f3758a8498b5aaa30626b168ab605889edae1f23107ba
Date: Wed, 14 May 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747235393
