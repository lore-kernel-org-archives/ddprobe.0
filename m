Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264D11DFCB
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726984554; cv=none; b=d8oL77fny2TBKCjj69G35DW2SkCyYTCcPZpr5kysBqzs8elh9ZP/8Dzs5MhMNSs00y3d6o3S6lmJzVyJc4mkCgy5zpkMTWpkfjo+j4rC+UYPNE8P6t9l9Uga6g70pYD4gB0DyIgqyQ885uXsBB1tHd+adeG/wV0Q2iKOs3ILz4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726984554; c=relaxed/simple;
	bh=00Iupg1OWnaauP8oCSlEq05PQ97v0EPevnFoF5rbzjY=;
	h=To:Subject:From:Message-Id:Date; b=ATnpegvoUcy7BgJh0au3GXaQKkUC8olRI4weZGHQaGkdk9qaxx4k6Iiafh1LBtxBm9VDGjo7hU2Hd8YEL06AMn9Kua4gqWOes1EhnHYbOBa7EWVq0tlZKyZnyQSm9I4C+GPTvaTIbuCeBdU2CQCF6PSnVkhitqhnPYJIgVD/rHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MC/T/zJN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MC/T/zJN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A45C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726984553;
	bh=00Iupg1OWnaauP8oCSlEq05PQ97v0EPevnFoF5rbzjY=;
	h=To:Subject:From:Date:From;
	b=MC/T/zJNcL3T6voUHxY+b7K75YCsD30sLHjPA4DWKIoe0AWPtk30EXVPhmqShhB56
	 JHDYKG2RHhl0LphyVuBkKBY/IwuDOeyQe9us5vVD4hzlH7jzuYbn/FxJVwmhEqZu5W
	 HUIX1jEPsW6ZSX3bKeQs6oIXNPX7UMvoyR3joJgiLtRbqeJ7bGfWn9NS78M7DR0jvo
	 R/FfYg39yvbZSqpZVV3Bro/a6lM35H/sdpQplo/kr258R0Zt4JP7a49BZM6kg+H8NB
	 i1Zjrzyx1ktlngNQaeDcJjBeseiD58EJQILePNelgYrclH62L8ZmQZLnC6NA3W/s72
	 UOyGtmYoS77rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9135ECF9C69
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172698455358.14279.12081891622498237954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6d11daf1a69a7b873ea73f42ddebfcf40cfacd0bd16473fc2a877b0c45734bd
Date: Sun, 22 Sep 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726984553
