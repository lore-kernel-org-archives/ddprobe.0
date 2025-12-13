Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C7542AA6
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 01:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765590774; cv=none; b=rM6JYkq9CJHBft2oJpaJIlm5CZimgosMr+qdjY5cK5/4dyvNeeCtdyK0KL8rSRUu6Si3BsB41Zbp5cPuQGJav3+5EZ7mV9MtPh17sHaaL1gXD3UkDxLd2YScmlmy5dS0S0oGeYVueyB6YTmW49dV/8jPY3CxW13fGspRMZW43kA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765590774; c=relaxed/simple;
	bh=0IVp74tjuIooIEGsbyTar6SS6G9sfdgyZeyBLZyjqQ8=;
	h=To:Subject:From:Message-Id:Date; b=qI/KMzxujOjLIuA2TvIyuRhZGGz2HG7kwQRtcYjr0Cmo0TARfUNBCM84Am6YPpAuQ+NpsHuv3DuUUmFuIwxkMnn65IEpIwbTLHWBDoMDn1gxHYre0Rf+VgIx4RNFzm4MkcoKhgxjih3PuqGGgDhc4f1mePK+llzehyp9AlipvmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8VBG6C3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8VBG6C3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90D7C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 01:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765590773;
	bh=0IVp74tjuIooIEGsbyTar6SS6G9sfdgyZeyBLZyjqQ8=;
	h=To:Subject:From:Date:From;
	b=i8VBG6C3O0LJ8v+r+KB+5LDXmoKyk6prdh8As6Vg1Ehc8vMw2CIbYbxhiIvW5rpTA
	 CBDyg9ZYleRVUktutJRv48n5LgtP0elOR/t5ZXjFbKycEHDHNZX7NRs81egYjl3DSp
	 FxWYB5YxS9CXO++jlWwNOumAuhmbLAZnP6uHTOLsYGzbAm4EQs8crByZ85qIAvFKKR
	 jtMuQSYvRE61Hedcc0ygX4yNKcSU72R07r3GQNpt3sJ1O8eqiE7ZTu6OggM1Arrt/W
	 wEV92th266Ad7JmRt5Asr4A8SEQ/f2IRTET6ED9HpjIdq8fmV8H3AlyKmQZmzgdUFP
	 oTXD1DMGN/t9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9797AD59F5C
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 01:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176559077358.6805.16359314362710038230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40a2a4fa365fb1b0da51e5c8a3d6ddb1dfa8e02b1d46ce5053205ca35b750b1e
Date: Sat, 13 Dec 2025 01:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765590773
