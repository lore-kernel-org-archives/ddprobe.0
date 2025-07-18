Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102242E62A0
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752855594; cv=none; b=KOy/WMcDP1R9Eu7J46LJ05LLE8t/UT+915IYMp8ldjlhjMvwT7q2v4LLWoBopS0EGJu+SNa0xP12mwmlXyIrTeG+ReS1R7bygfhHM+OLcD+GUUgijVHxnz2TX7rsIpM9tABzIuz6TcoxsK9j2nmjfrGUzfMIMDlkUJg7fOjPDWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752855594; c=relaxed/simple;
	bh=KnmSYiZeWB7JmlEiPEuu0p83ZowaHh9nM/mCcPSiByc=;
	h=To:Subject:From:Message-Id:Date; b=JEkMuRU2X6PhtLWRb0yZ63657RJnmdNMT2V4Pt9HpCj71lpDvpAZhq4AlOJi6hs6yQ/InjMYty0WAb3USTQVXj/CRsxVxXZtt7ngoej+xTiyb0UoQWrWBXYcezm7aCk82KwSPsfMgt6xEOdi2hx32CsMuqsGh/L3w5tf5CBpnTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VxL+v493; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VxL+v493"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6596C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752855593;
	bh=KnmSYiZeWB7JmlEiPEuu0p83ZowaHh9nM/mCcPSiByc=;
	h=To:Subject:From:Date:From;
	b=VxL+v493RTSzFBadOYGs7QZ25zylq/85lzmZkrdFj0UnJ1g01YGbKAN2WZj41J1hp
	 l2W4qz5t3iLBSp9N+HhssHrmA+oli+Z4bCHwRoCjHkdQ6shXl0PBtO4UBsDyEJ5bzk
	 fo9Mzzxxmg7Fke5ct7Ub2mPxPPp/33Q27Pm8HNh58mrHoCFZ3t3MLNeOdqDgzD0r1B
	 xB5RJ2z1TBVNZe1ZP6EieCwk3EX8bdYGCddsFoBvSPBag63e06Hka1NldNW3gixC2m
	 6rd0jc48cP6DF4354A9tLbrV3tR1oSoiyVh1X8ljhg/HBBJEZ2r+x0Ils6SFRmZaN5
	 oT0JDSOZQ4f4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92223C83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175285559358.18217.10473169030252902189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8971500d8fa58e4ce72de983294be34cb1cda80eac1b1763168afc6ad34e9b6b
Date: Fri, 18 Jul 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752855593
