Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F94E1A9F97
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 12:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765371174; cv=none; b=NLuAMHUgOLp3UMTJVZQCaEMlPxW4O3NRZsVBm/4Ma1k9bAvypz0dIwyn/6Eom3wq7nVRmcuZtD/hq3vC/lfEp8ta6fV97cCphO/sDdSCk6JpSMvvR2NJzZ7KCnHR4P2pw1GoPc/ryLhX3wAmm02CokW4J9VEmyt7TNFzqlRjodY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765371174; c=relaxed/simple;
	bh=oPgUPAl3L+q46id0PytATIZ2BFyVetY/S+j5Ha94P9I=;
	h=To:Subject:From:Message-Id:Date; b=fu4w14WhSnBHNfxUej+ry4QIdN2fTauyVh5pOUWMC38q8P0hFBujvaiZAocgD99NOtxmelwyPXYUeBYCtrvhYC9/zQLdXFH6PsU9viH+IRU8OyDHZQurliD7Wvdw/5+6eMKoEaYWK4l6UeEVDX9imRsP06nAX1MC8kVp0n0aAkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C4Et/JjY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C4Et/JjY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94C9C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 12:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765371173;
	bh=oPgUPAl3L+q46id0PytATIZ2BFyVetY/S+j5Ha94P9I=;
	h=To:Subject:From:Date:From;
	b=C4Et/JjYnxtbRKa4zx512ER35inL0LqtcubHzt+JH9E0J53gv5yGPDblhsVE6bLEE
	 KY8vwInvGKEbcuyGs0xJx3PCk5++PbFLLjJNRXZ6Qf5Ojmv57fxoRUdu+Q19F9pJbZ
	 GADvSGCe0FNBf+vfZ/YVvlQy+DS/zlszwUoa+H6i1AA9U/GjTmlGCvQHQAG2V291Mu
	 0gwH8Ot4nQC3NkBuWKgEA1pGFunE+w2mjccJVRP1UZ0saKPub4McEvBjoEoX0fLHkL
	 Wcd2XYoRq5bFkT7a6fHv8o+cJX56FEif0jogKWQsswkIvVKDIqpVNvqiu9Te6E5TFv
	 XZIcLPNx77cTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948EAD3C545
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 12:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176537117359.31997.13104626139173609404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d3618075e03f0291f48b2a9b0690de6e39b772a254e8d8ccaf38e9025a3567f
Date: Wed, 10 Dec 2025 12:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765371173
