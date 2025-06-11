Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182446FB9
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749623395; cv=none; b=kFob9IsUqWZ1UEvR5uwXQEl4eOViNzMtqw1XiB1OJFhiq9CKSBR3j2tfF45mwTRHeUZEwIDXgoNQuDgZIXy/Cj8qt1li2d/XTbQb5+KBuGkXlu3MQLMinG9lvAHm3KDk8YI44jF//zOG213wFpi3j4ulscnVHLE23BZnJD0Norc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749623395; c=relaxed/simple;
	bh=bWMF4PYIhIpuMulzVLTH6ksEyIvogGEV01cA8KrC1+c=;
	h=To:Subject:From:Message-Id:Date; b=S+z+ynyeN9R9nuEpm0GDhhyD0jCEkVrd4JQQ6xQsMDpYQ0Mlk59LuPBbey1WrIelZLejoqkFxo6IKYdL2bmq/F+RyCQzK6srB3aVBlJvS6SXrg7rBu1Gs4o9SuZGFj8vIaJvZT03vWIVw9jhgpDASq7Ti/pUrsjzwcugvq89Q8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HR+MTxAz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HR+MTxAz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92FDC4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749623393;
	bh=bWMF4PYIhIpuMulzVLTH6ksEyIvogGEV01cA8KrC1+c=;
	h=To:Subject:From:Date:From;
	b=HR+MTxAzPL7RQ5SpQBxBQxZDXabK0M5INJOlB0qEFB9uLCr3XMuWV32lSxy9TUSt2
	 kw2sY3md3yKuG/WdLIocH6D5Vly56cM5nW2iRUl25/rJfNVIX/xMaAirpxNjBjJ8j3
	 czaoCzf7JisbM/L6I/I61gZCAYSnTXm3CWG0iovSKO5vU0rWhUDH16x6OY9N3lh/yD
	 MyqF7026v28WvwoIExRMWOTyhDVcddfPcRaVxiDgR6Q9uTdMQqvs4ZZCwlMHAaXQjF
	 9HoOLZSWxLqa1n/DCQvcJjo3QFXRAuKwb1eo3jlUBiEi0vvOm5K4/2hrK96cUJ/2dR
	 MBx7col3nlZVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9379AC71134
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174962339358.7217.7513469731092310331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 771b1b4ed6969201b52818192b81618f4819aaafc27be5cca5890729042a5804
Date: Wed, 11 Jun 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749623393
