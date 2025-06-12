Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184831F473A
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749756594; cv=none; b=rcA56U4e+mYzBe0wNQyTsBf3QjJSpuYKQAh3sb2VUtQ5ev7g4+j1FaYTmEHCmkX9wL3ySkUVqfFXnABUSvIlrgXgDy7cBod71+Oi/nwnFzIq4dhCZzSqBJxz8k0e2xB/7dpA51PKoFmjiBAHAi7TsVfOLnwNuVZqdk7YpSbXtuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749756594; c=relaxed/simple;
	bh=0y7LXYZjZqwey3sbyE25dMoNqytDbaXaucCbhwQo5nM=;
	h=To:Subject:From:Message-Id:Date; b=HRf8mY7K/8eTbjK62nu1Qe0YaP3lCOg9e6JLqRG1C4Q2Or6FENJgFOxmo1IbwMvKeLEuLG9GK6X5BF2zvGL4Va690aiks2xfl9IBTQi/ucmOSnX+c0G5kkNT3x44bSYpBmYI+Ges9HTkLtAtYvFESPjeZlBVSZnw7Y+c5CQr1a8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PBufTRSA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBufTRSA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E6CC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749756593;
	bh=0y7LXYZjZqwey3sbyE25dMoNqytDbaXaucCbhwQo5nM=;
	h=To:Subject:From:Date:From;
	b=PBufTRSAN9mPJtJeD83kwoKA05iCHGln6d8eWCPjjk6aYucqLjmV4N4E3uxXjGaAE
	 3NKmO5N5mJ9LFN7lKlSdzWnPfA9dBmdi+0XqhfPc9LZVINaRVaRWZGp66cEX1m6iTp
	 F7PlTtsvMfVppQFVcukoyOMJ6mhIHywZ//xWYomvDuUTbQX452W3YHGDm/XjzR30tQ
	 MeVdo0YX7cN3xBrQsB9xBU7VacO8VYaQYcr4ZvGaiamXvctmH8eaha8Z4yZ7B8CxAo
	 ert4SglmLnMvP3pfv/07h1hGmbSf532XaKgBfRFns0djiXZ4kSdvVhllswoKZ3dgOU
	 PAmXPqRSacGUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CDDC61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174975659358.2155.15705664598582964680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 228cc8adf98285e051603584467f63148b31c00c397afb9b4fe29ab248cf4a9f
Date: Thu, 12 Jun 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749756593
