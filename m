Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F301FC8
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767569634; cv=none; b=OSiVPTDuEtkyKy+bAuglczeYOxJkM95EoZgnkwLTwa2l6VdXmYCrXhAwc1NmcComWgCsa2yCrOrDkdl2cHPi2I/B6gf3yWv84pODdx2AVHdz9WgFI9vOrTqyubIJc8xDIELG8OO5ZEyM17kqGRc89zgj6XSOGPxbfn7n/EsbnEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767569634; c=relaxed/simple;
	bh=HiTRFgvCccRpa0hifMRPeMhUznBRXBYTToLHwtiqTNo=;
	h=To:Subject:From:Message-Id:Date; b=hxdRL7b8wKVmKPc9Y/U5kUU+aAv5wHqkLz2Q40iKRgQGRImz5vEmFCUN+5PLsLQOALFrFza1TLY7EAjtixFhBYY8B8u697QxMb+yjDvNPRdDh9vbvl2DyET+l/D0FtxJ6HlRBuYH8e4XELOFVE6gIJSYZ/knSbGCxLDW2WZRGo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKN7HW+b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKN7HW+b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3489C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767569633;
	bh=HiTRFgvCccRpa0hifMRPeMhUznBRXBYTToLHwtiqTNo=;
	h=To:Subject:From:Date:From;
	b=PKN7HW+bTX9dhA4QLKBYl/EeRMaH5iSXARlUT7WgmKy9knpWeipekxODbjqlPwSnD
	 X7N1WcybrJ8tG38/Bzav+xzgtBQ4/ZGyKBv6d/4xyLx8a5h8NMSHNLoOBLNF3mxmPk
	 mRkDiv8I9g+h55n9Z7b+LBmCYXHHl2z26yEBXmWJ1iXdRtKfF5KtPI8uGkXS1Hd3yB
	 ww/Ncgu4m/xI2uTsduDvbIVMyzoS67eSkIDdGOP09NQEXaHKHcFyMyJGqUxykZwRBB
	 GgG27SBVtM9GpCke1gSnveHwG2ajI9wxGs+p1Zz9Hsa/pV683tbeD5s03QBQIs3blL
	 gZXBD+f7MFmCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91531C2A070
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176756963357.2369.5233405198605632520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b549eff7afe676686a2612cee658eb6d209d83834605caf63d12f8a2dabb4bd
Date: Sun, 04 Jan 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767569633
