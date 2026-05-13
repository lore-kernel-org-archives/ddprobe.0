Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7243A759E
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 07:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778658634; cv=none; b=mRrLx7ClbvuKbEOpRtpsECm5gt1xBo1A3ja+pQRxZuQ/pW6aO3dvVpQWM+b+siUHUh+sK+KtGIp2T1t+TYF7AuciFb0LXN/t821Q0FRWAueGVi4HN1/D04cjTrW9he65CIleCALp1j7FDvYRXQnjeLKBkKKpt6S7m0rVEh850ZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778658634; c=relaxed/simple;
	bh=vBIQssDrQB49vnhBa1J/8qZVgmWVaR6mUhF8aEVrO2I=;
	h=To:Subject:From:Message-Id:Date; b=oIC6ZT2WxrV4KuARj5twOgLl5Upi5uROQg3bHiSRPjrpDUWXucbDJaCoiRpiM7oajo6f3jzPtEGr8FIDb94vzPAFgt4RhlTy7FqeOxRgcDATaFMTq1J3CW/hqmTgKnBcI81rmfcLfarmuOclW3T/U2cdK/svLf/DrbThkkx04vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hYYhcbNY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYYhcbNY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2B48C2BCC6
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778658633;
	bh=vBIQssDrQB49vnhBa1J/8qZVgmWVaR6mUhF8aEVrO2I=;
	h=To:Subject:From:Date:From;
	b=hYYhcbNYPLcI8tMpFMbcSthuAPysQzpyun4vH4CYMyxADUGlXFAOY8BkC4Vcs6xQ5
	 IrPFahDmY6OS+WUUTxXXlc+t+Zms1hfJCdaRDD0OdKNyRKgytFdmc89Z9deKWWwVXC
	 8A1auwq7Te+WctV4sMv1Ww+YEG0IRSq7H9YYWqPYkpX95eOhNE8kbS/D/hL5ZjgvDG
	 dG6nMELdCPI4W6Wo1EZ2ptoLqk3NJJPXK8PoWoSSqDXhp9MbwZR5pK6nLrJXpz2K6M
	 OYhOVsXNBRRQSB18fGfxx7ld4AKl2GATSKa7/XZ1gE3w+TeOZQI992BnbrDbDz+ZjF
	 R11sz//15rTkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B341ACD4851
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177865863372.21310.6174846197377222501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8febd7784c6703ab1b6e9064de54a00d0bf3c70acd1bcd2bfa4aa1d6d2ae28bc
Date: Wed, 13 May 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778658633
