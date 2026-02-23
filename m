Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11BDC339862
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771869294; cv=none; b=kVwlpGqfknDiKQBHYXOPCRXAFtvvS3wSxWM+3HvznTRD0u1BxSE5s0bKDYttYo/chxiC/pfSDvSxEkPdQ95DFm1qYZR7TTBHB0rhiODVeDtIaaIudD3AnKj6oWEk2f5dlI3kQJxY6gYDrcqAFd5Bq9C4WyQe9XwYSJlbsGE1ezo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771869294; c=relaxed/simple;
	bh=+PFmoBistwaE4qzLExOW84FSlsiZGNpVYgPP23EqLYs=;
	h=To:Subject:From:Message-Id:Date; b=T0SMJWCoeOyo8lxosCkmiZsFGAPRgebExzyqWkXctLs8BeC114a5wML+nTQFKG3rP/hqXbtqmCNxJIACnLmCpy+pEZLDGuN5SIdTU9q47H93IKthJuyIVDbTtFkVH1+0Q+J15W0INiL1vej7HnWPBCCrZ778gPzSnhsfDZiOCMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nyRP3RWb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nyRP3RWb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB90C116D0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771869293;
	bh=+PFmoBistwaE4qzLExOW84FSlsiZGNpVYgPP23EqLYs=;
	h=To:Subject:From:Date:From;
	b=nyRP3RWbQYFEPa778FlP2s+DRAFuBeUjTOI+VKTLmvXiX7lVl2cRE64K5e/NAtGGv
	 AJ4LIOOrswdhZGp0uGh6ExwKcLLehNymSd6/fvq5hFBZr0AOyOp8INFdWT+zpLtLDz
	 782Iw4gUKH+25ZILm3tGwEg4903XHIE86ox8k8qLXGZwjZ1q1rv6oX+ZmyHIMPjzZd
	 eh1JrkKZAZc3p4cI15XmSxK2h9dxBSITwHurTAChUOmOXmHS/hd2j4Dx6wvwioIVMV
	 iMsvGdE6ZT+2Ct98JdC77tsrCUR143QfFKsYO6dBEaqkQHOpEJ4vfNYHAcQJs3jOBK
	 BkRGEaWgUHqwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B20EC1117
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177186929358.24911.15565163596957383265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31c19aa7b58c1632f2b64d50ddec774896846a634a51bf15ab4eb04dbe0e1112
Date: Mon, 23 Feb 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771869293
