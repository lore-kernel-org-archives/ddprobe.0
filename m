Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BFD7202F8F
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745334594; cv=none; b=GFItNk3F3/k65auzoUsOiBTlKx+Z7k81ZjZo1bLTaSP4kOguJUqvaf3nV0hfNbuMZsQhoxptl+TFXhHLZrNb3UMeTsATNyYs343Mt9DfcACauIGG1+a6V1rQ0gYgKXL1dmY4SNBIt1EMyIUVPK7WumgUW+MQthwXkJWifxS2x8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745334594; c=relaxed/simple;
	bh=wIaE8eqqCouDMsrJG1f2iuD/faVgSsF45YE2OoSMpro=;
	h=To:Subject:From:Message-Id:Date; b=d+SHBIKmRCnvwZrX66XlPc1NAjsNwaE/D2e/9TAj1Q7+U4cPRLqsRdYXObf1pdmlvSOm7/XIIyEbvkCniFxIVCbh+L8/3u3Qieg55q60p9G3Oi/CXRAEuQEfoyCheAicVWXHHt5Wdx243ih6QVptvl8kWi0cJRRMqqzlfepTPKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jfjwEEsT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jfjwEEsT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3FC6C4CEEC
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745334593;
	bh=wIaE8eqqCouDMsrJG1f2iuD/faVgSsF45YE2OoSMpro=;
	h=To:Subject:From:Date:From;
	b=jfjwEEsTx6fqbsgfnFTZDeQpqswceTMs3q//TNfbybQrcrRO8mQ1cjFUlzeLEhh+b
	 gENg9VR6gNi6XD4ir3UT9wx+w+Kz5JHBwabn+iVGXDyF8B+Yrwb0L5z13vpjc2lfTd
	 BxvGkpKpQqpB66fS6a0IYHov/E+r++xmGfob6J1YR/4SglKb/8GOEkwXaHQj8S+n6C
	 2EElpKAJY5NpZ/uggOfYUnZ08hxs1H26UKL3q8Tgi5igEbbYNuzf+QvcAU9X8zrd9c
	 SHYzNiAtXa3L6KIZ5FCBV989lkfUylggJelwY3A/lYwatASapn85fOrc+wwRKRuXdP
	 OQk8xsFoR4D9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A546DC369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174533459365.19599.5282553188039094543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad426be5dc11108b9de4041d47e7897133d361cbd79e96b7418f9c0582f523b5
Date: Tue, 22 Apr 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745334593
