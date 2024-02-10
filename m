Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDC9124214
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707560297; cv=none; b=aSFp9cA8ZpwG5XA1uSKWAFvLCpTRmYLQaXee68s7uPZG4oafeunJter4bAFyOWBn0OtEAZC9xNS2lGSbbmiRCARgPnKoY1Rm2l8xLBUuZnwGjHRD9HQwKe/kywwP8mmddhqPLZ5/Pr/pDsdcC4Q0KILOopX0UFpgac9MIUxIBd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707560297; c=relaxed/simple;
	bh=GJ0JmKYSbukVICqKhAYPpgkw24AfFW2glf2zHILw+cQ=;
	h=To:Subject:From:Message-Id:Date; b=O7KJDH8FYEjd2DbVU3Cf+aSMjXSsFyo1kVKme8tVuso1KfJnQ09s2WYljmyiY1+tZrJJy3Vd+2qgmD6kBBb+6dsAHW7nBwdgOqzmKGb91fwCUBM8jThKmsEGZ8mPXc2YBgeXCwh286dAmQxasn11plFqbvNtPVN84TfhDcohdh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BUpG5WXy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BUpG5WXy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78E17C433F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707560296;
	bh=GJ0JmKYSbukVICqKhAYPpgkw24AfFW2glf2zHILw+cQ=;
	h=To:Subject:From:Date:From;
	b=BUpG5WXyrvxuBBZt83jyofHXUxC8m90ehcE8B9bBRTQf4Ng5PZfpO1NGBEwXTG8Jd
	 39doSVv0cEZ5asoq4LA/zL9SneKhpulcv8281dN5+oTxW87rYsT7oaX46RJECNBjh/
	 ZFdJAYXNrrUT9f07pJD/XeyyypmGbYXxK0NwGoIoXyT4Q1cDUUngmSG91QJEsYhq+h
	 ptRp2vphWdgio5E9SpISknGbEjS3TvkhzgDux1pPyMk9S6YVPSs01/y/NEM5Sl/gN9
	 /ic+6BGk+oku3+V6FTk8Xx9kStz2sQ4uITIFKjGJwsEMXLHS15bZXMb90WLWNsRYq1
	 eNecmMYrTOLwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ECDCC4829A
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170756029638.1361.5140463218236970402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aace7b730baace55d2914584cf9febadab91da10f49d549b2652e67bed691563
Date: Sat, 10 Feb 2024 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707560296
