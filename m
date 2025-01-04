Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305BC153BF8
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736034954; cv=none; b=XCQDm/DW1bGiA5JYP2CZBcyKOhK1FFQMAZm0YW1CfgGcW6lCPPN5/uRIAioTgOAk/NkI2X6QMwTFQkyQiCoqcXLWXfZ8OeBQfa810kgdokZE0hqNMXX5n3wlyx3RuxxKoDJUli4lQfpb/OvS3WrLGDZvqAqh/vOshfndNth/x98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736034954; c=relaxed/simple;
	bh=z/mh2+ewMX3ALrCz5+YhDiBAjArU82jPR6k9B3R0lmE=;
	h=To:Subject:From:Message-Id:Date; b=rsvCFPtIP3L3zGHcxA6kQ6OmER7TqZaq2BS6wi/FSQ2EQ/HSf8dFhc2oHIaL1Uue17PkrRxbsoJo7KryhE3yBk2JCzdZTOXLCvCnmeCq+ru4GeuUWJMvTnsn3cZ36GI/x3/K1YHyDLJPjQYnX+p+UTLnPBg40/2ud3+GuPrirEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CsyG+Jk5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CsyG+Jk5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6213C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736034953;
	bh=z/mh2+ewMX3ALrCz5+YhDiBAjArU82jPR6k9B3R0lmE=;
	h=To:Subject:From:Date:From;
	b=CsyG+Jk5POnPuO4ZOtxqsotNFuP+WcHV4QV59codGBBgogBYFccLT58Cyth/0qC6J
	 T2bpxujsS0ubhE/IcmNe5+IsFt2R2XMXgzRNQ+3obPbqpfzr5mTgTI+PCfccgttcST
	 /2s2lRVO7n4/BhEHWvQEzzrGF1vOABDL1zhvclEcQM+NeBTX45dUQ5w1v8PiaZIZrB
	 nOz8swJ9Pbasc1PFm2kkxei+Nr48fmUlzie2N+KtTxlWPtQqB+R2iqOemOHK130vQX
	 1R4cOYdGQIxiXiW5FbtH1xucaOwWyap8pW05V3EJARbF9RbXbhfv9Arg+pClvjUHoe
	 YXEvkTPz4OQJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2373E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173603495362.30247.7684139238784123752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09d6f141de49ea95ba14c0bf8265c870106b9f442c9fe864dd8cc787e420758f
Date: Sat, 04 Jan 2025 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736034953
