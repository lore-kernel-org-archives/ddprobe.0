Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B70A403B06
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 23:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783727314; cv=none; b=lSun2pQEW/nFw1GKUr8QEHfZmCRccMPWBICYDaibm7aDLGC4Q0soC2TeRQIO7ZPca+v2iU6uIf4DQxmrZv+5REEtcDSNR3K9Dnp3uuZWMCMDw4rgfmiOCmrqZrfxIPiDvFl2fWHNjqQHHBvzuDb4ZysBL3mUPqLoEcKd8RsdYUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783727314; c=relaxed/simple;
	bh=yj1tFJ89deZpA9j58WH9U3g55BCTLZclNx6BDBc9cOg=;
	h=To:Subject:From:Message-Id:Date; b=An6HKR7h+bCqMVi2ShlrcH71uejEmYQci+GHKEacTaD/W+3Dj0or6f1qAf1wQZKlEBsyIaa0x4o8NUOuVG9satYM3XP39izmE0aBOln+cOklXjFmVh4WFWckqlGUZ6OsEfILm7u4nIEydIqRK8ftvYe+zvqbahS21GGg4D85oZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mCOYF287; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mCOYF287"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C920FC2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 23:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783727313;
	bh=yj1tFJ89deZpA9j58WH9U3g55BCTLZclNx6BDBc9cOg=;
	h=To:Subject:From:Date:From;
	b=mCOYF287euYs1OnJ6bfqIjCmil2CHfNEKmUxLULDQSHjPwJNwFedizFpRbg+le37m
	 xoR/6+kNhdY8g4h0OiDE9b2iAEa7N3a8FMs9hGbBN8jBi3lUFpMKG+H/asEANDKKKX
	 ieXh/9UCSoeieJ5SN2DYbv2VwJUsmDBSy2SDux/YS62zdaSKxblEGvG0FEArwBH59s
	 16JYGBAeVhG80J+PATiax3SYjl7O+2lxiA1FwBskJqBP34dfw0uiqC3FboG/PqWVSZ
	 TcLvgvL/XZBq4I6bXEtuNFLHSvQf+FQn5jPZfu9dAap07gsHCvJ+NcHp3Gvj2zT9YE
	 P1fuApnfvauHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A798AC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 23:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178372731367.6910.650726585130204801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8d2fd3d7eb6b9160f256b148e0105b911d0738a4170e858d7e6eaa6e69e02a9
Date: Fri, 10 Jul 2026 23:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783727313
