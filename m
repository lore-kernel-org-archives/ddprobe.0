Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54FFA30C16A
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784977834; cv=none; b=QhUiMKnyYOSAc6dnyPy0V3163bjTPZh+dPKIltzYYdE9za9FYXTZRlzDOyyAViMA6BF8MOx25Ttw5x7pe2LkGy03B6nnjbyBI+3DOoWc9vZ2dDcsLfuyuOdLxyA8b5D49/2KDvMnk2p9LPSrjAXXRi/8/AObeWC9bTLstxz0/Mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784977834; c=relaxed/simple;
	bh=498jVPG6CsbUm3XVD8ORcOiDDmqn2Cvol8MJEnaBz68=;
	h=To:Subject:From:Message-Id:Date; b=mTao0k1QXQVAEQYzCj4P+7u4zArHCGzhUM5jWNWP4UFBvm/rR8QaQOiZIW6t5KTwlhVs7/4yXqP1jTN5ftkd5+DUADz5GAvvTfU9OvBqXaijvFkbJ2PmhN+0sxuWzTgXhx9hn6UcGp2bWlTEaXARHjJY5u9Da71bT4ilfHLTTLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UlI3g8Da; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UlI3g8Da"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB48DC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784977833;
	bh=498jVPG6CsbUm3XVD8ORcOiDDmqn2Cvol8MJEnaBz68=;
	h=To:Subject:From:Date:From;
	b=UlI3g8DaQfEWjCkNVkA24/OnoxMo/xpAlgc7ZKVVSq/zHN3FPdroweZOfLiGhTKyi
	 r0qbY1PDjWWIiaMooHBtkiRghel+StUO9QmQxv6u6UjRkqkQuae/pVV/enplcaW3mG
	 X2QuiS5RVx1ii4k11mrdj7fGsP/vvYcV2NWuWM9EC2MSzPRGRBkQC4uiaOCGOJHcE4
	 qWO4DPA0XafIrTxaZ4HBwb8a0puGgNZQGXkJexC5z2bUHvT2ZfAxaGHede/cnA/ccz
	 bAUbS0qMq0byC291d4DSAvQ4UTXQ5hPYqPyp/fLdW5/k8dNlEMZl/+/Tq/ggYteajU
	 nCL5vdc/veO/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89C4C531F9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178497783368.22230.3440351679635115916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1adb33222431ae4cd4487f4aa560329ae904a70a4a29eeb19cd0dcfd5e7bfccf
Date: Sat, 25 Jul 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784977833
