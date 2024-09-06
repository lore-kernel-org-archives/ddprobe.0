Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE591D221D
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725638154; cv=none; b=q1mJa/AcWJm97+xvu2poWw4UWR0USqQ30EYrSpUeyk3gGaE/GliVGX/TDYIKg7BO+ZLCTG/lbG+xqIBS6pnt09v11CZTApXYZW6XArpbVryjksoxpHZAoTcQn/O5LCuRFOt6G0/tkv9UpgFl4E155Blqwblb+tu2JKC969kUba8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725638154; c=relaxed/simple;
	bh=K0mg1Y4cFS+ZhiGKV3VyfhkweeeW8XffO4fywPcgZ0s=;
	h=To:Subject:From:Message-Id:Date; b=KExjGJ9JOoPKW5uTnXX4rmCLXCF7rOV8pvxy01rkriUKDDhMOQf6kN3j0NIudInuSygfVw2wGpBbdfHwJ6J9pMkgRVsF0oeyVd5VxxBOm2g8d/WOoyuPq8TDN6kTfqeAIghgokCypDiLoPHi2hrDpNfUKl7zNCLsNZkW+Kr18/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RE2C8tys; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RE2C8tys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE423C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725638153;
	bh=K0mg1Y4cFS+ZhiGKV3VyfhkweeeW8XffO4fywPcgZ0s=;
	h=To:Subject:From:Date:From;
	b=RE2C8tysfd0QykEgw5rGgjwIoPndwPOnFh2kjU4Hsm7thJjYL4WbxJAmlWsoX6/3g
	 eSfNMHvHkQyjcVNdj7vWvC0P31lKt2o/mENszp6hNmfmjz38tm3MOuRBevxIlH4VWU
	 PeRvSAESuZkHngRQcE7CT48KyUqKidLoD6mdDFunMZT1NShmohye+4y162A/iiCK1J
	 /o5tpyX2s885SpI3/b4G+2fSULH8rwZu7nn+/CDQZNw/Ae9lP+BIMSNowdkm1Sdhfk
	 ocnA58KC28CrvPIvoOomenkU9fvWuSED65rcuEFcThS9GZp99mstuTtyehmg1UnEHp
	 1VEk2jSJ9Jt0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FA6E6FE2D
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172563815361.9274.12903383253945656230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26e08251ccd2d25728b128ff7afdad127fb0673199a1db25b871b765b0586f6b
Date: Fri, 06 Sep 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725638153
