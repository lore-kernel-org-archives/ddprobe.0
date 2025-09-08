Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1919443
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757318394; cv=none; b=lJCshaghANfBwxdNBbTiC4Dn5OCyoN3ylwAjakUaGGd+IzcsHamztiLDwbsPyc0JSq/yn0jr/47MlGt+Ey+KiPtiC/mDw8M24iw1KDZaDmCRT2LeQjtYO+SmVO5Lz/BafUg4aSblJrzP/EQMazH1OaGcr4FFowPNFKvMk852YGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757318394; c=relaxed/simple;
	bh=Oby2Wl/ACX0RIh0FFLuO6Lj82fWtVK8IfAbGYBot3AY=;
	h=To:Subject:From:Message-Id:Date; b=csn4mvogRqK2Eiqo4O62ovfuqmLo8KDUk+hR4iiEYkRRn4EPLAwHS3I1qz6Htgz2iMjE2lQ7/PtWIpOmzLgCxZbSkaaq/p4QMXAKZKXL1saarmwMef/M7yxor4PYPxFSdIPVff5SO0BgAoQXZN1mRbw9FVdxhyyxczffwXpfjAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dK0i6NZ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dK0i6NZ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CFD9C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757318393;
	bh=Oby2Wl/ACX0RIh0FFLuO6Lj82fWtVK8IfAbGYBot3AY=;
	h=To:Subject:From:Date:From;
	b=dK0i6NZ4OUlcEVSaRLFhA0DgI2Lbp2jmRi43LxL+TUlEUO9zHxnmz2+Bd8maQFhN9
	 zAhvqhGeGUvUrm4zbSsHNGI/FJngiObhh3rL77MMvg+Le9NfaBOdPPOgV4fZXRpQhm
	 gl6gHQC7pprKZzGLPd/7ab8gX9obPNgLFYHhtZoYBq4WwS13/VdFhZ9VBSDcMhwmLQ
	 fbCKb+3L8dSNUl2ln/Woq52Po51K9UgkOvYlyQUQGoo87O8mwBznxJpHqi8bBwisYl
	 oQlqtx7Ghzrk1E2/UBv64j4cI49tHg3dENNKJ9DZ63gCY1WxN8eLgvDWt05oWOC2lY
	 NBcvDowh4niFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECCDCA1013
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175731839357.21089.741214748684603645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb9e9990a45d682a5b39dc795396a2532223f9036de8209fa2aabc2e7d9125a5
Date: Mon, 08 Sep 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757318393
