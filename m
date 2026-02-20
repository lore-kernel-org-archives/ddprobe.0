Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1516032E724
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771587294; cv=none; b=bTtO8vJCgRG19dzp65mtDP9KYTEFMK49972LIPSAgUCho9GXCEH7PyKESTKTyFvj2fANRFGyiGV4tJunvf09HMqW+eTM0oM2l5ywOxzRs3vwB0MNMbH0Qwi1yDr9wS6Cke2lx3KgBaoa8pGHxPNeoqK7yd4V+lhnAaagd0NtkeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771587294; c=relaxed/simple;
	bh=MRvVeARW0BbR9ojSNFbJ0+UMgMxL+RcJWTtpmabo27Q=;
	h=To:Subject:From:Message-Id:Date; b=i/zRTzqdk3bBkzxSLt/u3z1J0m01YduqGRbibMGQGpAE9lCXxuS+/U2vwqEDWkrqrvv8Z0nqqBboDbPhl7r9775PGaTMScGPxA9lR9NF7VUO4LpjxXITW3KhYMMJEeLfgEMrtSpV6PJJI4up83VNFy4Zs3f/W7puB0GHykXFVzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BZth0Jg6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BZth0Jg6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C2BC116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771587293;
	bh=MRvVeARW0BbR9ojSNFbJ0+UMgMxL+RcJWTtpmabo27Q=;
	h=To:Subject:From:Date:From;
	b=BZth0Jg6ZYCSTbpxKW94QhJEphz4jqvCRMDPeeufXSbh4h1UKTXlA+riEdMDygd9n
	 VVDxpDjMViRE984IZmalj8ZbySHRFToNqEW//TsyWrTvZ/j5ku1v0LMLMMBgK2NQ1K
	 jPBsz6Gan9fz7y73GFTouPXk5EtPrUUP73wFFd5NqDzUquVb3dxUoVHXux4AOHGXVz
	 cWU2h0D+13F+OvB8M2o/pHa95bvDk0vOV3zgBJGC3Sn6yF4vc0UZ+ULGYlolNnLeLe
	 ZtdNjaUIgHcLzCRlIXpj/iNHxwZucKlI1IDlJL+CdXlGAr4CYvYbWt9z3C3jDtjoHy
	 vmBbo7THiI5EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93059C5518F
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177158729359.25845.6755815066784336558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7e056f5815535e99f368cd8a073f4d13009de51987e2ebe570c8a586f488d99
Date: Fri, 20 Feb 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771587293
