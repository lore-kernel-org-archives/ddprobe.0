Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B92C2AF00
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 00:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784334514; cv=none; b=FlGHuDELTfiF3via7u+ElVTsaOTxnCB7SdQwtl6PXtu6fls0mCetwcqN3gvD5goOjM4Y+K/Rsl0lCQcYS6V5PbMXIjhz01iTjdMjEkRBm5OFrIwyv/xWVQBxYRlxVpblw25QN4H8dxyCWSA9rfVXDTQLtDlyknOLX1r8U5yicBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784334514; c=relaxed/simple;
	bh=qW8Jjdrl+/8s24pTV1ZGV3g1H8fR/lsf2dkIza09xzk=;
	h=To:Subject:From:Message-Id:Date; b=KptBDhhyEpiFR7kYAymGK9CoQjDbhF68hm1IlLauca0H+1I+8qimiBRS/V11wCEsvLeDqIi46YxoYXKAq34DgbdoT3hIYlqsdgumpYRQqcY9n5Io1piqjDiUBYpEFeVA7uHbZq2+L7fmEx6CcaoeTfMzCVgg2WHAmosIjUJtP+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MOl48z76; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MOl48z76"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAA65C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 00:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784334513;
	bh=qW8Jjdrl+/8s24pTV1ZGV3g1H8fR/lsf2dkIza09xzk=;
	h=To:Subject:From:Date:From;
	b=MOl48z7622vtrTqQv5yrRWFqdhF9ZdB7tPnH9NQX3T1kBhm9sVVOY13fy1mfy7W0i
	 mVs/8exkQ7lGxdpI1X87XSghFRgSDX+ygx2lf/0LA133Bs50/HzV+IC2XoQq/LXUtu
	 6YQP2XwWMaorKxbwDZDVSehoCLb2p2e7IOao9G7KEJijerjf7GsM4C1wzGrjWv9MGG
	 dGxT1FHIFS+IyTbm3Mmu09g83FnVOm/lJ86I182DubcOEZzI0GgoewUuvxsO8cnozR
	 SmuBfJuMinHYh1R3q+mtijmKpGH0zeb33NyOHPZ6o3v48tlT9qHi0J6wwj5qKSMBl0
	 laYKpBI8dKfdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1686C44520
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 00:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178433451368.21334.4176076613410452563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 372c99044af325ed26e6ef59418a5babfa3124fb51d0e7aa5a7d25af1fcf2b48
Date: Sat, 18 Jul 2026 00:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784334513
