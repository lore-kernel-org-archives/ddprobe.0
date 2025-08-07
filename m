Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D854133086
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754578193; cv=none; b=fgvplv767Fzjs/tHVVD8I+EEpzR/DpApa37Yfv/bIdoM3U+natdTB6hVh30zu9Nv/6+U0+NQUsadD94joUbDss2avsU5CtP291WyAP04Lr5SBSR6bOCINcIlho3mNQ7zfkk3Y8rRORlbjBj3bAkJTEpGSnHGZRPxmVNyjvHnZaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754578193; c=relaxed/simple;
	bh=Q5UDvmcLmdAQrG39bUfVUaWGdeEa8f9L5S6TCSwMDMM=;
	h=To:Subject:From:Message-Id:Date; b=NZxW4Ca07o/K5YROl7djga22xlDK8EPdsY+y6ekcX/cecJubTLXFKjmko9pE6yby5D1PKUoiUf/Zm7xXy/VdZt8v5jPGb82W9iTJWqKwYaDIokSspODtU67gbimgm8VnUbfUnJahyGDWB4lb6flHirvDPfUGemgP/wPZvJ2q/LA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rFuKFCqe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rFuKFCqe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD90BC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754578193;
	bh=Q5UDvmcLmdAQrG39bUfVUaWGdeEa8f9L5S6TCSwMDMM=;
	h=To:Subject:From:Date:From;
	b=rFuKFCqeKpJq9VZOjoAu8uugFXhp7FWv/Qko/6fBq/tcfgQOkwIetENKGc/S0v6tQ
	 7nvapUWpmrsA5rk3bmse6qc5OBgTNXR5Fd6WdYhJp6g3GorqoWviVoknVklcjOtuhm
	 WrQjbwR7SaokY1WMTnuS9RS8E3z4Yy2qjJMLUVPCWeY+fbz1kLdgBrpBYjhtkoc7wx
	 fH6dr5gW3pwqIXjEhWY8zc1gHV0QUsUkDgm06CodoW+H88ycQ7eNBN0WHVUfeqT6vs
	 S57sVfG4FaNCDnLYoxApReB8s/f4/3fQGGX2tkhsqXdW37Ipoggc6C0hG3uyivxaJs
	 X30YMm0ZtkgZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D187C87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175457819363.22723.6401759221623081842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3608ceb6ef232a74730e251e3c114ad0e17d565e6d574fa748044b838dcb7a58
Date: Thu, 07 Aug 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754578193
