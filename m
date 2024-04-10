Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D52F144312
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 08:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712738297; cv=none; b=IhsV0PveVFb7+l+3xEYgr9wv50HD0MBfzE6Zj3FUUk8FTrBqX6LzG8Ox0L2N+oRNAbQBrIXEg/xBSsIHibfu25tgU9rYhAaqTY8c6X/EqPviFLKVQVPHcwlbYuyd21qvpZBG4EcWk0ut9tPzALcA66oFGRk8GLedIjGLu3+CT9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712738297; c=relaxed/simple;
	bh=sQpNwftrULYoDsoLD1bf6m7BmBMktjYQjqSn3IFBXuI=;
	h=To:Subject:From:Message-Id:Date; b=M+CaqUIQfSgZvb60N4+EyhCgPc2xG7eo+09c64cFD/fn/g3IBGUsiSawvkWlbgB6zStiMASpeo546lCEhaGNaUJNITSuo9dEUHJhdxkidE0fyfyvi6QC9Sb6IqRWBC8aF372dNOF3j2TXEM5827HuWejYFfR0W5RDgadMCZvpKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i7Sap2UD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i7Sap2UD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EE49C433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712738296;
	bh=sQpNwftrULYoDsoLD1bf6m7BmBMktjYQjqSn3IFBXuI=;
	h=To:Subject:From:Date:From;
	b=i7Sap2UDlVkvLdOBbWWV9VTSuDJUFESflS+DEtfM4pjy2WenC1fSyJ9ZzaIGViYWz
	 RrbADJEpVjBTIhhoxbu4r97TmPgf5pF9hteZxwtfkIQ6vdilWCHJcophlBLTv1AQAa
	 SZsMSUYjQr38AANjinfDUby39NoaWnPG3SBhOWjDxqXgBaBk2zXrQPECwzM8UhbuUN
	 8xqfOfDxOZCEf6u3q6ACWDKx6Tl1l2zVN74N3Ywp/GjqVpKDdgwapxRj5IV962tsr8
	 g0n/i5rROIuF0hAnd+bfiW3iasNTS7ZEE+ppcjV13h1VUgkOcda0+GNRCyR9ACbwgo
	 d6GaO1VR2frqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B027CD1296
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 08:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171273829649.12888.6633873303538811277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cc7d94443840868b1edf9522a473cacd2129759a39b302eb05ff4922b51da29
Date: Wed, 10 Apr 2024 08:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712738296
