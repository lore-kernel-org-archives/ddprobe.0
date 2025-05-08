Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5486E27CB00
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746720594; cv=none; b=WO8Az2lYKVM1NiMHlU3jneLFSWFv7nZzFkrRRqkfZBxfRucQ+1SwwqHYhn7Lu/HraoglWVBPCJjiM2wPIwfhHnsF4iA1SknVrg7js+QoOxLhCHHc9xrJk5vGmFNRhKs5sHDuOAwZoDssQ+bWiYwtHZn0fIpKKNl4IkdUyMjMg0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746720594; c=relaxed/simple;
	bh=SoTGFkx86gyni23vzXD8YTeHrSoxpMcbqtsz5bOyV2o=;
	h=To:Subject:From:Message-Id:Date; b=NIAFAOhr85VO+qMnAN9bFhHzgRg+oh2RZ0j70babZukoMBvOx9IdL+kRGXDQhurw6TihkfK32amwUpU7+idwfSXTvIDCZIRiLmLOKHlKfb8jhvw3vpfBSG4M/79C8HheeSHwhOJmcPsWGsfZ1y5Q9cbeRe+7BVwXyDLkUrUO0kQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lyDQYBFm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lyDQYBFm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CAAC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746720593;
	bh=SoTGFkx86gyni23vzXD8YTeHrSoxpMcbqtsz5bOyV2o=;
	h=To:Subject:From:Date:From;
	b=lyDQYBFmMArNwubXxj+36AJyQaegIcXrzV1Ny8pbYUGMvs1o0faL6fKpPnf1Zx9+H
	 hrzscNSTBsn6fXojezHxakiaYVvHZpCXCE+UIBnwMARx3jfZhrjuh6gnQBZJKjdYtG
	 YuR13n6D6Qb8NRKxyDEqFH7dUvPqLGH5WeLeapCOxYg1FQDudtrFvHi/NKAt3Q7DVn
	 tV2PW8U+tLHH/zHix44bFAf0RHiNV3mUnvv++zKFslaX/qnahfksqhB2arOI/mrIsd
	 81IYO2ZaXns68k3Sdm9KBXR2XLvx1dZWF982IAC5eKHhxs6BUHgN3rtvXarCypVS3n
	 jykuKm4SkjPpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941F9C3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174672059359.19990.2738460481986980374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ed0794a67828d7a62d21a0f74c88ce9d583bde199b3dc7b0466b776bdc6efa0
Date: Thu, 08 May 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746720593
