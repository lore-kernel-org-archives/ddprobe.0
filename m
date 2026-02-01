Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17943223322
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769958834; cv=none; b=ZXaOHagOTiqXgQOnM0t6sDQjV/vPAe/TBTy6F1fTIp//gL9TSvgnqeREiqkH5e779FFtPDNdbNT4VW8sN3YLr2GTYmJ6/z3mIa6EMUQhm3ivbs/TaE2GQ1U0CV00QeYCrGzEZmiO/yvGtmzKhnI90RlraOnIPrPK6osOPtlJL5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769958834; c=relaxed/simple;
	bh=jeNr4n1H2U/5TMm+IKKxVEY2dXLMn+olkhsyvcpgRXM=;
	h=To:Subject:From:Message-Id:Date; b=dPmpvUn02CbLD5W/i+3puuxFiN7VyUztYpNmu3cF7sVtnt3mNHKhByoHn5upJda6zEAfEIYsZpb26VkM4cudDR0AVsN50CgeMpVVS9vtxRZ4GqoYyey8WO+U5mvyeynGHiFIUMXILvYpyM+OZhXIUPGUEfiPIX9v9XMQXnlW/p4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vKRXEw5x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vKRXEw5x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACEEBC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769958833;
	bh=jeNr4n1H2U/5TMm+IKKxVEY2dXLMn+olkhsyvcpgRXM=;
	h=To:Subject:From:Date:From;
	b=vKRXEw5xFgbQjiSlvnI/zTJ9cfVwlheLGqgcS4YNaVhPldzkldQEihYckkWRJOGbU
	 RHyBv2VSVl5dZ525bHF/ZV9nycESD/s/ZOAUKVAUftR1M72L2FXQitFFmmGdL3WIsA
	 DbVnTe2sMy415FG8ef6lhsXp0O+pdpY7WiUgm672yeZ6oLUCUV4N8rRttp/vaMpYcL
	 1oS2Gi0RRB4+c/509dbhvHLP4jlutQ/Kwoo00Wq97aEd1IBn606iRjbdSgLRsaqMSz
	 7oO4rDOwSU17cDz7lJP9BhYvQHbPfm2R/t0fhQgFbpJ2n8RBm2tmoSjNVjGF/iKmd9
	 62vEXfIp9lfBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F41E65293
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176995883360.18460.3995454665837278484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4feac0a055ea2695b6b0cce6740807d88b4adb62d24954274d7ed65f699764f3
Date: Sun, 01 Feb 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769958833
