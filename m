Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0B092EF664
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757925595; cv=none; b=C9v6FoMfQKROAlPybuhj1wnBAeHOmYNqnsxbGwwydLjyvoE7AA047sVJBlZ+Nhg8gZE/nkjMBIPLFjFQqvOyZWFdW/FQryJL+hm+sQ+/qgrN3dZZML1TV3OcaAyV8AZQEpAkL5lZzuxsmXCBlhgJ/Y/GSUFCd7AEcu86AlPKbUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757925595; c=relaxed/simple;
	bh=8Lghn2cWQi9+ZOwwXRIlzs9LHbsQwoG7OWT6kmX/FU0=;
	h=To:Subject:From:Message-Id:Date; b=lKcptfOMfhq2LDewdkeTPfsu9Xga/sxexoD2RzMMA+h5WJSbtRRcr6+p7WaejRCWXY8vU7MmN6hOaNXZvXr356i4qOvdAD4VSvV7T+7SZt9aJ2VuA0uxCzt8tlSjLoMblpfAxU5/BAR9EZoOQwwSmRCd5mnfRF4lwnLatIKO2Uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TEq/eZRK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TEq/eZRK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4448C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757925593;
	bh=8Lghn2cWQi9+ZOwwXRIlzs9LHbsQwoG7OWT6kmX/FU0=;
	h=To:Subject:From:Date:From;
	b=TEq/eZRKapHJtIDZYOrmzcB8Qy4uTYihwWTwHVXdXUMHiEI97y8+k5RWMChgeF093
	 qEWgQ6N7B49ImmuMCjYwUNdi1gu/4GDowHnU1s/EG9qLk+w7b/YHVCl0YFCVh2yc/Z
	 eN/2Lf/80GKh7maByF8yDodE/l5QKkFjjFBOdRl4pva3n5i5qXgBHV45JlpBLIV14S
	 swBuTXXrwouyO5zzB9q5vSwG4wXvm9qFZwaIQH4mqJ1C+q/TqTUh7htFhUzqajBtgG
	 H3CqdRzUPZ5CU0f0KVBUIKFoQDG+Ujp0N6aA6leUTZBYKakHs3eA8+Q70eAwjdB3Lp
	 qj/XSr3DuvgYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924D5CAC598
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175792559357.25492.7134846355606005375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1d974d69567f4adddb5295ee76200368969f4f3cfa41380d08a7a36b9ad1b85
Date: Mon, 15 Sep 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757925593
