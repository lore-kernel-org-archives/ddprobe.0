Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F0B3D3CE6
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 14:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772029494; cv=none; b=NVZhu35nsIbm3O6s3r6QrsR+GJRSkHIZbpJlJ4a7YLcXMCw8byQgDPkS9+yAvJa31A9plOYKvrubUM7QD7LRJBysF3/SJVt8pT1l6Q4REgUnqS9hw7rEC/AuPx8fEOZ5yEI7UTD5e/Bs18SfwaIspTAjVeWWLlfoaUxuFTx265I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772029494; c=relaxed/simple;
	bh=NjbnKFFbEHBB9zfGtY/8/9yXUg1Cdk3B74wi/Es+ZTo=;
	h=To:Subject:From:Message-Id:Date; b=Cqqi3lVH3ocnYdFlzfAxlDHR9xpYrZtrPfE/0SlLOAQWL187EGBWIRk7nuYp8HAUTpiIkLOsXCHdXr0ncssQlIf27gAKcHa9wgESnUy9s93fGZreNH8PHYOGB7U3ruJmyM/MnZfzzL2aj92LGKeICBRLlwmEdwkHE/5/lyA7bDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZFnVl43C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZFnVl43C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7452C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772029493;
	bh=NjbnKFFbEHBB9zfGtY/8/9yXUg1Cdk3B74wi/Es+ZTo=;
	h=To:Subject:From:Date:From;
	b=ZFnVl43CrI5jiruNcCJ69oUZzPGHDI5nCz7yDiN7wq2U3rx4y3ZwfeoT4NEfFq7Jw
	 NX32mCoNs+wayrnh9EiB006FsCUogK2uj+gy5u0zOgiIkRXmsghFmoCA9oD/00F79z
	 6ueruGl8g+2kaCIwzbiQvtgWPmeBsL3D9PXmy1w89WgQLtZvp6oFB8p5VZ0anYIAJz
	 QEslNWPcDjNvOcKhBYZveEavw3ClD68vgs3R3ASPyRak+WxuH/534PG5CEOgu5SfOt
	 vxn7My94m//E2CCJvE1f/zLRhnWHkZBn4g6xIVFBm+DgirppP4Zbzp1uANiwq2cgLa
	 9R1GnljFDsilg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1688FD3763
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177202949371.726.7422881315322183697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c7fbb7dedf6675d5bd7677bbd9126179046fe22643fc4ce456a6a14fdbf644b
Date: Wed, 25 Feb 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772029493
