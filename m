Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F01F14D2A0
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742182794; cv=none; b=TvbZzea1LGSiwsFC3IBM1R1/HGnW3dR1buzRsbiCrblbwTyBMdG23xoFksyolgj1mSmR5ALXhQqFl8zwadfZ5LrawbSyd0k8d0fKmU/MHfa3SeMSZewtMLBOCo4n34Fhk6fs/e4Q4bAupzkdYWeOc8TuCbzFrvMxq8cXkPsSkYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742182794; c=relaxed/simple;
	bh=P3Kvy5qXyE1DYzvoq9L4PjEUKPHL/u01ZVzguyWTKA0=;
	h=To:Subject:From:Message-Id:Date; b=axo6B8prQ0mW3K8mXrY893epMslqbLGqpmA5rVLFxnhmekpgQTTFG/mnRUdHWX+SQj3i27oOvhrCZ1jss37klL5TWYrf8F7nMmCdHT0gKKxrGpNWqp1Jc/NGMMde/etaWb+2EvcuOtukQdAEye5kWxeOAWbCAvNKe4rJ0PTE9nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L+mITFWF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L+mITFWF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE6E9C4CEEC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742182793;
	bh=P3Kvy5qXyE1DYzvoq9L4PjEUKPHL/u01ZVzguyWTKA0=;
	h=To:Subject:From:Date:From;
	b=L+mITFWFIVQkKga+t3o9XbX2aF4eaML9qk6EHTYBzfmyeMSqYrzxJUJCs3nLeok1y
	 Mcslnb3zdkcvT2h6aXUElRssnY+LmVNG2QtAaROqXxcchFG3qXFDYDhtD3fWhlAvhC
	 O1nwRHrlihU7St482Kus9+V8dtzxbSmCnBwgN85RSjDNO75Rq0uLE1vKV/ongc9oGH
	 0ibXtLDE+EDCOklBbildVCK4u67Qzs0vxASPwUvVcL/xxliNoAUFzlWi0hCtXtYwZu
	 9IMy1mw6J44zfjpqdGiEfGfrEe40x2WLO0B7nSQkvGU/UEgoEpT6pdE3F5HG8F/Kwy
	 qQOAgENQM3UJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FE39C282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174218279364.6742.3643410518462372192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3146aa59aa6e2048db41d1398360a724f75242df61f1b686347a62678ff290fd
Date: Mon, 17 Mar 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742182793
