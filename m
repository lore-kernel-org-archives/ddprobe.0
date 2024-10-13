Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8ED17C9
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728782154; cv=none; b=F1tK77ZzJxrwwL8h0xvF16oVPJsT0XRaXMuXAFKcc26lA0Q/sXzmqGWnE3MkPSkj2+Q2piiP0WBi6MZ06Apy/EVhEd1WDvr8u83QggasSu2mdItHTXRe+IMl61IzXUUaXkVAYsORV+wPC6D18rrIozGUmbXoj452OAqw25b7p+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728782154; c=relaxed/simple;
	bh=V0Cht/hOp6LbQbjZGhpLzTVCCZDDWsIstI34hOxbmZI=;
	h=To:Subject:From:Message-Id:Date; b=kT/WNycSqgcMhzRlNaa9FJzXwOw1x5abw9cmc+cxPYR3U+6wGeY5K+N8lEqdKg5XgJwv//cee8bnFEi/8PYImrRkFAJ6VhbkixnofeOvuMGor/OQsREs7pjzaZ6OuGotngyKhSWAJoHayL/ndQ3bIsI76Cu/pZCR3qQGQR3T3jA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cv74MCqF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cv74MCqF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8ABAC4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728782153;
	bh=V0Cht/hOp6LbQbjZGhpLzTVCCZDDWsIstI34hOxbmZI=;
	h=To:Subject:From:Date:From;
	b=Cv74MCqF0OevH6AY7F9rszxNu+iYQv0wOu1Kpfa9dNFRI1ctIo36minlNt2f46tHT
	 0mNBQf55XFQr0b68UyNPeMAR78vtpCZMqBaiJNLTlh0ntDch4Na3W8Bih9+SYKEX0o
	 ArWhdIsMISCuFI5WF9Xz18MhvajlcjX/rIM9oAUrvFgm2/NgnTqOPmW8ty9dHEfzVR
	 ZPPXRR1HnVunCRiNTH7OJSLQw/Y13C4/NDYJqxYy6+g6TwnrSuhM0ZoNVUHyXmeO50
	 cODYteFHCcc8bX4ON5f3U9DJISwLbiUM0BAPRlE9dSReaTLcoMipVSqU8Zr6gZ7X6K
	 Pv1rcrwvhkL0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969B1CF258A
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172878215360.28436.12285737801688003057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d6fabe0ba319951eb2883620433c6406397926601677945e39581318ffe5acc
Date: Sun, 13 Oct 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728782153
