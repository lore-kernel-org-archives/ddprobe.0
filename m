Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4CFBA34
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745802596; cv=none; b=tzYJsZmMgukDKr0Naf4sKDxRUT0L7spUP0d0DuPbvHA/L/rbYJVn+uecrhT9rr3BJk6e+6VAga3EgBL+5XDKjZAX9zCDTQIyZigobWysaa+NJ6Vyi4UhbU1iKiolenV/OQ1QX53ROgfO9JQ9mcUmg+UWeMEIJAo2lF1QLniW0MY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745802596; c=relaxed/simple;
	bh=Z2euXvjF96cyg04YPN9n8F1xoE8PmSG8V4nw9fClJgs=;
	h=To:Subject:From:Message-Id:Date; b=AFFAdlyU77GE1yXjhmAMx1MyoBIdSDAzVeEt4sFn6YFPO8qzABze+/HMtEDE5VVtTakZ1lTtc6O52w7qHo6VuL9wlA+oFa8YqP8fwJfJwJASBF0xQjaDfEmX3DQDQvhmOPGQu2BT0j8lDINPixBTE80xWO7/7VcDYQIiU8JlGGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChSH070I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChSH070I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3088C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745802593;
	bh=Z2euXvjF96cyg04YPN9n8F1xoE8PmSG8V4nw9fClJgs=;
	h=To:Subject:From:Date:From;
	b=ChSH070IG0XLZbbzbD2GdTQiwucNahrCvo4kaNhFSz6dafH7+tcF4UQyThXlLYyF7
	 1qI8YM2bYy1nOD+OhTmgyxKWdU5ooThzHVybp8fTnDWDMpGzuPmeWWkK2uO/k8X+2i
	 4rjVPYYDy5kBNQW18BR4d5D83u8t3aAALWwal3T3i4TNSXlinKaVnklYZ4Fq+pfGAk
	 ugGiWRt4n0EaytA/5nIKCpFBsJTqAsxukQUzPFbR47rCRLyQISih+nXDdNCAkofVe2
	 7j886rtqZPtnI3sbPpMFcLfWDFeglTrqoqr8FfCNJ6ypBmW61p6Tm71MhkYTMR9+l2
	 AKrl8EhH9rPKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900F0C369D1
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174580259358.17285.14423769921239632344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 271fcac403a321eb206b86d8f46d453ae4e0f9ad9669c2e88897569cbf6469d9
Date: Mon, 28 Apr 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745802593
