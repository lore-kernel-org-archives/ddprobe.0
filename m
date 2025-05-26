Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D59CD1DFDB9
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748245193; cv=none; b=NRWov7GF6EWRiXsNPtlUiVypPETN8x9k+gs7sweTx+wGQnGDk8xPpstEXcn8euZ5oJYPn/519HLrN6Q4gw62xC6Cz6a6u6v6GV9ODRED0FIveVDN2CXsKa0SgvgDUhTGcimd1bplqZVQH5IxZLtDDefvUm3fQJ1H7hDTbCOG4l0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748245193; c=relaxed/simple;
	bh=I0W5EE+VMQ93riR1FFd6WAgAMKMys/YAAroiMQNtsJI=;
	h=To:Subject:From:Message-Id:Date; b=o1zsFouBltlof7HU1D2gBaJ8ZCD+CdaI5O5UauwEvY5hnt5A3a+AdppbAytPujy4YH0iHlAsNFgePe4uqwlnjNKfF44WwvFrqvZhTL+Ctq1s7vdFtxRH63ODwC8eh8ygAMSNhtJNJCULJJYuF90tjDC2qB+ZKmYxtl6dtrISjyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XRnz/MQr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XRnz/MQr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27EDC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748245193;
	bh=I0W5EE+VMQ93riR1FFd6WAgAMKMys/YAAroiMQNtsJI=;
	h=To:Subject:From:Date:From;
	b=XRnz/MQr49/YQVTB5yVpKP035qA3JiRgEvw/zrvbMECVay9Xzqs7rfIZQAtfL0utY
	 Yu/LfhVYDr7eMv5uTZrIOAPJP1Uo8uzFbLaIx6ARdhr6hA2EW35o/5gSHPIWDWwDjt
	 MhAYmuL32Slkj9+dkdu2xRChX0fMMj8WmCQXeOQhmomkgTnijeNyQcdc+ZNkDz+YGk
	 GC6Hw1e0EhsMtW6kBisNCDXx+N5asnh6SU55UvdgM+e10TOJ+tuhQT1y/kpgqBDIDm
	 /gRsnL62NNo3fNeMq7WmYm3Uwj9s1GL9cdd+OVCl3zD8uVaSX5l8InPgNGq3sREDxN
	 BeC6cF06XLyhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E53BC5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174824519357.2364.5726879207413553109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 341f3be58569a72325d26e02553f5ef6f630a82742764bd858a85f700596c2aa
Date: Mon, 26 May 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748245193
