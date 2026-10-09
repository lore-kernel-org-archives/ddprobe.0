Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D115386C25
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791571834; cv=none; b=tkyS8O8QtnYTYfqxcKRoIGnTTFWRV7JE++0UfEYjviA+F5RwnOpkiXSK4HMMqDP/AMMUtXYJ++j0g6wdzfg+ttNltOwU66wgL7k9UknBMEIsPtbWqg39jy2/+MMh41UD35Z0dvFXq7QoPTH122PTPAXspI30gSmISbPHOozLNsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791571834; c=relaxed/simple;
	bh=BX7rH9xsD6gX8UBSpcHOTtXwaNm97MISuwE7xRmRvoE=;
	h=To:Subject:From:Message-Id:Date; b=VxowdVZ9DoAVVVLvc6zLZEDAHHHCxwVR8wVhc8Hohe7k8yMgkfadHIVlr6osMXGhrJOKdbOMGmOeTFLJIGpX2NLPxQaFxq3NO6pwkE3ygR4a4Tgcd0vkF3ib5X80hlo0YG7XT/nAHxT/piorW69xk4PfEpy9jjwsvW/8/Yv30TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iyvjYrtb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iyvjYrtb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5F9C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791571833;
	bh=BX7rH9xsD6gX8UBSpcHOTtXwaNm97MISuwE7xRmRvoE=;
	h=To:Subject:From:Date:From;
	b=iyvjYrtb2hHRiIvXP0jNMdEKm36T+HfJVeCtokxZGA1fhxDduvIBOefknH71aYVXn
	 nz2bsKb09VbE59FQPKZvRN3FaiOtl7SYHQ2/pnZUMvAqwPIZpW98J92xdatWRFZSua
	 zUlZRn44PNACcbuhovqqDvhs0/8t+uDPV7neVpEvZHPwdwgHoNR9ymwq2pCVhamjK3
	 RvErGqTjrn+JRKHgaF2muF2M6p4elwi5EF58C33AuUl7Xnt4GQn3xVCFEA6Y43r0oi
	 kjpAwDFe0zdEzc/kaTrwrMdmD2JEn2zhxYRdYRcRwIYRGEIC9oB+HYA07a+Fgd8Msl
	 cQ1m0uaR/qjGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9980CA601F
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179157183368.3709.11937716627155923037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 786e9951f21e90008851ceb1f606ccee262b6ed164f2d5427655dae233242ce0
Date: Fri, 09 Oct 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791571833
