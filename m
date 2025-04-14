Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA0878F4C
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744620594; cv=none; b=uSeG20PzgmIZ72NojG8sUxg+1mp2SttNa3V8z7hltMV+n/9PHa3Mo1EM6ADOCDy5GPBswO44tdPPVJIOPlLZaKWTpGz8TAplJ7P+d3mSyX7qKeqDKz7tcVHLjWcVqcAHKIRPtx2fWJPc0QRSBWct3rgSigxB8XPAoSbrw+u0zOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744620594; c=relaxed/simple;
	bh=R+NCFm7UOJDWhSVRLfWaiSq2dZTU2Y+3J5+nbU7yeZM=;
	h=To:Subject:From:Message-Id:Date; b=P0fsA+rbhbGw4nDbgzvEN7eH/9O0CloziDCxnOue4rlXMBKM8CzvaNTIuCOC+UAL8YBY9ZgghMay7SAaA2IMGY3ZTaGNy2mNHBgU1TFHUhbn3DgJu8be+ujUvHPl2VbZtFx4s45mglnFnootUn7EL0AZLU9tFoLAJ7PKSsyez10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EfXcSFyZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EfXcSFyZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F4CC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744620593;
	bh=R+NCFm7UOJDWhSVRLfWaiSq2dZTU2Y+3J5+nbU7yeZM=;
	h=To:Subject:From:Date:From;
	b=EfXcSFyZNpVFckRx1NnSqGmEeoQt/QMelMwwQNsBqZyBRWADY9JVBXKHb38bkxOUC
	 MvR2o8lHDNbjI8pKv84ZiZS9KUfhvbc67SmZEtjsn/+w74isf9ZWQVJxHoKVfv28I7
	 IaLoMWaZpkmQ8OiNIZhPcm2TcnXbMumU7Fd0faq6Bs46Su7ZqIaL0QNYHodKea90kR
	 sDZLkYP67eim3vg8yym3RoBPsW43iJ+i7jACW8kCpUi9xLJgrc67f2rQaHIrdzj7sr
	 gTwtBvJc2U1jDmI34s1JelFDFEgYhADJC3BqTCj3DZUv800Er2QpUuuUpeo37hlXvo
	 fczvhjIwZXTwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92227C369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174462059358.26173.1015226003708887843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f1ec1db645c31b5a6071f554aacb0ffb6662920ee45a5d76437251a7e030521
Date: Mon, 14 Apr 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744620593
