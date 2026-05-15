Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163BA3DF01F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 07:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778830234; cv=none; b=nMOW4ApEyHKyoJ384nqwTBHNVDkatqmRp5saxfhL09tSCaprNHAWmv2hX0A2leooH33MxnTyNtv3NaEhlrijfEU++ulfUuyImvri93+93k1rL7wlP8W0ezSzEevYQHcIrogCpF0FA0bznC4UMGwv/mIvkcaX/SvohBdNkPLFXKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778830234; c=relaxed/simple;
	bh=p/BJ4PkZrC+pOLUYLkbzProTEWJx0PaBthvoeiwPuAA=;
	h=To:Subject:From:Message-Id:Date; b=mlXCa+L8JIGDFOeUHFHxUv2SP7cZ0VQWhtty5MxmUSASTti4I+/xgGPSAmR3l1ABIY54THi7DSNYX4H8sATAS97Em3lQqPCWKNHnDhr+vda3tR+oORiZArnuXctKDLiYjTlU5x+lFRILuoIqzDbN5K1OVQLz2UKJieEybvY/njw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HHslTTxn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HHslTTxn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC489C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778830233;
	bh=p/BJ4PkZrC+pOLUYLkbzProTEWJx0PaBthvoeiwPuAA=;
	h=To:Subject:From:Date:From;
	b=HHslTTxnSOZivqFxz0ubxQln8MHW8Dy8dARjiMF0TuRU117wLHZ5T80RW8/NFNVru
	 KQbmyPA0L6CJ7NFZs3fTvALdQzAPaDiXdHI/FpXJCMjVs4vkg5iFd91Ayo8N8QDx5t
	 UM2JBW3ax7w1ofd0GqMVsBLeiWiKAbKUGQ0Gplw2Ac4JIk/htFJ8p/LCo4jMkB65KR
	 vB7g4po9e3f6UCInVmvcJeelqufGulNNeV4/PEBn21GnFPNj3HFOnmo7wlLD3shaG3
	 yYV4M2bxJfZFBpPfgsuygSApbuUwgzg1jGTV64QFESnTxE01xWNtO9ybMpJGLAa84h
	 2bHH45QqQnhYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA539CD4851
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177883023368.19941.11720171648122854387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a5698020ac4536c03760af9b1c4bfb9f13d2e847b6feb44d827f453da98ee9b
Date: Fri, 15 May 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778830233
