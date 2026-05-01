Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB5D329C54
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 22:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777673254; cv=none; b=UDdmwFgN80QEFmQCbFSUjDqKjXAtKudAr3oSpCJaLwviYD6KKRuJUGqz3oA609WOXRr9KVCl/MS5QaRCF+6QA/31KCzq87EMhx6VDIIIbaScv3wJzqPEfpzd2/Q+HzxgY/VtuXCdg+6zdHD4Yd6DNYWmlRM1m5xD6dOW82Jb408=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777673254; c=relaxed/simple;
	bh=WqQ/FFnPIfHAM/V30buCLewd0fe3R5G/MW53f7L7TFc=;
	h=To:Subject:From:Message-Id:Date; b=M3Jl964kLPtWgelAEMIJK7aus8QaMV96f3hD9Ix5yTcZ0en1LkII1H0kdNFGDK0YH17Nbt9amdYvIj3uBBHUCDVPmPvvhu6kOmws/SbJPiwXXolIfD7KWpSuPg9Ze0ZFNbep0Al8jKnizgBZhiMwVdESTvrTJnrMDsS5PNd4mrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lDusnKGG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lDusnKGG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFC24C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 22:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777673253;
	bh=WqQ/FFnPIfHAM/V30buCLewd0fe3R5G/MW53f7L7TFc=;
	h=To:Subject:From:Date:From;
	b=lDusnKGGmPcgeBbDvWzOQPONZ0ivNaXEzN0r6AFP7iz0Dlk6/62GezPerI5sDtD1p
	 YmomQzHV9RNAuDTMcP4a8r/rMognu6jqHal6eN4ovQKhI+Lb2TsLVzb2EC8tDtLU9U
	 r1wmpo92cnn+HrzibR6XBLuB6aTG16y8R80DdKN26+f/863UuzYA+YCLxAVKxp3g8q
	 Gt/0kZCMi3OXi2BXGufCkyaQ9sRIbDEuyjVKV5DLYcIQ4BAJ7hxpGAWuECLDuJG3em
	 I80Cd3sqSsDyi6wYQKL9AHpWWaHnoEgha6X+53L/KSZF/NeQb1prKD7GmhTaROYvzl
	 tkGY6qZxAuzYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC79CCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 22:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177767325369.1064.15625795820491017462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2459f24b5093891e88328e822c45a1df0579ca057bab80d74b2ce4a3346f853
Date: Fri, 01 May 2026 22:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777673253
