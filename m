Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A99A79F5
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755490795; cv=none; b=NHthXHG9xPhamaVmyhJEukIQ3XwRzJeSZ4/TbdK3S2p7qSFGsfUaoZDQjGQmvN40Y2THYFCCoE4AthHVZdwjMo8gl594X6WPW0L1hTY4RO4bVFmrIYJspowK4IqXDKIx28R8gcdD8AuWUVdeHFvAfRH9rx/vHcQSKLPLIQ4BkzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755490795; c=relaxed/simple;
	bh=MzJ3+uW1m2dLcc53CjcppVaE6WMiLNI56Z9VdlAJBmc=;
	h=To:Subject:From:Message-Id:Date; b=Bdp6LfRjSR+0ZXCdB1HcBRRTORVWhOV4CPd5QProcNdahDUVRZQIIBTKgrCAY1iwhTT12qHfFqSTWk6DaKnCGy4rSm/85PrcF5FJo0rQjxXf9o0ddwxXNYX/epLrDXlKOgsE6vFAPqYECGoDLsUeq2xA+D6PAN073r51f+CK4bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HhQjohIS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HhQjohIS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA95C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755490793;
	bh=MzJ3+uW1m2dLcc53CjcppVaE6WMiLNI56Z9VdlAJBmc=;
	h=To:Subject:From:Date:From;
	b=HhQjohIS7Bx9r+Mn1YzLla+ohAhx5cQlgOHazCnlFV5Hsut3yhZKz1uS9ZQ1pVIy9
	 XRQhGC+7o9byT3udfoplmiZAffC2LSa2WxJDOs3nt1Vtj53HppDvpBGRXPRkNqMi1T
	 Itf1FUmcTLIST8fpMyjdK3p4R4TWroIBPj/6RdtIZbhSvb871Ax8WS+qRNRcS2GvVL
	 PZD0fbvHDMakM0dZBBFSRqC56tmJrYpr72RtBbsPhHfI8sp38H43NfDNW395uE2pd+
	 Uo2vkheEgZPk2aYUGTP/NlEv+ii74bKVKwAZkABxsl+YLbxJhHUteXJTmGSF2SHxZ9
	 RHFfh4w6MvCmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F04CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175549079358.3870.12653250194620892403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e06ffd6deb214b87e045a4effafd0a081c1854022bfcb886fdd6d844f3935d7a
Date: Mon, 18 Aug 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755490793
