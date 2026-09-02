Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD274A5C4F
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788361834; cv=none; b=S+70lrUSK/nBuLgHPS2ja710nrYct3z/Kn8SRFugihc0gc6ZU6OGEYnbzf1mpueKsl7pq9p7qzR5tp5tSH0f2I8Kk/6XSIhFi4bXJQd3P0BTEP+2pnSP2E8M9Zm7OuWKQaUQKGG8ayhg08Pv1sbzndyD3iNevasZNtrEd5RG9FM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788361834; c=relaxed/simple;
	bh=ArHr3ofQGxLxUhaKEi8bHPZ4ErrNGI3Te35EHavZg84=;
	h=To:Subject:From:Message-Id:Date; b=UfL7QcA/5RNwornltmAOuBJmFqaI1vDpR++DEp8qXc5ooa9VlIiiqkXElkjRhkq2XMbxXnMpaHiKBt85ISgR9Ua31NbjjcPZFB/geGLXSwwZ4fAfEjSRB+nR3o2VKRR0LtgvJljT6YB8I+CpI1KKDug52+FOEl8ixQKVmEFnfvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oWXBg/Sn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oWXBg/Sn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE90FC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788361833;
	bh=ArHr3ofQGxLxUhaKEi8bHPZ4ErrNGI3Te35EHavZg84=;
	h=To:Subject:From:Date:From;
	b=oWXBg/SnvKWibpxYyCC+OGurTF75xtwP6HTvKiZmCkXJuZfHCu/Y0eNRG+dwDvyN8
	 F9EmfHtYem2nsuf79o4ILtwCQeVxLY33YmTatx8O5YS4eh/4Musx6K+FIMcwZNjRqg
	 5Kd/nj38b1bANa0N0x5UQ3RX6jYJ+RDSvIMx5AYhh6zC9gA2sbmOApMOL2rcRmcb/T
	 vgyZs1IuVgzWadwcGmmVm6BVrkL6rY4uqJqLa3j4ngsjkNqI3EJME+LeQp/AY1Ger6
	 ZrD8Yq0iSANr6j1vWt5S+zTS44yfkNR45qINif9UKE1L5Ot6xMSD5UFcNvXaxKkvEa
	 cV3QNXBI6QsBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C16C624D3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178836183368.22939.1116580698623731872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bea967011f8f71a694cbedf66cc679aa9195d77e5136edf0b8eaf936e6a4461
Date: Wed, 02 Sep 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788361833
