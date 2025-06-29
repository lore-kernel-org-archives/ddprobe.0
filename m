Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402E11F5846
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751189995; cv=none; b=K9siF+Kk/K+d+koisQ8n14prh479Q5ftW+7t95I4Ow8vfK4JihUGmoiT8T2dFrBKKuzjEr4/ReB0ccDA751CQ2ULaZI+FLhqOwpOeDA/EYHShZl5y8CNprLTS2OTMkeE6XOEdoW1u+tuXkrTDJhsgHjMRo1Q5+1wxk9EkMb7xOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751189995; c=relaxed/simple;
	bh=nPH2zrJSzNFpLlEMT0A72r2sEXepot8Htll7nhDyncE=;
	h=To:Subject:From:Message-Id:Date; b=bg9k72LJB62w894he3DrzeNvLVseAe1uli9H1bhvhDmmhfPmQNnAyfW09CoZGh68bwu23FEXm5UELjlVBtcVjz0YXmVIOv7b2zBKk8rV1uDbIK5D5n/nBdJkYJEO2ElgxPxd4n82qDML3trtjPYDt0kjxLYNuHT6kQGWSh6LaPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F+O8Rw+C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F+O8Rw+C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14F4C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751189993;
	bh=nPH2zrJSzNFpLlEMT0A72r2sEXepot8Htll7nhDyncE=;
	h=To:Subject:From:Date:From;
	b=F+O8Rw+C6RbjupHzP6RLpVvKts3RqfnFt3mnvyewvtfQe3+YGEAqqxlbyH+Kcpp1U
	 /wgmlf2hi0v2Yuc1YdIeYx9yiQ3y4+8MYMpbNCZqGEv1sg1kWdoqer0r/MUMIkgM+y
	 7p10p1Z4xxvCUMi5jBborWThgKWCSazADMhY73dTKErvxYot4aVPun4biLeZkoYoA3
	 qiiCEqrChsobdeYHVTvWyn0LWYfHSzhBXtOrUvuVpwz1mOCetXdkPES0Za8QLo1xtU
	 OdtMqpJWCspUUzhbjpruqyvujDMXDw4yck+I/D7R5/gQjP+aHJH336fAFPEtPexpzS
	 lNFpMxFxNqxYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F5BC7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175118999357.15739.8276541162579453576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06ed51d7e5b3d0152aa1f6d1010106eaa317eeef1fdf5c17131aa50b90322a2b
Date: Sun, 29 Jun 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751189993
