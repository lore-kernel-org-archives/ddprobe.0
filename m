Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DA7283C83
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 16:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776617254; cv=none; b=SJqPKuF6PrS2EbceQoLyl0wwGrH7rXEaXtlX6WejQ88UbnMxjcoRwrQEWv8W89IuznFd1MKS4GyMkFRGXS/KtLYFOrUGxfoVCr/pHXJdHhqDgqsLbM4LNpukVve2Yb6r6Jc48xg49PZUVSAHHO03+opoF/2p00aANzvDUU+aosY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776617254; c=relaxed/simple;
	bh=xRWI3oPeabMudDTD7UW9QxAmtwGadmJlFfG4qTfS2PU=;
	h=To:Subject:From:Message-Id:Date; b=nkL6al9zm5RG9Ga3bn8eHwcFXHkSSUmZgG7aW72k2Oc3mdL96PYEAQu0iRnpicdLT5zcXVkvLPUo8ZJKWq8YM5+r5wl/PDNoXbO6Wby7UwPyShCFEKZ1/y3paaoJ7Z7+JczjM6w+9I8PTblQqySEjfBInvuc8eHlUHhc+bHpakg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZqH4Qjw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZqH4Qjw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD42DC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 16:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776617253;
	bh=xRWI3oPeabMudDTD7UW9QxAmtwGadmJlFfG4qTfS2PU=;
	h=To:Subject:From:Date:From;
	b=oZqH4Qjwv938CR+tyKq3PAiB09wiikI0jruBJCuRzbIVnGVU71pVjX/ZnRR5/KWGS
	 bNV/sBLY3BGDzJsDV23vidZbW5EwGfZukEN3j3SKaNVwQTrGAUYTNWG+GvvwA3JEff
	 aG/wpbJOenVP5ZJH+IGHEPY+epLC3HPBBS2I/1uB4dcB9sWrqMdTfhLOWKHJOZmLxl
	 9mk30DxDzAsxJBS/a5OVWYa6L+tKNt6eNekb9r3AjthPArYXIujQRxpM4qjr6oOUtl
	 889HU7JwF4Vqkv+3eGp4FbxGTORf7z7izALeJD15CT792ZgGRNlP3j5SEmX/zmY4AZ
	 HJ6lgOmnpPNFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFA3EA71A1
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 16:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177661725368.2105.14949746507713194913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55a46f1570333daa0f63d639139e015c446672b5d374a4c29fbd4de840a1ef5f
Date: Sun, 19 Apr 2026 16:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776617253
