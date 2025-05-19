Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1421DE2CE
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747689595; cv=none; b=jJwSbfANQOabvmmEGHvAMR7HvwSsy8xARou/VFH1hS0IX2V82/rUyauM30CNLk1E3X9pfsRGUspnhTgPP+PrhnXxZC5GylB1CtHiV2xur472MTcrB8XRj/iqj9ESYcQfXANNaUPvcRaHbLueIt/pLzNy8ZO74VZ44DTcqBp1ctc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747689595; c=relaxed/simple;
	bh=IwZ8LbFJJq8jn5np2blm3TncLMxf5rRQWQLstawStrc=;
	h=To:Subject:From:Message-Id:Date; b=YGq/6m3rUCCNfDK3J52V5UT/79sdfWH2IlT/o8yYYoUhkg/Ke16S0BmsvDSKzZrkGDcf5g7njMld0hVnwLuPs969SlL7yrgS88LB7T1pI1QWhoOgXmVXq9dZIumMdF/9/TK1qkYWNB4wpahzQCedEjL6q/GiTMWi01yFhqqTM7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D1aK1KYp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D1aK1KYp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B3FC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747689593;
	bh=IwZ8LbFJJq8jn5np2blm3TncLMxf5rRQWQLstawStrc=;
	h=To:Subject:From:Date:From;
	b=D1aK1KYpExgt1K7geYMxLEuR4jYmkB9jM+9se5Mnj5u3Qi/Tcx4cEcn3KhuzhGxAx
	 sCNlVYdhlxPDD08D2eFHm6bpt7gQf+G6Gd48+Yxce3QwS8fNFDAuTKLI3aXH+AfcrY
	 pDhBsQbFg5x37XsSjNGcfb3wywGJ+U8GVV+1LEPqlr9PHNh+x2AT6sGVJqH0XpzqH9
	 wbUxuAvkQP5V6MTqhq11B4pBvmWlIKC9byezZfB6N5xfh9UZWkCStMrrbd6tOjDK+P
	 Y2ThQy024oW4hlWjY/UJcRKXQMCy/+BSV+hYmvsAc/oIEKI0LnyJxyiS3+p5lJDoK/
	 HH/QokEVQ40tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4EAC3ABDD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174768959357.6547.13288452321002457056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f54925f5a6197e2613aa8b420f5732117de12179a87b74c78d86bd2e688a85a
Date: Mon, 19 May 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747689593
