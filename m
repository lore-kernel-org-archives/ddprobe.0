Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CEF5450FE
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758000594; cv=none; b=RLXzCbzmWc2WabKnZYlCuCDqjxx/t4kyp33OCphBfiZSIQHRK6ZJUJodw6FPU9EHC2Gm1Z3G6MDduLqHsDYOeObkDnzO0ZVHSPY2Tvei0g+72L9N7BGXWNK7Oxshhv0uxGkgeXLj/ach93KM0lEse7MH5zp/HxhtgA4Oyrq8qqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758000594; c=relaxed/simple;
	bh=HZcSjnKCX7ZWTHAu9Hqpy2+n6Q8zDGnP9BGsvV2Fl7s=;
	h=To:Subject:From:Message-Id:Date; b=Iv3ZMqaXNx2SmM7j5VdvWuWCD0+nVqSgji/uqt5E9hfXorfu5LBC+pQP05IeGsSycRokV9STQ8NASnqTewOIb1C4o8KdInLwKXFyJqnG8ZmzLhd0GaOgaLX4kpNXRyFg9lfgzhaVpIiK14m4DPaE7Uc+BwrbHDUJ17JU1b0rMlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uOhF1DiN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uOhF1DiN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4473C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758000593;
	bh=HZcSjnKCX7ZWTHAu9Hqpy2+n6Q8zDGnP9BGsvV2Fl7s=;
	h=To:Subject:From:Date:From;
	b=uOhF1DiNrr5YC1dvJS1Q266NmvKzbOX8aRse/ppLQXgFRIY7WmewMH6+y71UTs6wr
	 teB5GH4kPbPck8p0p1HCQ3g1NmDt33ZGA7P6jyGE5J0yFBfr5aSDpshBvhWU4rRT/b
	 oTP+7oucMygPexSq61CUr+krrhtt2EePBxMdlUvmNRzbxqPbFPDy786DFZACOnWgDO
	 Yj2iXOoJxO9C6JWtoBfWcRAjD2dfdbNaMtam5GOrxmjsIxD9+l3Vi3Mj479ugOcPQF
	 +zVRsXMNp5DdoMqACX502DjAKIq5b5Oa6mGXdyJB8b2xkB5rbaEcJDy8O9hyqyWTvT
	 9+j9r5qls9BAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92752CAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175800059358.29593.7340823063103722439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2aafec8de6d880427993d64d3db808f431516b7fbcc5f813394c07c71ed1c4b
Date: Tue, 16 Sep 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758000593
