Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCFF3310623
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760605193; cv=none; b=NvMKpHz9+26KdtdeoSZdEXyP7ZDyEm8BnjMyyepgOtVlEgNtmU6du7zYRGyyx8MZbB7R+isJfmNoeL+DhMIfDupOhsTYkBfN/4sKJGho34qoMs6XXI+PmY6vdSezprQGHFiOwv0jtGrEeFPMwVTVhHwhtZrFVJ7QzU+LxkWAyjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760605193; c=relaxed/simple;
	bh=9XLOAau6efqOMqqCWxH3Bg+iOrC62mz2Ypex1YsgcyU=;
	h=To:Subject:From:Message-Id:Date; b=LIFH+YzrCBxgVuoA+vCN1BKQRRnEaJ7GHUOViJqTYPJCcWFc2bOuJlcKuF4C1MPVju8G33KI6WMv3mqW7u3gkzMMUueq2RCL5vM96wboBkaosOj5RCQ8SznR/DPAoeUt23u/7mJWpE+M39dX2BNDDzdJG1r1+cnAgXw1Tzqh00M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZCIhSkuI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZCIhSkuI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D01C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760605193;
	bh=9XLOAau6efqOMqqCWxH3Bg+iOrC62mz2Ypex1YsgcyU=;
	h=To:Subject:From:Date:From;
	b=ZCIhSkuII1wVrDJqd84EJ5WOiWY72i+JAHXtdV+fLZ1XXY948dwbGGmuoclHn8NhW
	 awclnASwhEv774zUtYQgn2sImR7HBC8qNw3IecCayHyAslrqJjDzT30Db4fuVRRbnY
	 30SpiG79EUHZ0sfUtoe+xJuZRPo5vFg1Zoto4jOGkXVPaAWqTZMjEWZ2tVvUk0K3Mr
	 O/SOpzAS9Ouarg10ZpB8r6+aWkGp3pIMKu1bGgZEB9WxAGIxXpE1msUB/8JBC1S/Cq
	 WerPUeg+VTDu4JTt9WE3X1kVk/LvGbmex7rkizJZBWlRKSk2+f5CFXQI+FWUaV5ALe
	 4yXC+moFILRiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935F8CCD194
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176060519358.8708.12226346007951536295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d59dea5073aaf4618f4f209853ce6a3e00a53205fb8d1e1427c781399724bf9
Date: Thu, 16 Oct 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760605193
