Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2988D2DC762
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757726994; cv=none; b=Z2vu4Qu4k4zRwcDd7ebcHprFc6orSnWn9EhoOxA+38+FvpshMPXpB7WWZLms4mbEFEk9Ss+3HDb4+B/7AqK4DRz1vno8CT547JarCn50phCKPDwNkAK1x7N0QF68vmUWKBFWX7uMcXLFXJlKJaT0Y1FmrxKzRH+P3YEpVUO8H/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757726994; c=relaxed/simple;
	bh=+iDvrExS9EZzQ6kQAp7zFxvreapepAxpxJr3jbdPrsQ=;
	h=To:Subject:From:Message-Id:Date; b=fv30SjpVeHIBf0DoaMKBJGBsvCq0EKq8ts0j+Cm1MrofWXkYegqBYnz0ehCtoP2OJWbJ57WNRitdJEEq1qI3iFEsB5k//29cst/I44GN9rPOOIGdEQdXgsBNh2n6/kSP6XcJi+uFVXCsLWBbNHd6oFhwfaXKSsU0U+6ylClJoLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HdsKdBmR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HdsKdBmR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A449BC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757726993;
	bh=+iDvrExS9EZzQ6kQAp7zFxvreapepAxpxJr3jbdPrsQ=;
	h=To:Subject:From:Date:From;
	b=HdsKdBmRBC+DCI5T0jiCz3/1rvWCVg8QdBDbaOq/emnpBClbEi4fXGigFOx81IirK
	 TRaP3wy8W3cEejgdWNcfm/jDJVsevQAPuEaM0L5TsskWWRyf7lg0Ut/hD7uib421Gi
	 6jt/0dYwzJyBfryWqBmUQ2bYBY5nlvQqwRyMDQW9QyJjXBGMDSh5dBNg0hG7tUxH7H
	 B1apW01AJvfCatz9gBfcTamkhhxmT50bnVz3lCWnwkxYtLMkZcgSmVK8sgCcu4Efl4
	 h/qXxxxyUX45LltOjGlH/YwLkjO9LFD59nzUHWuQ/fF2knbzkWRXcofKX6p3bmwTVn
	 Krz5gFH5XXWQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9239CCAC582
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175772699357.24804.14714828199184328777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28198248ebe622c1d70e79b9b454e05d1dbc5c5b5e59e0341ef5b27cebde79b3
Date: Sat, 13 Sep 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757726993
