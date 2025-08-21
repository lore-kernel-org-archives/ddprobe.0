Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C6C2FB60D
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755788994; cv=none; b=dgdRD2//9nv17u0kDAfOOO7kBGpsSsQyeRemOKDYIntW8Lt/2IQ3x+YgtvuJxthi3HPMDuGJFlou4I7S0t/fRgGvHvqbkNiOnRBl0dj/Br9+D5hW/FbCFuPpCs7lXn49xFlNQqbIfFFn28EaSQCgWwzn4aalkZdmOSFC1fLRA2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755788994; c=relaxed/simple;
	bh=YILWQXybldBGDgj37ljYBQrTq/9GDX9ZoHMSJCio7h4=;
	h=To:Subject:From:Message-Id:Date; b=hszpmeELm6fzpv/0xWTOvBE/+23QXHhmeTqKFPma9pxSSkihRBA8OHKJQ0Y7CMvG1ABEQ3SPHsR6eWLHI4qCC8iKIAT4f8tSMG+Mfiy8FeVx3Vqj2BKCfKH2muszN5fHiI6DFblezHISA4sP9C+lgmot7Q/bcXNCB7ZVUaO43BU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RcPRbMln; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RcPRbMln"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3D0C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755788993;
	bh=YILWQXybldBGDgj37ljYBQrTq/9GDX9ZoHMSJCio7h4=;
	h=To:Subject:From:Date:From;
	b=RcPRbMlnvtFyO3SsxPXflf1u0Wh2bDrl1/CzrrZV4V7bKPc7W2N5lKVioKSJtubPz
	 LEDcnZ2E1tL7K0o9CzJzEdB71+Yjb5PdGYTRTxN5OyHfMdZDm5GKLb/xV0rNxo76sd
	 rm8PABZb8LxdPmUsU4iDvKj+63IiaYtEWVO9HZZpAIP1Y8C6Fcx5QCH0WvjymALUIW
	 AiaV4LBqTAji85vsAn8qVJfiEsORPijBTvTHX0NKAyb6QZegoXny36UkjHJygyKKqh
	 Ww1OOxiIk1OdlOxRDrnMLke1LmHyh6wknHLoh16kJ/IpuQFsQNeyBO+r1kDVtXP2AP
	 yRyDYEza4dNIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E27BCA0EF8
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175578899357.5258.11495028772754302909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2246a98856e229f146214ed3d9b2d3f0cb6ef8e2cd3160fc09ad456db4560ca3
Date: Thu, 21 Aug 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755788993
