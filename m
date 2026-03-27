Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB91F37186A
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774583093; cv=none; b=lSDf3BsnjdwqUz41OLFXkLai2A/6gDw1hDoSUMgdpZs0lh6cUZQcDp+xVWmLesqvRNbPvDibf+t8Db/BFqLe/Ji9fqeE0/wkUujSYU7JgPzLSciVdC2ubv1VCMEK1pRos5d73xvnPmBuEpbWt0kdIfUAqyEWVnSEGvIKAF/+7SM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774583093; c=relaxed/simple;
	bh=iBX9+j5EHoRhngpvKu1JaSMiJxo78KxcIvjZUbf2aW8=;
	h=To:Subject:From:Message-Id:Date; b=Vd9II53dafeNY5eIbKm8PNDi6UXOKLVeLcw9X+flerMg/hw54LnZ6wns+As3joK5OXw3jrUnOTZAUVNoz/9QBDA9DkgGJ9rH9CSh6Oodevul491p0uQhuJHYV5yKEGDLvaBgErg1MF3Qja7qrisdEFeTyVaKZtefLQiUw43LXG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kulkJlCf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kulkJlCf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A742EC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774583093;
	bh=iBX9+j5EHoRhngpvKu1JaSMiJxo78KxcIvjZUbf2aW8=;
	h=To:Subject:From:Date:From;
	b=kulkJlCfS/2eUlIQMj73hqgWVr+pcarNB4UF/023W12cxgwiqIiPpQtPpHACkHqlD
	 1+YqchvWcurlu6EOjgku68WERHqyEibI9CPfe/k14VAZe0c6agBwMkgUmvU5K3HpRe
	 tNCq/bj+eQ10wgNCfAII6nNuDgzgwkG/FeBOwT4+RxZgw6o5bRF4kAanDR434qyztu
	 1szkwna+5H5Skp6DsjxEFcnimRsLbUP3kwkVzSj+hF/dMvbnItZpa5FDQpy3Ewspvu
	 RUbqM5F/3eOgEr12VWWBs7KHOD5jlTuQ7/JnDrh/LcvoZt52d3juC2/bP0XlncNNg/
	 Lr1WMI7e7YoUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9353B10BA421
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177458309359.1982.7532496506962357901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aeb380d876a97520dba790a9bb5181dcf8b19b3d079fbf3b32fb71777e16e9a
Date: Fri, 27 Mar 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774583093
