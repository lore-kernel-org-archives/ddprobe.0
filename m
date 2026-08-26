Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE733AA9CA
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787761234; cv=none; b=rIHuq3RxVLr83+WiqO0A5SJFKo4RlmZT2Hstrse2/5AKW1qZtTgFfOOyThGKGb9NaWboq9dG+UX/uf/oXTqOHgp0Wy3HivKGny/kJlF2tga9IE13vpFD0bXAfrCtGCCPouDbiD++3KFIvhfx7v+Aak60yW2zsq/ivlkdXMLRQ70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787761234; c=relaxed/simple;
	bh=rMdZGTpqVeh5Knz49IHPb08HXxkuuFvUwlDUxL6Bao4=;
	h=To:Subject:From:Message-Id:Date; b=fVhKSMGCLl/cP6DugQdd594KF/KkOuG+sVtAXAs+FUgyQvOuNr5gj4KBHDpTHGsb/oRFyYe/djXR7BFVdnN7qiRAXr17TrPbiFvsrr42SyzF5dkwvilYG9R3K+yo+PbLNl4PhXdXFuNH3SpXtib/Qany5s67sUTHYaMn+iCTL4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bIoS2z2L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bIoS2z2L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD079C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787761233;
	bh=rMdZGTpqVeh5Knz49IHPb08HXxkuuFvUwlDUxL6Bao4=;
	h=To:Subject:From:Date:From;
	b=bIoS2z2LIupDP+2mqzL2n/9U92a5gyUHw4i7LTiG6X+gUPtrmhqkRm5I5/N+8j1vW
	 191oWEfV714ZhutTORvOBK2ofF+t2D5lUQxp7BxPOzF4kRdldHwEowA8dTeGXQLC90
	 1AAVulx/2+y7mHO3udIkze1RmxhHhdL3w9yJrhuCBi1D7Kkuj7wtCPfNlaVBdGNPKA
	 adUtxjLPSZLUvcI5xgOQg5DjWsFXXznixF7AiA+iVVsNy4m7Fgju4p29jyQIAe/XOE
	 k/eX4I2kCjW3U+zhMtcawDR2xHTYvJb6k4T/gU030qmQoNjaTreasBBm7ln2agHnLp
	 fsgp1PgpljJUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9ACC5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178776123368.15052.17964415164833958559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d01dfb6dec866d830838365c9221045e3da1303ada49b0f01f6b36ff741ad3f
Date: Wed, 26 Aug 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787761233
