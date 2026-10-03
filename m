Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E346A2EEE73
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791033035; cv=none; b=ghlF02IMBar2Uw9Q67AgT0xmVVeCmTd2kANuPBpCyt08OkoY6C1geNIKC7J9g/LtiB+VLDIeBoV9nNFoG6Yeo2f/Na9S6t+NLBwjk5Qp96UPidjCNBUPA1CeFuFX/NNqQDWY0j/OT7MO0T4d78gI007Oecmg9lmhYaj+XiSwlzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791033035; c=relaxed/simple;
	bh=pW8NYSeQZy9TuDCCDH1vFGjzHmjY3Q0U8dHogGy/NWU=;
	h=To:Subject:From:Message-Id:Date; b=gEk7ki5TNcqxgHnLQFvbbMrLnw/Rbz5AuoFRYYIS+7ukNXGynmlW3kqWVJZHVpj/NptzPwRgC39cQJ02TyWHgzD+knn7/od8EW0o9PNSDo+um+8r5ohJsa9R36VJJBqWNax0hCeZoo7fdfgFqpTbQ/8iKJmhEC+H00LeW06Bb+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bBBFY1Id; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bBBFY1Id"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA74C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791033033;
	bh=pW8NYSeQZy9TuDCCDH1vFGjzHmjY3Q0U8dHogGy/NWU=;
	h=To:Subject:From:Date:From;
	b=bBBFY1IdFDLp0mccfxdhe/v3tNaMxxLqmRIhl0uCadTQ0FeP2FciMGI+5bcKQBVUu
	 l9XlSlK7Leu434qPg8Be305ydpzV1PIV1mlyXQBs1jMp51CEiGfqQdGrsp6sVEupG0
	 bhoniqaRmkslTbHtDpomUtxPqaGLdBhLk4WOetCdyLp+WquFczVtGdScykSHcB2LbA
	 BvkiZBrdMn/cUUmofpTvhEO7FoKeTr0EohO40AOxmnt7og77zD3ykbDPZHD2l1c63U
	 ie5SOWu3pbkQyPUd8DL8QWygMldBBNhb6V6hPkmBiBKiZcevCgGf423OAkxYrEPmuL
	 R9Zdeyfiho3ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2FACA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179103303368.28390.6369503758545041589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9eab31c9c8d5b714f36e37d6d2c78ad5db4d212d00aa52f475bec7baefeb194
Date: Sat, 03 Oct 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791033033
