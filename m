Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C91FC2BAF7
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754222393; cv=none; b=BJCbSMko/pdlV7PzaXyjdZtg9U0+eV1NffwCscv/LAL64T6k52CE07EGO72muazSRTcoK592BsLxROzx7T3AEKgyPpB7aE5xjWtMtCEFzSXDmxYEZsNBD8SPucrw+MAUvQg1R1YgpyyCs6o5jlWCMc+FoRq1Bje8z8dtUKivQhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754222393; c=relaxed/simple;
	bh=CqqoIr2qJxr79z3TWVOOUu5lySolkzd3ghQ9vtfvbRI=;
	h=To:Subject:From:Message-Id:Date; b=jLoiwjakDDZjMb8qHr7/5/lyshJPHBR5jMKq4L2dQj/I4kPJ2Kuoz0nPtni+bnAWn76Ijaplg0f6+6B2y01o8ryKY3vhIKRHQdVC9UyXc3Sa+6Vjv80WF4bsfmIWHAsJC2f40nB9ma6vUR7McxpWp8b8a3/9Ri6FqIqhhRDwIsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wl4ulzzJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wl4ulzzJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D470C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754222393;
	bh=CqqoIr2qJxr79z3TWVOOUu5lySolkzd3ghQ9vtfvbRI=;
	h=To:Subject:From:Date:From;
	b=Wl4ulzzJmaCwwVWHTKKAkvERpeqKYYqShgozUyIyHHSiC4AkuKRf/XzyWeSm2zsyc
	 KRje2m/hy3eXDeWYXB9mvF9tGAofrwkCLpMPVw3fBrcwAMDHcBqFb2T6r1aB4P7vPp
	 yYu7ZLct7tkKtHHSB0RsxA9q/0tWdUDN7bPd5bAEjDP8joB0t0HXV/rhNAE96df7Nk
	 fNT7VDS0E2GIitmTFB4bEozBFTGpceEe/mqCo33UmljcW3ThV/XRTMVGErJEJV87fR
	 CTcNE3r1HAlk8gQjP88Lcmae28r7LYpYc7Bhrro96Ln9epfj86iGIAjGZRdOmKnxti
	 bJe8inNIqq5DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECACC87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175422239357.6332.13466791534000837852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff550c5d9447fc7c224c108bda87f3e85c84e3c38dc0993c41e81bcb06cd1d0b
Date: Sun, 03 Aug 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754222393
