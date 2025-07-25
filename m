Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F242B9A4
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753406994; cv=none; b=Jj/y6EAlzRrqiydUxFd8UVuGnYDa9ABV0WOeFPwzk/QzgETwWcZzq0B4jsiwD2s0MNfB7ja1GnJI7Rptis5k/+C17KT4MkYSVVTW8rl4rqv8Nirv7uDn9WLIbDbuBZfufX2icqnPlizxOvlQWnzmgHBSWYfTR+sovFTf2Hu7tF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753406994; c=relaxed/simple;
	bh=fAikW0GBJQT5mEPAIaq3EgQDmgklgMg3E1qiymjTrl4=;
	h=To:Subject:From:Message-Id:Date; b=Ec1zleLWvrODsFD4txByIFXUVjDUxnJCO2aoVtKOvOy8ZSwROHzcatioExG0du9Yhfoc4TP5s1JWeqPRQ56iDWg4GNRiy8JBymC155xrjgh8frYbSRs33tpo7lh7M5NSlWOGLyZ1gqohdeKmG/3KYM6jnRO0XKE3pPb5K6Fel2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VwyESQaK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VwyESQaK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19A5C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753406993;
	bh=fAikW0GBJQT5mEPAIaq3EgQDmgklgMg3E1qiymjTrl4=;
	h=To:Subject:From:Date:From;
	b=VwyESQaKDPlZmSizseTTB1XFos0G0yWg3Yx2tMe+J5ACoXEyolom3jSdM9OsZTuKR
	 UXvoughyCdwadty4hbPVoEM1aEds5VWbOH72VjHIephVl/NKoDVPjbkl1lYyJhu8ut
	 WabvleEsdyjM4vCm8pn/u9j/2ZJHVPSbFuSETaxBqraxyKLSyM+uVWA+0AFhVwqBjk
	 Ag8e55pAz1wcMLkrCtMnuCfh30v98YxFJViS7jsrkchlx9a0ftwl0R6IWPGArRX+sp
	 rruPt0iIVIgKg1u4cLV1M70YbVFih1IH3yeFvgDwc9iVDCLUFydgFt5OlgPRRhp6Gc
	 sj3sTc6IGZMeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900FFC83F26
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175340699358.8729.841595531069595819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fb8747c7a845bf6dc796e09adfa7c8838d2e06baee629b00323ddaad25642ba
Date: Fri, 25 Jul 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753406993
