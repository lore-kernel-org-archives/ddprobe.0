Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B443221540
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 21:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775598334; cv=none; b=dbGtCyOUVXWRaNzQABnfqH/lJO4Sthjs1uMiF99OMwkg5ZQlvMdbE7I6pxJIRWhg7kzQK5mFWvuFml1tyKg8qx4LuGte6rM4wyAt/LV8a8Eo7+YUshfpo6TacV1hxLMfwke01LOsL7WAsJLk0xDB8hfwM4qdgxyWD5WYu1AVg/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775598334; c=relaxed/simple;
	bh=whsXofYt/97EBcRtJpd+8FTzxlTYXYCNrQmoUvdtCW8=;
	h=To:Subject:From:Message-Id:Date; b=NAaqWr/m7IYH9kqfaYFkj9RhcrV0YsqD8lMNPde8zIiNpPgpnM5SS55SZJhMbWQmA+TpuQcTwRT5TpyuqnMbkb+1eRzkRnnhQwTyGY/UFP4Wn4cHFzjpvXHlZENn48xjCYHDIBjwC60O/eBvwy1pdymLpLp2aaUSwJyiPOgrViA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bXprI3vH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bXprI3vH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCFD1C19421
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 21:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775598333;
	bh=whsXofYt/97EBcRtJpd+8FTzxlTYXYCNrQmoUvdtCW8=;
	h=To:Subject:From:Date:From;
	b=bXprI3vHxmGosTTLBjqQuJU1FdMrVxA6bYns7OH0m0ZVsmZ52a/kb85kNL7Mph37r
	 KwK9LxlGZqEnhnVgXS5I2XVJHVsLOQR7vn8/aP3gcQv/92SPe86k0L/sRgUIlA20Vs
	 btos7+7AiqWRpxRt8uCny1oigrnMvKbWyyFfy4GH/6o3mZhbcmDzb5PRjKkuQCnJ7e
	 9AZK4eOxiHcOMr90A+Gzo175qB7cQ7d0RwrLBIOmxwTMOE+kDrXT5WIhyKINM5cxwu
	 GzTIBr8dOtrQmnx2jJVZWET+RvyItwt/84y/F+p2i0gpPaXMs2mFt9il2PcVx8N6S1
	 akxgUkwLIBNbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4B4105D988
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 21:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177559833369.7670.7022678046235485573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2ed2cab92e586928b91e8ef23eb8a400f4d9ee7801b59e4dd40fc8cc59c9629
Date: Tue, 07 Apr 2026 21:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775598333
