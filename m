Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9F53D76
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761987594; cv=none; b=mI85b4EiwRzsXUKqQjUWTi4od/M93Fid2MtxRwutwlxd6CXmluFYQrFmOwkob5roePW354z41SMMckWJG3SCZ8Bgc4pJjlO465vl9RviBpEB21gzFa/+TOYOUDqw1++838i5z7LLFcDat7dRTARYX0Rmj+cUYoAVynOILe+6z5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761987594; c=relaxed/simple;
	bh=A8ERnPu7ejnnvSIAzESB8+M9TQok2xm53kCs9z7z1zA=;
	h=To:Subject:From:Message-Id:Date; b=EvhrGsXFdc+QJ7pdnRVtMDiIbsnElUTti10bJdzUTs4hc5T7b88LS/1+s6PjdK1MIv+si3mzrDE8foFuJLgFI4QpnNQS2PSxYCdYtOsdLNPKEWnkPhsqBAt2GybyPA1alxNQ5BZuu7rDEFF5VLV1Vu6EGrUCHWllJ1Y0VDEtVkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jexVHAI7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jexVHAI7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9780C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761987593;
	bh=A8ERnPu7ejnnvSIAzESB8+M9TQok2xm53kCs9z7z1zA=;
	h=To:Subject:From:Date:From;
	b=jexVHAI7yqxHfS79yDmHDU5nxkHRJV6wjOZJG8xpkD4mbcd9TyEAsVTyCe5Bs3DEp
	 nVWy04XgB46Nej6zZqYLcosdB+qkqxMzoLoTYqzbKlmmJogD4MAw1zFZZvEqSYEHhb
	 BLccbyfuLHxPGRY2FM3BfMgIby8k2xE1F4VpkQDBHxUNntN3+IQ3EPRr4lSn/kT06b
	 ZkG8PDf2KFzzuyiafpI+J3lJxS4AuvBI5FQgH408nMb/Q3aYJpDnUXLow2MK1/kHS3
	 Nx71MiVSBAwmY+mF6dpe0uuSazItC7JkNP8w4F3Z9jBJpiqrO38k48k01mOdR1g9Ai
	 RCZZ7BMmzfPTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944DACCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176198759359.27021.11879967833549960071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 039613a7c0b44bd60c237ba8ace8ec98970b60292e72ec11ce3a69a77a17f5fb
Date: Sat, 01 Nov 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761987593
