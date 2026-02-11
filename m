Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E932C15B5
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770774834; cv=none; b=p+t5DMIIXrU3iCeHivTnwaVUkSoxBlo1DmAtk7himIj2EOannfw/MaPFPa/GFK87QbryOIxPEeefkeZLMzgcf0u+sWTzEcAZGvYWuadt39pqdjzGyCmymZo8OF96Fhe/ub17ZMSpZL+8VtN5XR0ACobDF9vm9SjH988QLNzq/3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770774834; c=relaxed/simple;
	bh=bPTYgejvJPwLQXb0Raq3xbRHbvkUEtTTeeHPJk8zES4=;
	h=To:Subject:From:Message-Id:Date; b=U0n1sAi2GCEPtgMXabGBHpwnH/NDLsLNLnZ9Knc/MjzKuLh8czpo3Y9Y9y/+JkiJ7KG94AyaqTu9/YwxawybEuKkHnqTgEqdQKI8ZBV9K0xZqSsYwfRCJjGP6kvBtLfRd6O4ZiwFv1b+x39a4TM+g1/QB2CJdjU9MIFU+kgl2wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cHNKhvUy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cHNKhvUy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB50FC116C6
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770774833;
	bh=bPTYgejvJPwLQXb0Raq3xbRHbvkUEtTTeeHPJk8zES4=;
	h=To:Subject:From:Date:From;
	b=cHNKhvUyVSe3o5bTlhsakkHrPHtBOu+RCiL8kiP8DRLtdWVY6tjJ1V4T+uLqgk4pI
	 Nu08J9oOL30L2eYxsH0g83WeDAyY/jb/2R+hEG5XZWbVy9BJoGUmSUAMmdOcYAim+W
	 G+cP7BgKd6l6OUQ3PiPpZZsipfBHZXkUNa8wio5wqe8PUR4k734W8AlWHbX/x/zd0K
	 /O81iONlo/dumbOBVe/ocWtU1HRbm0rUv50J+lsaeYByZNqIL9rWk/pd5TvqstM3ID
	 fRWAGCxFlujNPqVByGZnWnQ5+JAGlQpwNTQuKob+ZmZy/kDlHqZkfHWShj11DWtjOs
	 OYub7q0+pNkdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CBCEB594C
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177077483359.8086.13303080076135840512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c49bafe2e7cf0137cd25bd12ad049071f411c2c22708d688521c18b39a246282
Date: Wed, 11 Feb 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770774833
