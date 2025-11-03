Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21BB7303A0A
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762169394; cv=none; b=H7OcYFDAunoIX/uXDT5y6xyiRULwNsj/syl7Dp0xu0bzVELfqdjKl3jvYtr42K3DN1NkqGJ1ypmJWdhf8yEvmkMr6H4PMXWf7PNl/ukbbd06KiqFtP7XrMq8Pytw0yYEw61zrrERAfz8WACtifQ6wlViR18V825vld0RQKAc4TA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762169394; c=relaxed/simple;
	bh=sko1YOJgElltMKM1LtgIntuuQgCF/cY7ldS85hSFQJs=;
	h=To:Subject:From:Message-Id:Date; b=HstZdvajChaK9aUoaBTry3IV5w6o2dzymJZ7w9c8qhz15aY87jYsp78EGy8a4ZaqoZe/xGYlyl1/wjmnYWmk9LoJ4uVHvxyyAjORVuJEWAqVOt/ndcvJpr4Rs5FKh6BlAdIDoYSPcfDC8Je5RbIqA4XpaNMUtAql5piT6l5KYAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fIkmbksn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fIkmbksn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15ADC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762169393;
	bh=sko1YOJgElltMKM1LtgIntuuQgCF/cY7ldS85hSFQJs=;
	h=To:Subject:From:Date:From;
	b=fIkmbksntnzm7ZNo6ysFIfd0iaGkf4vEV20u3pXjT2V7zAjJ5IgFwf9d6ALjeg2Gp
	 F5NwxNbBu/YyOnU0ufc0soTwkyADY1G40tiPX7X5CXyDkhw2nwViIfC9+w0EOF1Emn
	 Va7sr73pcS1WYbqp7iel+EuQPwFF7Lyz3HhjtlWYu+TKN08btzW/MP5OBV1FfcaTUY
	 EDEbqhZcmdw7tNSApF8DxyfgaHfLJo+s2gFO+ncmTwc1ASQuSCwDTBpoqq0EWQ6QqT
	 TvrEX+pvwChD47FlrBerRiRC+1MdyNpnAsz5CDkklvfdQxT10Aem1J9phhB46bnxFs
	 9RW3u3rFgv4nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA3ACCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176216939358.22966.14936474392887853651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 221df80a34ae578513c262c047beb9c0a0431a3b44df6cff2ffbf3bd24d26217
Date: Mon, 03 Nov 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762169393
