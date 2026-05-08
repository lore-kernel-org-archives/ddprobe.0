Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B0CF78F29
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 17:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778263054; cv=none; b=RWM9Q9fkjTR+kgijBXskCfM53j+t3ug88rpTE4YN5jzfsoOE8sA+nmgbU37bLVcN1CO7erL4ABM6Xa8jk68BtfPDgyqHp07qUCADu88og/okt3y5WOJ6cqVXgaJQMBIxryl845NIQTjM0G+CcNU3iHhHmozcEyVi68srfU5CqoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778263054; c=relaxed/simple;
	bh=kLbj9d3V+853Z2xdbNfofcl0V6j/89uG10UafaPmAR8=;
	h=To:Subject:From:Message-Id:Date; b=Rm6u6uqPaXRBikV5Gp5SvQ+d/E18Xm0FM5rPw0JHCqnWBmbU1993PY4f+wJVg4td1NErHVoFfqVS5VRBooivzO6l20QXuMx331codF/t8Ta344XPZbzGpgyWwhUKh2fsEsarnv0R2227rHEIvR7dZzGQuF854Bd2r0c3ziy+Spc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JpfDxFsH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JpfDxFsH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9222C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 17:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778263053;
	bh=kLbj9d3V+853Z2xdbNfofcl0V6j/89uG10UafaPmAR8=;
	h=To:Subject:From:Date:From;
	b=JpfDxFsHCdRk9HKBvGO3/ei3Mc9LJdac/ssV30V6oDcOq5Fu0hTv4dSqEoD6v59S8
	 pmJMhDmKB7toX5kIHzRpD8hD7EDXsb/LIiaTh5nsUG3P+AOsozc8W2SKPC5022lCku
	 Km3Sxp4MW+jaH0u0GMZuepCXIHjR6ZWlKPVLRSdHTpsPycMccpHc/FeB/MtUab68Fb
	 rLIS4ARGZ3wY6PNdbDisG3pmax1NM9QMg+of//LJO026psMjD3VsZkWGwuOxN56SeD
	 wKg1z0PjsgLiyA9ISHqJtcPs78jmTHJu2eiOcYSeHoXTxKfHzIdHQhltCZh8GOXxQY
	 Tzfy4BkIjKEjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB06CD3445
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 17:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177826305368.16690.8993105751951173445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d852a042a26e4d57d7095c6448ea32784a244502d16d60b4f4081bee5fe8d32
Date: Fri, 08 May 2026 17:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778263053
