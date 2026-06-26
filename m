Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62F4F3F44FC
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 12:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782477454; cv=none; b=NO10ULIeyrm/+Ivac2X2P2u6gcwcSmMUQSBG8+xj0SCP0UczrGD5tcypAEwNTM6KwcCFrOC1eaZ69Id7KO0h8s7RctBTlTNk4iSU++8pWGbbBLqJRoRZnsx2ngop44JyMSF5c9HZnkbMhY+Zq06DS+NmLjqAyQ/3+lXu1iygsMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782477454; c=relaxed/simple;
	bh=UaIKRP2QxN8UHubAhhCvacUXpJD6WJl/mUbGxkEqafQ=;
	h=To:Subject:From:Message-Id:Date; b=USBQX29+9Uie+z60GlFA8Y5kE2yKP2iuofLhBFym1AP7wcuXe7zGgq3R3TFcbP8EpB2bXTV9QaRUAcERvOvdfN1A6CVezCx/qlxCA69ZXL08zBvZy68yTwtnuQvNpz9p+H5NG8mAJYCJVOnBCSJBvqMshI5//b4a6B75UpOXAgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fba3HxAe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fba3HxAe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05C7FC2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 12:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782477454;
	bh=UaIKRP2QxN8UHubAhhCvacUXpJD6WJl/mUbGxkEqafQ=;
	h=To:Subject:From:Date:From;
	b=fba3HxAeRwXGtq8WhwVB62axxjtc0E1Rish52WWqRZsZ+RmKrMeZr0TMECVcazKVA
	 gITUv1NKpIow+YbP2PuzLUbkIb0kMG+6qwbXkEDL9DwtvpElOGI1In7+pw+nVr0T0D
	 BicAbyUGpsKsJ+n0Y7ik8nmW9X+MwEKtSz8w/b7iUwajCXE6hPhl37namtVZAG6Lxn
	 2Jt5rR8x90Bi4NvNVgJAMpseKjF+nMgpLCrub9uxUsIiOriGo6lc+E+ffllAv33d0i
	 vL8UNZh9sAJW4ew9phvffoxZRdMh5S2yXOAPD/sFDR6Gz0fGrqD59gDqL/lDoYd00p
	 2BWuRR0RrWQ2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCEBBCDE018
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 12:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178247745375.14871.16687315390982945594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1c21018f04e4cb03c4e530a01253caf448820c1339eaa18667844b34230d7e8
Date: Fri, 26 Jun 2026 12:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782477453
