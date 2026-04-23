Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5092F3C3D
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 07:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776929254; cv=none; b=DKmNcY0YCyQ+OtD61/2L5RMgPIsPouuU7use1Wo4j6+UA/5l2C8E2D3hUjaA47zwtP3ChaDE2ceSMxmFkWfCAFIIR5Q0xjUgOFBh+m9BUFREZf96rpm67rv4vHWRL8MH3WcL1BS5s1OgUHhRsjKAAr4mhLLuvE2V2DUtPw0x8ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776929254; c=relaxed/simple;
	bh=dAWuHlsnQYBoT4ZcvK/nEvtUKKv/7VmreNpwWV+ECsM=;
	h=To:Subject:From:Message-Id:Date; b=SnpFlqXCgyDCF8HLxd+KasiE2/dcnviIaI48vHU1gvUtiL7taclAtXiREN0nTjydtFQJVn0EPz+AzJZCbGE5HwkCeAFkkFBjGP8gO5NvmGH1TKtPhFGNdW7A8M+0dzY2UDv33x6lUIQ7zDpMqomkIQpe2Og7ExngoVSPCmMI59E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mvg+2j5v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mvg+2j5v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE981C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 07:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776929253;
	bh=dAWuHlsnQYBoT4ZcvK/nEvtUKKv/7VmreNpwWV+ECsM=;
	h=To:Subject:From:Date:From;
	b=mvg+2j5vizPt567H2eJUM5b89g3E6K0rBhzZiH3aGUGX91oH3KbHIrr8nkdsxWVmP
	 Udx30JhPDvmT6ESBCp/fZ67hVQC4UDKEd+1wza00Wlui5LR89uHECS42ye5I/6kjTT
	 sqZIRkUBre17meOXi5ZDqkesJaSzxM7xLokYmFfRcmqtsZU68VJ3MP9iH4uX6ZZVQ8
	 7xxw6hA96pATjP4Ghm6XiVz9UWA9m4b+9YMI3cdlnNfOH+rzHBFwYLEWPXFn1bO5IC
	 OnAD83A56fobtgjEppYKyto17cau/WX+9+b2oIfcfVRRmrEMsF1G5bkE/UBZS5nQqM
	 9agqv/BN6BPSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC98F99343
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 07:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177692925369.8534.15738522947566637128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b599d22d5435caaae1bfee6cdb9c252cb7004f368b131614f8a11ad19b2d420
Date: Thu, 23 Apr 2026 07:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776929253
