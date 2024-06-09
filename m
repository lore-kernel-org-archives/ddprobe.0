Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE8D1DA24
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 17:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717955243; cv=none; b=HElWkNyNuOu4kE5bZbuEFZN4XK49KBYkXFwTtElR/DjRUb+o4n0ozzG/QWC2dOXnFzYLGD5XwrXHF4L4gHSnbfLBvDYEK6p7c/VU4p6sVqTkmvraeLz+PiD2C8eaCLQfN8uX2/1wC97Rk3j1EO+jghmPrcjYn9F01kJPsQkw/58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717955243; c=relaxed/simple;
	bh=C7JAZ0vzLP0OJmW9JccB4Zd/HIPz40ybbRJokYeaC4k=;
	h=To:Subject:From:Message-Id:Date; b=ka34Mwpv02e5kuNOMxSHJ5o/fgNTeg8/JL90aZaxBZVl5NFwRSpPinWHHIB1Aa3P7IgdxJ2HMRFSwRT0MuwsmnGYZTfIeRdKoJePhOXHwA/zRcJmnEqKI+LbphB2UsEFUG0Bs9dWbkUQppiViEs+mseErKK8yj7X/0OhzHO9uXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CCgFTjRP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CCgFTjRP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB24DC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 17:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717955243;
	bh=C7JAZ0vzLP0OJmW9JccB4Zd/HIPz40ybbRJokYeaC4k=;
	h=To:Subject:From:Date:From;
	b=CCgFTjRPPNIy0B44ZUHmKly6xdD/KQhjwBBDSIjGqja+5IFw2BByh2+L2hmOONG3Y
	 nB69Enyx/GLsjKYKNqg/o6fQBYNohDQV0ew83NYqOjKqbdjDip01wO2GjyMfLtTxg+
	 9AKM4V8S3Wxkv9kbCHxQejBhrKBycecXlSE5ZN05SmaIUx7Zx3Jv+rT8dKDNK0C4cu
	 wR7vaFMDKM+iFNtgG9JBokQk/l4M1D01SM4uPCiaWjrjffD6tHjGb+a4xWg1Nipsdr
	 tMWXGERshTvbHJ9Qm9AJtaHuuyO/YD/BrxpQLevCCWrQtPrRmKyJhuxck57Bg3Kn68
	 YNef4lA34dvMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CECE8C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 17:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171795524282.2069.17296792837511167523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af7719f7cae6cf4742d300d7bc782e46f48bd23d81c8afcedbbb9034f9f622eb
Date: Sun, 09 Jun 2024 17:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717955242
