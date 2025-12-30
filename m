Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5E0CA52
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767116034; cv=none; b=P4EwsCx9OpRsbO1J5R0YBTQiP+0kU4ad7hRP/UFLUBpR73VzFFQlnflKSyVFMxwFc4Mx8gixiYsq5A+nBiWaEp/aU2tOMfQ9O+I1G6z6zsEJHIrTCfYsapDRqK3aPWVLWiN0i5Zgh5rSwUgMoqQHFNqVRvqY7Wjw3YyMQNz0BmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767116034; c=relaxed/simple;
	bh=/6/15ew8DKQLPkS+I2DYufAuUtW64ezl6Z9CGwgjd5I=;
	h=To:Subject:From:Message-Id:Date; b=bXxHOY2lZ/2OumL+tmNhu3C1uSEUMO6Moz83KfbNtSzfXy6WszF2Redhm43YqoqkOhbecj+34STnp8hWr098hFaRNRmYPKQ1S+gX3qi4lB06n4lt5erCPDZvHyqxTJEEla1DUmOuTMoMliEwTJqBxFIBlo5rfe9gNavwUQmiojY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lykktUAd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lykktUAd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AA7C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767116033;
	bh=/6/15ew8DKQLPkS+I2DYufAuUtW64ezl6Z9CGwgjd5I=;
	h=To:Subject:From:Date:From;
	b=lykktUAdD0P40Xz9mesSG438A132qrwMAxXUZ9YnBmzqmYlEud0PfcTPIwI3EstDA
	 FE8xpKpLwW+BS/hd1EOmyXGV2Forn3AoDErugE6KX6ROMtqwASXDXNkq9CmEOSqea8
	 ZBOcKIgG4zRK+tMFzMsLQd/0CUEqQzIqB5C2qvnrO3tzQa73DWpx5uPmF19pxf92d1
	 HgHXz93TnwZWZzrwNWmlRTPfmfAAVzdFCW3Ape4jVoMoHZif4Er5TAjKqdjL0vvVKu
	 AtS2bi6AhOeiYTqPeKeUnfDJW6CXHwdgD6MnZgxbAeP22pMclSQG5ZAVwky9Ulq4Ic
	 9DiHbJcyQ78KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A209EE498F
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176711603357.22696.12579820791850042295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef2e5fe1f0fbc822c8176354bb1e0badbb256109967edf1d78508fb855043b2f
Date: Tue, 30 Dec 2025 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767116033
