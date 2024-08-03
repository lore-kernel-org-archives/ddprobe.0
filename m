Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5D3136350
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722666954; cv=none; b=Pd6ji9zd/L2XhO/2hFupV569POgIAfx2CL32LTWOWW9T5A6rlazq/Bjzfn1c2pEfKw+90emf3WWSsOX8VF8PZ7AKLAWjo8dvwhwhxmAvS5PpGIYSyRa5Nu9g3bgkbiD9A4544VTPH4RfaF6b63MvVTI63iPRq3JsBruTRqCw8G0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722666954; c=relaxed/simple;
	bh=Cx5iC7/99St51h7XV6t2xlpGnU2yztt5m/XoCo5hTo8=;
	h=To:Subject:From:Message-Id:Date; b=tkDGKPeAC4QmcohTN+wkxYsmlq6OhE7aukB/tAt4Pa0HFoTD6p8rsA5T9MtWuJsm8FtTqBiOeYZygj2vJgUR2Ol05Wd0ZOCYzh7HLlNB2U7hPsZCw+wbikQrslkSjERFfehXSHsAWuUOc7tStpji7AYCeYhmMJzRErf5gbygNI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/cRwNv+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/cRwNv+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DE2C116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722666953;
	bh=Cx5iC7/99St51h7XV6t2xlpGnU2yztt5m/XoCo5hTo8=;
	h=To:Subject:From:Date:From;
	b=r/cRwNv+PmyhNQKhY1DcKhEsjve40fAe5mAnu4Ctmkp8vxztlkgEgY2dzu7rbA3zf
	 qTUwFIJw8ITG5vpFJCv6ALhQJenNPcB9NJjL17kob9kyYZ3Hh+6SSvVEozCQycg9PT
	 TzYvY32Jc6tPAMgV2+XeaPCm5Ru4LITEcgT2iKoYq7z1GzrGKi2AycjuZqy2gz08KL
	 NzUno4t87Sv+KC4vkxx+GRrdkTCfVB82tO6Tl3Kjwim/arqRoZ2VX9jjyhYW1850mu
	 m47RkpDEouK8Dh/S1yRp9ni4B7GRgqMzC+uQV4PbQQKtwN1N0Qq23yj/kVMs6IELm9
	 3SdSS5OlELcsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93133C3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172266695359.22296.581627137379689714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 892622de7ab1b2c32f49f09233074efe71e77a308ba69d822c275c0dcb42dab2
Date: Sat, 03 Aug 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722666953
