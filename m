Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E29345729
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787373634; cv=none; b=Kk3RuVktxxTd6IhiXDvs17nevy2lcaUj8A/fbHRI9lHJXkbDdd84RlJ2jh/0MpSO8o/7PUq+nnLlCsDNxVFcPE+T26F23RY6vNXqh3vEA16KfyljPwX9nydh/qIXAnJi5OBXHhLzIhg0vv8+F7J1ys+SGBWpGFN2EqQe9me95jA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787373634; c=relaxed/simple;
	bh=z5cf6fYJpI/za76RByv3utQQVjQaysIQq4WRp9lTDz8=;
	h=To:Subject:From:Message-Id:Date; b=NrRP8ZMjz2vW6Qg6mLiImOC2U1NQkQce6fUrfeciPF27TNyvu4RxZoX9qyHPWM0oVr+Mbhkkib2o5jWHRD87BOPgmdYDQlKayZNtXXiM1qdKdIexzaHqXvxaJheXFBI9PV7X5WX8eulTmalfKkJCA0QUi2FVZggltjD6y838vY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q0ExxxMS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q0ExxxMS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDB2CC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787373633;
	bh=z5cf6fYJpI/za76RByv3utQQVjQaysIQq4WRp9lTDz8=;
	h=To:Subject:From:Date:From;
	b=Q0ExxxMSU0bligmnO7813Pa1yvRVo58SFTFTfHLxNm4gBODmOCaw7at4fmgUpfHqV
	 lO6ixIPb/49C0JZBZY1WYsMkHwLnDAdE59zb8vVPa4LdUgwXz5MxPSd8eAdnmWfdX5
	 bFdlwXcpfmIUnhpmoduva7tLkKukRBmIkdFB21PQNHetSWHV7whUqOXyZHs1hVEgGX
	 QA5ZA24ywNDISpza+nvuRdu9Gs+fcjkV1Ur4kDC4ff96/Y2FGkLrHv4l6s/p/xEO47
	 Csv3TOLE3u/SzE3d01vR9QxGkZMLb3LPNnmxAooY9cBHLpw1USvEY52MatH6Hl5uDX
	 oTbjNrd4k6XJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B83E9C5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178737363371.2320.14089779798758911384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43d8addf5bf6cf639fed44c4dfaf556b273a97ab8e4c2a2fe937b0b3a75f2640
Date: Sat, 22 Aug 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787373633
