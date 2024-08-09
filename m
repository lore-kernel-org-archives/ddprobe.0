Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB848F49
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723165554; cv=none; b=khyaTBGUfnyULAwlJ4Z3VTqlX+BescaFKchDdULirjkWNAOl7o0lrAV4azkhMm4kcd7Bn8NU1j17wa1Bo7gnTWuuUldshtt6FK6gcLi1jXgi6zUb9fxqwtqYfCCo7qjWBmkuQcJIuibSVGCFnVVTzhGVDwecl5dKU/IYjO7sjFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723165554; c=relaxed/simple;
	bh=TWxxDfUavkUICU7xfXP3hSPllHMzSIEgOgwZvq2njNs=;
	h=To:Subject:From:Message-Id:Date; b=gStF+w1AF4+9qPvJPqIvpMPusuaoP3vCeIcmg+Ljl4vVvQwfa3hEMU8zULFFgyVDdga6oG9ZNCfdE6p425tmgcpUsKe5WHmHQNytMB3eQ13JRVyY4iqmzt/HDdEqHvb0oxyksZDp+4i/Yyo+KDGa6n65WVh4VblwNDCoXOVMNKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oSoIGLvQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oSoIGLvQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE5A3C32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723165553;
	bh=TWxxDfUavkUICU7xfXP3hSPllHMzSIEgOgwZvq2njNs=;
	h=To:Subject:From:Date:From;
	b=oSoIGLvQBmopmL54SQBJfM0KALQHBSDutNCsiYwHmIA3vThCKwPdtLpkLdR2qKf37
	 8HRUllFYdI4SU33c6VqrxLdDypJYSuGFBx9WKMGm6FSIp2iMVzH6elXK13K/30PWZ3
	 BKFr6dYLmy13Dr5GGUGkSnWStASP2JNu/zht2fquWS08tNIm+jozyOgt60aijgcBcP
	 IOIR6zLonmI1yo6jEKLir+BHSdobue9AMprv3UuDureL/YKj3bLbiwA15jjMJ6Isff
	 hKcymGXi7GtkNCP7iTWt+Dd1KAO+iRDwK+PL1RMw+euzxLKNiUsrdwLocNUKLNCaG+
	 GPRVf7pPCPPmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D86C52D7B
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172316555360.19711.15871984150787083576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a456fcd23f18c13cfde981c44056ced352c7aba6ecb6d983a13836de6d616963
Date: Fri, 09 Aug 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723165553
