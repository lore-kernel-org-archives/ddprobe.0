Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8D32F46
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732322754; cv=none; b=cfyQYdYASG2EwxOpZYL/L7tJLXzZk9WZNFm4aGDh9aT2eVr7pOe2pCdnmTjjSXsO6RRPqaVSnRjjV+pras7UMAQfpCd/4AmeGHisaVeyo0BnzLKADDWhsa1XBvrP6dfmVy3nagNPpZv7o7TLtn27hlh3VZrSsr3UdTmj1H3YN8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732322754; c=relaxed/simple;
	bh=CjNII7s8vYLzslJ90k74OG0B+bF18z0frQKgaQ8PFH4=;
	h=To:Subject:From:Message-Id:Date; b=Qf2U3AWqLxPjlinuyHH62XPNxPdXRz0hvlznuBetNX9EEztZWxS/YIdhbpD1RFCIrexYIdFRaor/pzvgoIduSy8HLWGPmrOrc5RRXFgfVGpwI2K1nSH2kLT/4fbYiG12ZBdOxbcKcJ7lpQuWzaBBq9beoNKnNc2tNfol6rAXgKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vEo4UwOj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vEo4UwOj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC017C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732322753;
	bh=CjNII7s8vYLzslJ90k74OG0B+bF18z0frQKgaQ8PFH4=;
	h=To:Subject:From:Date:From;
	b=vEo4UwOj7YPL6LiZ8LiyFWbXedjOc7t7oo3mZPhiMHzzmLsJe7lLbbzPiik9tAJdP
	 u/9VcKZe0ggpGRNvDtThFfFIwJSwjdDcCH8+Kogxi0VGRT2bJ6x73HagsMglW2L67h
	 Zi7IHper7urF8wQvEcygoXAaOuk8D6EAKpHYoQNSFZrqoxA0YOkUfGADSbjAPXgHuS
	 c+E4tLhiAfQgra5JhotlZZfOrHu5qyq4O48GVh6W7K/qYvYOrN+7YTGP2mtuSX5ePN
	 bZe432mkhqc6O1n4uwWEepDZn+oY2e8CaI2lcy3zgtZvr+S/7UR5lIXQOm6U0CWPDm
	 hwiCnLEnwuvSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A332BE6ADD3
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173232275364.28738.7487734303888955291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39d02cd9a5949803bdcfc1683fca0aa6c195746571f8aab3e936e6471d068199
Date: Sat, 23 Nov 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732322753
