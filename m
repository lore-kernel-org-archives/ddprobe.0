Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368792701BA
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745368794; cv=none; b=n9FC5nJlheq5QbiJdb73w4iQhjlR7ygv6ferV5YIKnewyOEYGGvVX1RNwrfkeTkn2Ebw9Pd7TDQF937oNNUeFW1++gNuM/g+bv1QED405EmgvVsfv3tC9yo6fh2wKPerkoxOLXOGEW919X5AKDe27NEZVRG8EghiAwXG/2vW8BM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745368794; c=relaxed/simple;
	bh=87YeWQF/Cd6UojUUj7cPMzl63/S+mRsHhw+mK/3onrY=;
	h=To:Subject:From:Message-Id:Date; b=VDa98d9NxO5UAgVQ0gtRs2HPZkud6qbQiUqELUFJeyPyJsC0x42qvG/9k0cTElKzSUAMXjIU+X02BowuNxg1h4AdryWaGvQcloS+USSu9OZqxkDcCb7NU78K/SqxOZDbmpaTlyVsPkZTh8vvJHjsiCE45h0h3yRZGj6vF45A/VQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r9nsFRjF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r9nsFRjF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25A6C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745368793;
	bh=87YeWQF/Cd6UojUUj7cPMzl63/S+mRsHhw+mK/3onrY=;
	h=To:Subject:From:Date:From;
	b=r9nsFRjFRNbvTNpCdKXsl/it7/Gz9pXnoAujG0QZ/kHgAfGiDQylwTQDDwn5FMFKg
	 AZyc6dY8TM6RsO7uw7BoujAQ6oPfgm5E1PWlLfgowGf3syLRUnvyNOURcUcaUDmyQv
	 Dg/OO/DWHMlfWtEAyJS/1/6NgvxoxxQdNrfy960SO0VsjCRZgwYGa2EnmCJqyy3lPb
	 +OHqXvusafo68avLv/6YUxTEeOTTLSbxDKQROGsRI27MJDFSc6kxh9VDKZVyYypZbo
	 wl05b31NluaEI7hC4vo7EJSbCcK5wSu09WM4cBBCJypDniZ/z/WuREpXN7H0uU0Vw+
	 ib9p33+V2m6Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91716C369C2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174536879358.15738.7044439335171584616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 613b8a6473b01cc5b690fdd3c1b21f2b1fd6118bf84e61acd7b340c748e68c5f
Date: Wed, 23 Apr 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745368793
