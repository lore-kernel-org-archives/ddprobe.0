Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44049213E91
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744237795; cv=none; b=aE4CN8RMKAryX2+IalnjQ8YsMSJXMPgpbQbD5Z+RKGgGSVI2y4qx+g+4JlA8rWYOET/f7xQ463qZ/VHLCDj6I4a5UTgJvv24rcRvVf7P7slmBJWgJDuPFvKrWahw+x87LOD9/5ACVBjkcKVnF8HonpV+Y7SUqhkZzNX6VXdGGs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744237795; c=relaxed/simple;
	bh=I7Fe0CRwp57FUSaDnm3KRNT0KhdR+HITMuLAWZjjlvY=;
	h=To:Subject:From:Message-Id:Date; b=rCf91hcYQde2+xDuMhujuveLfk2NAC8ADZZl1dN7uFCdMOELg2d8RG2z3SllK5t5EsjQj2sl8wFUA3NcR5mmB8KkxotLdyXUKWYhqGEkehcAjcVC62OUta6cNB+6MZn036UVhr/tgVT1GNSEr5IwfQpZXuFslguAfkN5hZ/jdV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WI1tCt3Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WI1tCt3Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDCEC4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744237793;
	bh=I7Fe0CRwp57FUSaDnm3KRNT0KhdR+HITMuLAWZjjlvY=;
	h=To:Subject:From:Date:From;
	b=WI1tCt3ZN0ToQtS4lerrwcBMoqbNo3K86dDZQkiB5ghGLodkLZS/LhMdJe5GK3on2
	 J//qed0VebmgFVYn666VLiMG2XSlw6koKol9HKaSvuqImj0mj3EkUnG7WD5MRfwBsX
	 JrbSyksIzoM7kAPFpv6AKXBYcr/sKO7Mzbj42cPfNwfzNo78n5sPDyNIEK49IQn5/m
	 1nPuUKgYratbvWubTeqV2FGsDbOVTAnRzlV3e0wZ349wTBEDBn/9UNP06WApv2J9rz
	 UdcHnupNpVyfjkFlGFujyyB/5Xo0iTwQE8fM26XyNpyAEKWcw57MiaiFwXrdbMyFii
	 iVYwmAGFuznqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955B1C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174423779359.20166.17524763835793873480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 267a9b760b0a258772eceb03a196a54466ab3523811292a2545e0188b5bc3fda
Date: Wed, 09 Apr 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744237793
