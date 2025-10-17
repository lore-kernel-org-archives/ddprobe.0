Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2460033A02B
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760699394; cv=none; b=EC4Mk38FX8MumSSqJ/8V09mbuQr1kg4qxZwHUxEfx8lYQK8wgZoFiImGzZVo5pYVJFPcRpnOD4OFovVnZihENjSg9MNUizHNFd+Oxld80NAcRqTijONSJ00a1mcEtKOJJGotyyqHakfhiqRZHE9SRWn4mPVL7sOhONZtIBvERDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760699394; c=relaxed/simple;
	bh=tDUDcP7ifJzD226Qt11Mvq7uLQy2RjWQQSBoSTSO/0w=;
	h=To:Subject:From:Message-Id:Date; b=WyrAc/HkOFCg8TQt0hqb9uQ5i1sfd5ZQ2Q3dv/EWrYpMjZBV/xmyF9AZv9pJJDtiDi4eYxElz/+HgHHj+zXA6Gd+CsC9aYj5kFuKm1qNzOpBHa4fzVEdqr5+vw2eOnbtOCTfogC5Naog+gVNWwYAxF83HfUnyyDdcdz042LQxaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LH+++LPQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LH+++LPQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB7EC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760699393;
	bh=tDUDcP7ifJzD226Qt11Mvq7uLQy2RjWQQSBoSTSO/0w=;
	h=To:Subject:From:Date:From;
	b=LH+++LPQA061MvXOB/I3vrfcbntpVybN9A/EewEeKifBemjRjmWDt1N+iQifpVRLi
	 ZMDj9L7ugIWkbBSstaeUmD6uomMb3iLZhneg/dKhdyyu57HvS+JqHaIlejZBGNw72n
	 CRs3zQmDnNWTUq9bjKTUJBN4K9F8sYuLbYWzTcZ1l74sbRAMuijh2a9jtjQjUDZZEX
	 tp4rWvWCBFOzmvBazwiFJFf6zu7ai5hzvuull0BSh/6rnMkQ08t4a0VCu5d6n9A5ya
	 U+JwTmQ6sSzWIvmaxJJ0nfNp7F8UZu1EriQ+de/wRIr+78I+nfF42dlLf3G2kmvmfh
	 fTDScj431EV5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F867CCD19A
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176069939357.28556.5915041304130959235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e473ecd29d0552f84f0d5d7ec7501bec11b17f6de84a315e2ef5110410b63ffd
Date: Fri, 17 Oct 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760699393
