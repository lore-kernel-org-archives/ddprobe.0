Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3379382899
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736586354; cv=none; b=Cq3EDIcS3wrhJPgb+yHV+27c3u5GL6IL6ldBaSbFBa1AuOTE8AW2KFYfjKw3mhNtxaCTtdWpc1rhSGakMbQT6O8ylxHk52Hcrd52LAJRaipMfl/Dc467Y64zACXX3YeAHXyTpaCHAVOs4cSw+XsyV/Y31jZ40bl/RkIjnHaOSls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736586354; c=relaxed/simple;
	bh=f9bRxsWPwa2ZNKyB/ie6G7tqK3+W08Y2AkDnk84g2HQ=;
	h=To:Subject:From:Message-Id:Date; b=AnYC2Xyz9aq0tvyJpD8iJP//lQkoG7bltOqwbw0P7teC6tpK+S+rAnAAFvq0tucsx6LTKphDsW/LWHyQWtjMsnbuomSY4xITM3ABuVZttUthDlc3Nn/axqVCb4OSjmJFv5G7YDxAC2VA4RMtpN1ZxQyoa2dmEOXyzMIN03dX8Eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lFISAfB/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lFISAfB/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1C4C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736586353;
	bh=f9bRxsWPwa2ZNKyB/ie6G7tqK3+W08Y2AkDnk84g2HQ=;
	h=To:Subject:From:Date:From;
	b=lFISAfB/eTNs/4te0pZvzwDIkpkxwB89k38mt/QQD5u3uTxrmG1auxatJfDSkpuNT
	 J0Ejg285EWkFFC/ykdiAHdmlRlZijmEgn1GPfoSbZWU0Sn9H9C521A00AVZY9VHsNx
	 rzdWaKdAl/38yYzxcQvplDfVMoHk5fAcY0BR1e823frYKQbUiLF/oYIbPtHHJv7Q40
	 Egmu4Fb84yIr572c0ibc6PflhulWDjFiTJwwFDY+iSzqVYJ1A2KBIop6JgRdG0Ef61
	 fSK7oRNvoaVQS3ZIZQccAC7MrypYrPvb5q/0UrwbsiE++/HtnwjP2DjQU6MylwqQth
	 LCF+eMHx3MXIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901B3E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173658635358.3896.6872481584761612315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51ecd552245d1997c058cb8dc7bfec1b57fb28279edcff5a6368717d0a7a5cfb
Date: Sat, 11 Jan 2025 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736586353
