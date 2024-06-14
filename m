Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541664414
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 00:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718326103; cv=none; b=j6Z4Fr7Rq7/PIdgjvI0MxxNmb51803Z712nf8g4S33cxJLWFoDLJ1v6TlmxhB/gcEJl0f8i3/w/q8OaaAWHVXkmaonKDhj1G+7RECrDPPnX4zYrhRGD/rM3ZX16hoA3xivBBUSV8Pwg0zLzNqxuiBUO6Am1hPANcOHHly5X5Nv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718326103; c=relaxed/simple;
	bh=XH8iW2v1S9bUh/IJN4vXS/QME+YxtzGjeFtHKKj5EBw=;
	h=To:Subject:From:Message-Id:Date; b=A8VVtQea/1BsQ2Jw4KlE04gW/6w+YcnoKng2TaAf1MWO4a8A6aY1IJq8gA3d01TVL4gRrlkMELNQ1HxbXUci176DnjOKhgNTrTBURNbqNs1eiSe+KVfO1/n62E/lgHBj+eexYA4PtKO/e+OWhH8YFjjD6hndS3iT1daZxonpPdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cHm6RkpR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cHm6RkpR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F7FC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 00:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718326102;
	bh=XH8iW2v1S9bUh/IJN4vXS/QME+YxtzGjeFtHKKj5EBw=;
	h=To:Subject:From:Date:From;
	b=cHm6RkpRe/sYvyYPm98I3X7Vqd/yKXsW+rkFtJjERA327bmhdI13dxeGTOB3FhWvR
	 76kjNeGbPxz+vqNc1621akJvYmKNZx8M1kkOmErNb6u3u1UZ1hWY2PcEJMuOCAKT+P
	 dGXSSQc0ctnopgceZmh71Bs/33z31nZJIzU72gvfje7BwWFPrdIHePXELOdyY6HvR8
	 2ZuzevYRvrjl4lPOTkkil/1I3bOyQlLfV8Jc2ChShhoua8F3aeE8T3sftkCHREhHoF
	 2wkmzMxEMxbMwD0ilAMtx05S7uszQxKeMCMZ6Q0a357IrwPMG+8vtZwPP3hmzd6U3x
	 Nvl8Qr33UPb/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB784C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 00:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171832610275.26297.17233680637710572984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac8a531d564c6296afd8d8ef31ce0442097c6254077227c49b29cf7191169c11
Date: Fri, 14 Jun 2024 00:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718326102
