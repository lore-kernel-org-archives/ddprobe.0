Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE202BCF6C
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765882434; cv=none; b=M043Nz6SKFSlYY4bnPj810q9p/aXT0CVkg+SrHctHOuiV2lkOs/uQ+3LX6ydc24CpbpdqZPq1rDWQBUd+qFMMBUhlVIpDK52e10benWMfQawCEr1MRfolY9dXHHXbvHEyAK08PcgdHJ79+/lPo0N29A6sjjyBSwiQIcoRCOBb0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765882434; c=relaxed/simple;
	bh=CA2VK8qFKQ7qOTNFVMXfAy9ke3u9xk1r1wYN8MMmfoA=;
	h=To:Subject:From:Message-Id:Date; b=fJHS2itg8srm+R7oabLS9AQr04LmJ84Bzdzn9PkOTDvzHa5uhWO403HEMwOnXBoSuf89GrjbACKK5LvS0DXOufClWa4Vk7PnVibE0eIY5Hqo41oBXSPwnd9APD0CbLZWJTjrDsehfBVJQT8RbYZoVk3FncwasvmVlN4i9Nsa4Ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a5SDqH6h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a5SDqH6h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B08C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765882433;
	bh=CA2VK8qFKQ7qOTNFVMXfAy9ke3u9xk1r1wYN8MMmfoA=;
	h=To:Subject:From:Date:From;
	b=a5SDqH6hDRrzhChLzd9PQ6DoY09Gp3hsDCBxfc0RqzeT/k6xiYcDEGMLzC11Q1STa
	 mjBwyrWPP9phKkEdSiX5pVOwFQhQQwRYQX0CcXl2fsSKkRNXcAUBdBtUk2w8mDDeXC
	 1TCHGwKxSpjV+x6/8f1CQ/q2Rsl4cGVY746HuMu87uzgmrr058LjyS9a7CSvHhxVUd
	 Rai6hGAfVRr8XBa66YRnnq7s+/iZnC44fmSMx/B/gbClKLW0Cvn3zzec24u9V5/qav
	 6rYD9atx5tjXFXa8ekdMCICOUjv80v87VlgNrd9czlngwsbWi6IVogySAbu6HEOU32
	 lGsGCFKqfh0GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9135ED5E12A
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176588243358.4535.8882490418873156320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ed5d2f4f6ed54c06e3a0672ceca334e86f092dd641e9dbdd334f58378514b87
Date: Tue, 16 Dec 2025 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765882433
