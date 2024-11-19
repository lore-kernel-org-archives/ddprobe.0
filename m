Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F1E2563
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731986154; cv=none; b=ixOXZIJaEAQfaUooTx5SYDcHDNz+bcR6RTxeHemFMcInq2EXdgFOweFuWLF8C47iJGD2qNZWWDT6axeNLnXUaRVkl4vcKoi8VWFG5VHcGh+STWmtREn17Xyc23UHL6gsryUxQ7MCQ+bzUS5o/Dn1XZaoxag3WbQe+1wOotLr7Eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731986154; c=relaxed/simple;
	bh=mMBUBjo0/17R3DOZ2kCFwOPnbMDTKp1kDmUhTAzRB/s=;
	h=To:Subject:From:Message-Id:Date; b=NlaQMQMDBixpYKJRU3KpmMwEPOZyzU2Qjf2Iby7bxJ2IoWotyyRmtgjQabo8A2d0ACcaFqOoQyTvvrZGtZz+y/WQGDTKhHwqdRJyX0wo2OrHrN2WZebtGMaHFqWsDFYs6H/hbasRFmPCEdxYGQ1Af1cAniJNecwk+F1jr1ff0XE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tL0EGyr9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tL0EGyr9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D7EC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731986153;
	bh=mMBUBjo0/17R3DOZ2kCFwOPnbMDTKp1kDmUhTAzRB/s=;
	h=To:Subject:From:Date:From;
	b=tL0EGyr9B5gsRTSbhqX2MyoGJ2dRbsfaE3PvS/mBHLxlK922EeKetMcDQyH0KdZ4/
	 +FepPm5oR8ZothoXOt9aaVo4GU//wSUGyKVcF8KnpywW95ZO7JiKw2YcGmiqp26ZQ3
	 N6U28kuvZ3nMi8lHe3OJVwdfFzQQ+70VK7vpXV5CCXoX81e+H/HT+a9b48Jx5Y8Uf8
	 wkT6eoOGwfHdpUojyzMpq7G//EW1rq+9UBDSyj/0huV/1m7Z+IheC6ue2cMY+Pb5Jb
	 6P3u4ZSruRq8bnanpDKxM9oWDo0f01HkLJLPo2yYf9QPgFnHPPKA1r77Ve8Nm2lbwu
	 hUMomvs5Y/RAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90026D60D18
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173198615358.22885.2278315290957158231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffeb1938cdccf387290f9a0e11c273e309e3b8d0bb5adc6bae34d64a70478111
Date: Tue, 19 Nov 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731986153
