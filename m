Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F4621FF55
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755379194; cv=none; b=FNNtGFCjMcJjx0driEEx9Vw05CENBledfhiIyjAFGM+95aWFM1KD46eCzMNBSBAUyGjdCv3E06GLGu8TNnrmWVR3FjrOXAJyQ8SgB/wcoWf0GpSj9+Uxjj/0U7PjcQK8cPBy9/YZhm/Ce4Syef8KuHW/Iy0hadeul9Fp0eQTf4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755379194; c=relaxed/simple;
	bh=NZeglTGeNFxk3r8Ih4DOQbqYM5HuA1kzZvF0B2ejcXc=;
	h=To:Subject:From:Message-Id:Date; b=kkfImxsX2I5RoNgXO6FmTe/cc66N+or6sFFKlfO5TWrzj2X+MKuBCLJe2xuidtPhHtJ6n8YzkB0qQtMiusjTYJvRbqndNgk64W0xFoitJu7rBoMUQGTsjsdLa8H00zEB+9YKlR3DayknMbMdYpQhf0Bezg0OSi/pjDtay2GMSug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DX7uvk/T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DX7uvk/T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2913C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755379193;
	bh=NZeglTGeNFxk3r8Ih4DOQbqYM5HuA1kzZvF0B2ejcXc=;
	h=To:Subject:From:Date:From;
	b=DX7uvk/TyMMKnK6biOGsOkfNnKwRWsTcCCDTUHB58Gg+ld3uCcYUzvPTPvSf9DRTm
	 pPeNoXlufOTq5Ky0LDrQXsz9ozhXvv/wy2kGCGmud0ztqm0O+ouzXpV295bMLMiBML
	 43mvaNRtUc/nZ3/Ci8VDQ+VcD28GLNKlpMIi5wJga1e2SLjZ8WUOEBI3mynyRsqiQV
	 FYpxfIZwh6gylujYziLr2jb3m5+4y6+NFIFeql1JK4wJEcnTCjRXgU5Pk9Do7QQsLz
	 /GffNY2hLeVJwAij6afKKfIp/wjoFZxBTSL2ms/3FJVgfz39CS1AvChMBbyl7s0ujI
	 8PcrhGbAcbZIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A59CA0EE9
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175537919357.8205.6219637248164762740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a037c3ae4cc6c761d13c3ee6d4bb5f26ae3857ec1e08453cf0e7a9e961398b89
Date: Sat, 16 Aug 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755379193
