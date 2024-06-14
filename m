Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 754F913AD39
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 15:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718378903; cv=none; b=fyswceKdDUjdoYrFid78PWTYC3wWN2SSuYKm+2oSN248Byz5Ri6c/tV8w+0cn4c3w+7QtsemVzvZcTLjfSaj7dNfzXkJS+i9hCUEbnt0aVW3IvMf1d20NUKXNKqaAQjDk7f1Dh9H4jEC/FvjDFhPNzOd9KJs/ULuAJt3n/0857o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718378903; c=relaxed/simple;
	bh=SyjMWCxvkWaidLw85k/eBV2RMnG/mXbp/QNqmGPKhtg=;
	h=To:Subject:From:Message-Id:Date; b=K53wKeJbseP3XIhOhjoGDH+s47SUOVLv2n9QNhqmuAtLLVftg7iwq57UYmB77KpUJe/Kr+W5nP8XOmrB34vQpzlek8JhE6IprQJIpOkxhjpcO0KI2opOoXE1jnET6Yvo5FajjLiV4arp8Sdzp7i0zFuY7RW4kF3gn9rFLNKwfSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F2S/kkb7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F2S/kkb7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFC5DC4AF51
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 15:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718378902;
	bh=SyjMWCxvkWaidLw85k/eBV2RMnG/mXbp/QNqmGPKhtg=;
	h=To:Subject:From:Date:From;
	b=F2S/kkb7Zi13Hrq7tWXrzDhl5w2Q6De8SpvYtqDb1WDlw3RACxYUuYn9u8i1rmNP1
	 eeXEMQyM7SrY9zBEQP9BxvVS9sDe+dncJWUW0kcjJBIWQhKtmnec3xrAhhiomCQNBL
	 F1xtd6QHVATpEKRfJ6NNfAsWuMcizeFmUyZSx/Q4mUxj/IYyKpzP8N1mD/f3MFM56i
	 Y5yWw6m2qmHXsnEWintxsm1f6cOCN/qYvxzd5dEuabVH5u365ER+5AOG9VKO6GMDLo
	 xwXdXO/FFNP8eDnzHMGEHw/9dkhzAakkaxXVvrfpA33J1Hi3iLizjuuM0dC60fJjzr
	 f+K8MsdC63ftw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB953C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 15:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171837890275.30516.14211011545342203668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cb9b7b8fd802feb1ec9673967b19b3aa8b4eaa73c43127df9da1bb5e1a01cc3
Date: Fri, 14 Jun 2024 15:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718378902
