Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252EE28682
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753487994; cv=none; b=ql0HRatwnd2TAfeHb8ZdyUwrtakcUeCXxSP9ioFTWi24Uw45GUFiCLjdE6zIQdjGhaaAFLtnxNFeiHU4aalxjEuYnN2k1zi5GSISodU0YMqqsOdRc+iZMJw5Ur1STwRAf9iRbJlArnuQI2f4OW6pnfB2LO7zhUtDw60VOdYeacE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753487994; c=relaxed/simple;
	bh=I17TdSdGtF3zKkSA0dAwYZur5W3vaRTA6VyFc7AhqSg=;
	h=To:Subject:From:Message-Id:Date; b=hh6L70dVjiO3n7lE4J6AX0YXoW8woT69jKrow2jMrK6NZlqCAeiqu3eGDGOxkp5QT4LJVkw2xBWIVpO6MqF048i0iej7gmp2NMnv2j0/zjEUkevX5jQaSbTWEprVyVSvZ7VDx5w0M8xyI21YZhn0mcD3G5bBaLZ88W+nUO/6wX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sa2GhzqN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sa2GhzqN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B0EC4CEF6
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753487993;
	bh=I17TdSdGtF3zKkSA0dAwYZur5W3vaRTA6VyFc7AhqSg=;
	h=To:Subject:From:Date:From;
	b=sa2GhzqNZIYGff5mWZlv/PHJWusmBCDd8dl+yCKhm0M/OT0J+suP6sWEpSx79laWT
	 QkHpl1/4r6Jf0zE6uUC18pk3KtkO7duYg3LMrHWs+YpBpdXUT7oZ1WHmGKyGFYufUd
	 Vp/7MhDFxLjVze2R68rXxnJ+4OiU+TqoX/X1fxBvMDd4QA6hkiseaEmn1XyfUYQSHj
	 4XiVwSntkRp9f0tXUKwnw/zc6fHeD2O1pQMUjdU6bWbNrfkCzRVG+cMUTIJtPdHM5c
	 hJ9vc2rnXUAn74pClLsoSYAHIqxRlgYPFwo8t8cWTrxVjMe0erJBMBZ+MhE4D245pY
	 yN5q27AZcEp7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBF3C87FCE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175348799358.9726.14582102254091629590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74a5b2006a0d56bcc45ab2eb4a1f174b5b20cf6f3564dd22b47c546b2303fd68
Date: Fri, 25 Jul 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753487993
