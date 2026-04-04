Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2578A14A4CC
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 23:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775346334; cv=none; b=iGvyOfLBh78Uuzi43zIHdwBI0AlnTSCDqw8yJP/qRVBx6DZyYLSccpCVuWQHbfDamxqs8kfQA0NTPdAXKCa8DejltQ/L5asthz+/MKfOnbesC+o9eJAlPOVNq22EZsTFcuIHuXCTtAthop+4SBd0w/gOfG92YgTznGFaafduKz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775346334; c=relaxed/simple;
	bh=EZx82Ybb7sEpObVfOTrusOLmHGRA/fu8LuncoAMjezI=;
	h=To:Subject:From:Message-Id:Date; b=D6oytPgAU8qeZ5rfgSsPSEIbEziM0zU/4m+ZpnNNTzJ9Ci0ycEKt5xg1ZCALll0o48rwSMD9K02UHAhE9P4toF2vK3j8BL0Vrf2jLrPWaHW5f14hPrvbQW422Xj74ai4Ukb4DE59MnoAXPbvfk45kzgPsWO9zNmWR2Cg02/5nLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lROIv1Jl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lROIv1Jl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C232AC2BC9E
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 23:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775346333;
	bh=EZx82Ybb7sEpObVfOTrusOLmHGRA/fu8LuncoAMjezI=;
	h=To:Subject:From:Date:From;
	b=lROIv1Jl960w++ono6bktmp/AJdi6GJihWOicuaoRYrEBvdOj1xKT1maWk71mUbEg
	 iocB5MzsKMMskNRF+sL05kMS22ASfwKka+xhiBdWeterUQDVRe6rAQwrGq270qTfrI
	 OPwhu0p+n7lEYQREhl6FqAwFwkCGpXJsdrN6hg1YBXwAKdocqmphdVgEZANfTloNpe
	 imAi6nRM09hcqOhobQJqYXyQrLahavRHsVH9LoWgaRaHfbZfmoiryWtt5zrIYqDyxf
	 nfSXJFiNkW1SPCuLY3T3VFhZzx4YxzFK5gJ6RdYms2b0zFBrlWVHvzbv4UJVP6Ph1k
	 46GxVuEKqSA0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D59E63FE6
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 23:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177534633369.8802.7657903201921849274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ca9e9e1f7640844f7444b80c2f8639bd3ee38eefae7eac170c9a190e8278b85
Date: Sat, 04 Apr 2026 23:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775346333
