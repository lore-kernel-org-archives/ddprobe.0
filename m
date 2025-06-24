Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E75513B7A3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750736994; cv=none; b=MiqdmTyVntxJGhHGtRiOn9eu+lcdNhWJFB5VROOsvy6aSXaF93PjuQSxz0JUMvTZ4tz/vhtWWaHCBmzjjFsGzB4tuKB/OeBjuXJA/ZNaSi98jeT8t2EROkfSkRRt5E3AWYJGb+ALuW0rhFDHIIX3v00OaqepP827dVPJq8770OM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750736994; c=relaxed/simple;
	bh=MKabHUIRtGNKB/zq1eTrvUL3F8rcQnUKcB5kuCV3W7c=;
	h=To:Subject:From:Message-Id:Date; b=Q/cxa05S8SfofHOVhYPBO1LHTriLTyuSJXWzyR80RDhMgOcqsitTjLbfjJaZL2GJlC7TjvlZw1Dk5Rp+cyUUZJUl6MBXe0ss4FbJFL/GYdbfMLdW9r5gwZqgYrOymExLKuiFi9540dbSFRPjx9XW34sxSW9ENZPanVPF2EGfgH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WAsNKMAc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WAsNKMAc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D6DC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750736993;
	bh=MKabHUIRtGNKB/zq1eTrvUL3F8rcQnUKcB5kuCV3W7c=;
	h=To:Subject:From:Date:From;
	b=WAsNKMAcwVgdjRftUIEAPYPwlVD1KjWaLGZL3lT/2XJWPrg67tjsZoggeFSEo9YVI
	 Ut/vRMUqPhjWujSwqfqID9vNOQtlDemalvl0XdQb1x5G960nEcOao+oLU7cDUG/34b
	 +SAMb9FQHZrBSydCjp3myXkbcPZJYKzlYFquleFWN+BrueHneqPxRe6Vygy5crhbav
	 u3ikImYq5DY+KRZgl67BHKE9UQC1kDYdadyK6l9AVXHnO5xJIOyTBUrIX6CrKKeuWk
	 +yhxujytrG35wbAS/IylAKhrH43mGJw+QfIz9e9UL4kj/fFsEF5acn9T6uYfDSPQ9K
	 U2KntlCPNV0Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95217C71157
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175073699357.7182.12456646004569856755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15bf290a8566c5fad38f210a3cea8d062ee4decca5d3e9861fd90d2ba8fc010a
Date: Tue, 24 Jun 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750736993
