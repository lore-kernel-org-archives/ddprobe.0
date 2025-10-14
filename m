Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A242F5327
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760449194; cv=none; b=NVKKCXoeqa0xaZ04mUc6Xddr40Nd2/TmSGJBi+mHqh9FVf1Zq8IXFeLNcHPi5P0skIyBUwfIlfg/OQZjsyreMdAnE6inRosiFTXa8qYKzw1N1Dtinoj0zmiU/qK3Bg1T4zShm1svg2wcA6CSIo4p9OQRqAq5ZdW3L4ZEeTSvPlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760449194; c=relaxed/simple;
	bh=FBFQvgXNRQkpva3IgiRcRxjUjdPEtZZwFIZxKg07gVQ=;
	h=To:Subject:From:Message-Id:Date; b=WlND0mkl33og9AlgYEx4ov8MluZvEohQgkc/5GJD29f8iQQzryhBdRMiGATB3bzV5gb//+PkQJzP4ol1BsqAsFa25McmglOi9zT6LmQZrmFvyVYEWkBbAKXhh7yU+pCzIbhXUBzM5hp/QReadLDX/TSHSvgPiPO1lyrEBGw/O5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nyH9KvUz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nyH9KvUz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FFAC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760449193;
	bh=FBFQvgXNRQkpva3IgiRcRxjUjdPEtZZwFIZxKg07gVQ=;
	h=To:Subject:From:Date:From;
	b=nyH9KvUzgSr3y+1RsjONvlZGuMqaKM+KSAMrt798JBhf3ETmbtcP0n789cMFkItCv
	 4lDqDCPlf5LKP0D0bUoonfLMm6ntn6h1YZ1xwF/VhPFeD+Hr0dQebjAoArfC5RTdAL
	 V0J9UKInZlOG+hikJUD/9mmS+Rod5nLCIkeRg+UHalgPoUpWOC513NYsZGT2Ol+fJW
	 oGtrvHEIbjC63rW3JpD+wvY336Govczp/qWZal5STXptJudykgRy4YH0I54FmlZhVk
	 CKX2fOvYaeUxBU9Uu0kopUvw8UIyot1A/f7fSXC6UK/eSDNoLtM6dMysnMJ5QJ7OL3
	 eyfVo7jwPx2og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9226BCCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176044919358.2185.17016862188287729596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeb433c28a77024ee4cd33460a64e6c4002cf9500e9798ce5c4598b90f99d52c
Date: Tue, 14 Oct 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760449193
