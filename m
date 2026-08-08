Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5023C2F0C7E
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786228234; cv=none; b=togYSvLWQX8yejFtlfLyJhYgRR4sMNbP5npdbomLoPWtn/5oGXqyXtvSgsTllaAE8u5ODyTQkO1Wn0mfBcRXHSKU7p5FhVJnV8NFax6cETzo+A+tpSo9EQBwcrFxwIz6jELZ7RjQpNSJ+jBFgpNDPre8ojxCc5cRLLhum5uGXBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786228234; c=relaxed/simple;
	bh=GHesTNtP30dhx/n+Ictpb6rJ5DwhgoX7aYtAF/MujCc=;
	h=To:Subject:From:Message-Id:Date; b=YfxL5apGFhFnd5OcU+DZv2h6STjVeCjK9uAV7fCL8DHlmDKzFczxLgqlvssqzBFU34hWpAseSibH9swv2uyNVrsIfN25V8iK/CD5eIdx/ppUwTChhn4ewH+zy80n/8O9ng8D3ZubEnoKUzBbwzlapWWpsCIYCwvAXWNZFe7Omeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EqMARBen; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EqMARBen"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0992C2BCF5
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786228233;
	bh=GHesTNtP30dhx/n+Ictpb6rJ5DwhgoX7aYtAF/MujCc=;
	h=To:Subject:From:Date:From;
	b=EqMARBensRNtx6TVImzDLMHS1nT5iw+KvQs6xUTCCDOWJQk/LdxkfUDb1Ww4Osu2Y
	 Y7YfDQmPZV95y9GE1ATbspipS2Cl8YBOcmh7ZtGjGm9nkKtTRpv3je7IjBgr1vIJsi
	 fm2jfYrwbrwHn01JA7IJoWtGSyifMLyHKy0Jkfh2dLwdzlDJMpitz0iNBFIcSw0d05
	 eN3eAqLlaUj8RQzQeb48gqB6/2BnIaNP+Yt8D2OJZ9bFP5M/ezgA+5dGEAU7wxK9O4
	 mkh/72JoaosjB32fxCDKeFCnRgmZFrZVHc6eq02AiWlGKt9aNLU416HxBwF0LGe6KA
	 jQoWD1ZJWik0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB5B1C5AD44
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178622823372.9709.18115731989600851270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cd36c0f19b8f1d7bcc734aded2dc364aedf4d0ef7f4b6808dde13e00cbb37d5
Date: Sat, 08 Aug 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786228233
