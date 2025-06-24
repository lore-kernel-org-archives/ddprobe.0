Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAE73307496
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750807793; cv=none; b=nZcsPZbxPbLMLekGXKbJ4m/O7228MhZE893Te49fs09b0D3JYNbpow4Vfb904fmxJpwtfRHVc56ywdPxr6chAo24lxD932/yo7l1N/YBQ8CF6+W1YDyk0g59pC1Bm35b6yrI7lKkqCZaLPSWeluhMIu8DG0ASE6z7vDB11Cq/8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750807793; c=relaxed/simple;
	bh=cyEqBZYf0Dq95QjFE1X/6bL7L3D1ZkSO8RUR8v7hzr4=;
	h=To:Subject:From:Message-Id:Date; b=eEbJg9+ZO4vQevSAeWaFxCToQy1stUILCS0ScfuVxsbCiB48K81kZvuVaihJJ04YzwhkTyIt2YM44JbEhEzv6fh8MRxcPAPf1TTNgXJuJQr1F1KEABe0ZIQPDtZlxu4rSbXMkbcy5PuGGn7J1emW7kbMUqlJONfW0note8ESWpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qq+1C8oR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qq+1C8oR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3341C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750807793;
	bh=cyEqBZYf0Dq95QjFE1X/6bL7L3D1ZkSO8RUR8v7hzr4=;
	h=To:Subject:From:Date:From;
	b=Qq+1C8oRTHemIVts+qp7FoxWC66Ty15PQNHxYPaYrDMyRVAO6njWuoV0TBN8zqLmz
	 2acglo++8JalQ0oA7oX717UHAsGM4KY+au1yN+suav57z4D4KPZ09q7GlaHtjWmJK9
	 sjeRuNTdaqAWG31ScmvDhApOJWeuwhChcF0B+eiQk8x8lq0YnMriCTVpPueq7VTOQH
	 l92BKTSCkpGCS0YxciOW8g0WX4++zz+rOfyMT8pzFGVDN8a6DA38TC3MvXytXaHncX
	 af2PSODnSI2yeauZ6mQb8U8JRx2Rm75bdtYM+ziiLPQi4/AjAt1zyFE1e7CwtadBJI
	 FalbWih2sOwmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9086DC77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175080779358.8551.17724332504008072910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f00b467775011214f02eaeb6178496754f42f4d70d35a075bec75df6cb396fac
Date: Tue, 24 Jun 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750807793
