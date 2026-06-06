Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508CF2F49FD
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 20:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780778074; cv=none; b=GcMBxr8fRr/ZpSruyN4LmkcDQh1VqUlvJWTZDeuoxrJaDOVaq2H3rEIH00lfoWGSONyIQY6D/adbHcbyFVf6x3IEMGVAsRFrxV/vg/Ffo2lxOKE/k9+tbhvXXvZqiITnOPvBWFTbTH0BR3inN9FewapLweLA87QqKfxLArxUExE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780778074; c=relaxed/simple;
	bh=xjQ1FXaiZk/LEFKT1mxX+YD101N8eDQfP52iTZW7fR8=;
	h=To:Subject:From:Message-Id:Date; b=tTqwHfS8YNISKjJmnro4BI6nY+6mq02LPvtN7JGlxF5R11vHRne0NEqCJzX1ZmYW4kXZIhVFtzZuT0SR5gn5rzzfN9eBpwBBtbSfcxJN/K9M6qL+6gn6ttfMuZ81oezF94W5Jd3Gd0/efIi1jHQPpDf3FLF6oM4SyRCBHXegV10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dCfVMskV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dCfVMskV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7672C2BCC4
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 20:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780778073;
	bh=xjQ1FXaiZk/LEFKT1mxX+YD101N8eDQfP52iTZW7fR8=;
	h=To:Subject:From:Date:From;
	b=dCfVMskVEEFFASBduBzbGpE9tXQX+zR7RpeaZmnOY1a3kwvyMrT0MpZbji+gYk6b5
	 cTlD/RVTffc3l2y0mftKkNNaKyP8UnwXhAwJbe1H/XvPNu8e5PHaGZJlgeBbnmm3gw
	 HPDNYXWy4NtFCkkh4gVIQ5fvcOihKo7TmMyMdPT7Op6F1NCdkyl8Nd5+FI403sLvFt
	 Om/VHARItEhDZgSHIsc6M6G5zorGsf7cetDVbduYjxs1bJ5/w2fR7YEtO2e33Zmbaw
	 ZX5aSk//bfBzc73tnuaC6ZXovC1B/V6GfTnRDYNsfeRBztkvoRExz2DqJYctyMOGHK
	 YpBeNDEbrzX3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF547CD8C85
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 20:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178077807368.19644.13706711249131958380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e2e0b3d6dbbfb12ac45637cb0dcf53aec1ee98321eef6fbb994a6dcd47643e2
Date: Sat, 06 Jun 2026 20:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780778073
