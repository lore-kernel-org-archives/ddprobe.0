Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6908E13793E
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 18:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717783643; cv=none; b=dI0zcK6wQiyK0PE3sIqk50Z60GbqtPAfDLOGrJ+Uz9M/pXR8xvcgeph5WL4uyXQsQG6d6Nv6BJyZkOjy7e7NRIHG17xAJVQMbO4/9CUkuPXN6qD/B3j6ZTgr+FR4ZUgqCjuUogD011VclABZLixvfHEq5XaVQzXOjZPcA/AF1Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717783643; c=relaxed/simple;
	bh=nELot7iV6hAYHIodoaBUpRq/ISBe0Wo2O3r8nMILvmA=;
	h=To:Subject:From:Message-Id:Date; b=PaX/H5wz+SWlcHHPrSKv+aysnedN54Ks4rHNCC0mX4FFzy0oQIWqVLzT6QMmepoJVQG/f/LxFfJkf1YLHLOiqhMjj4Go2rI5gXx+GBo45289/mUTc/gjhvP6fslLmUieuDHxysv4mmQtchh1qhLjzzHabfn1hlkzDh1KoxlftpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DNv/jeW3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DNv/jeW3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 002DAC2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 18:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717783643;
	bh=nELot7iV6hAYHIodoaBUpRq/ISBe0Wo2O3r8nMILvmA=;
	h=To:Subject:From:Date:From;
	b=DNv/jeW3Z0tNWWIv2jluCkcXcEmWch4BZ8WBAoyVucS4Jqx4Cwg6MKLwHbvbQwT/W
	 vrOuzpj2uOE88WCEW7HncTVl0hJj2akZIl9WaP2g5lrQ/R27v+CnxK1DAJB4nNE7h6
	 Vu8czEuQuUwApTWx2MYFS+zqzQXGxyrD2ZxJN/TcvlpFUR23zkh5TPwqul5jom5plV
	 NQKebK+lxiKmRSK2/l1U5hUimqCQGTy0PwCs2s9e8zKarMSxcs/BL0BwhIOxwJNFJu
	 iG0jDmBLHHhS7hRE+LKY8frGob+iMq15dXXRadC701fWW7MHTjPvR+JE3nyXAJbu96
	 wX6gcEBYW2BhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0828C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 18:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171778364287.16249.17807715070429963824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d04ac80a7e4be09050b5d64099d649e95a3733592f5dfc7d04e832031e8680a
Date: Fri, 07 Jun 2024 18:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717783642
