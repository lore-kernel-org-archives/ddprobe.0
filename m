Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD44101EC
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722719154; cv=none; b=eRou4XHxJH2Zo6HQE8Av2h5JzKyb/pqQCU/y9g20wjTTmM21B5i9HccMI0lfDnJeCTMyIv8ef7Sa2kbKfxm4J132Br6DVauskxcz5jweZtIvMPLfYInCYjh/F0OH+4bRVoP6Glfwmd8A799zv0larJw2c3mgEMK3MQf/ejSdKtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722719154; c=relaxed/simple;
	bh=oGg7gErYC76bqVhGhIM9bGqW+gsde33JyWhqd9t+LI4=;
	h=To:Subject:From:Message-Id:Date; b=nDv+t0HhORhbzA1VMloBO5b9pZikFeVfFkcox/chRS6mrBgg6KSn+RPBprdkiuGdQBgB7QNiwO2nNViV6XFTiOD+xCaP/H7Z3adnP3a66MHLvbXjZ3RHaU9PToxuTE41RexT5y0IWqc9SBgICW2Uz9xhK/yW0L9pvtvUxjtp9u0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UiJnJpTJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UiJnJpTJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5D8CC116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722719153;
	bh=oGg7gErYC76bqVhGhIM9bGqW+gsde33JyWhqd9t+LI4=;
	h=To:Subject:From:Date:From;
	b=UiJnJpTJMuIQqoI8+4mNz0ZDgywPzpGzHyoZUmb1SAZiur1nv/XHiZgNHKz9///Yw
	 qZiPod3Ufs/xaos4cltITgk/9GFFjgtIeiqqmq3pzqneBczNoQA+mJ3/9cV+VYUXUc
	 6orXhCfIhSzjSWmN1oqCO8CyaOCDWwkVJhIXzwUgqm1nbBkSrT8BREzk19F3xzGINW
	 JkDSWKHbZrfhj/ujgLT3AEPoUHfg8/nEapzsEWMWgggeE9rmctJT1rJze743Sw5G26
	 dg3Ohb3tV+36daPMzSnf3Ov4ZmCaHwtkkhPUAfLDW8OEAcJmmVGkho4yMpS7cd8RIn
	 ys3ki7fS2F5/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BABFC3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172271915361.18720.17241681301262247539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a91abd418b521c8c87c1ee0578f71b6a9ad2bf99a90055b6a6bd436ac91dc5b
Date: Sat, 03 Aug 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722719153
