Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 616D06FC3
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 04:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717475123; cv=none; b=J3T7cmssg0jrq87zhJ+fXnHwfQa96OGNb7fObPfKFLveTDBLUHVZ1uxpDA7TNBIJO19kipkjOIcuagkI5J3ozqfpI5T9kKVc59mPZKfRf1fSd2shnF2GQqFl2Cd/tvwfekXSbrP1A38mW/ZZqV6UPZgzyRy/A8m7Rmggg31xRaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717475123; c=relaxed/simple;
	bh=oMMWm/Mcja2URaqlJG84tm11yXR/EVBlBigRfvvcoKE=;
	h=To:Subject:From:Message-Id:Date; b=dgMS/knoTVNqDX5+/+NAyauVtv6dINY6THmL0Gd9+v93t06+viV8+49SjjoRy5xBIfPvZ95WfVW09zF1T45NjOop6DQvlZ2cYaBWSGgs613xJX2LKMU+wQ3yEfpjauF9Jdpstm0E/VGz0n8BuOQlrdgpPekmcb+MLcoJMS/WQmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gWU3deCd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gWU3deCd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6B61C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 04:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717475122;
	bh=oMMWm/Mcja2URaqlJG84tm11yXR/EVBlBigRfvvcoKE=;
	h=To:Subject:From:Date:From;
	b=gWU3deCdzhWdpOO9+0xulWY7/NorBxicbFN18tlWKnYfmB3b0DboSW1Z4SFUe/QN6
	 w9XSS95gC4Tipy0sp4UGcefntP+kOwuCV4L/F/JYjm9MiYKTa3miKX+eDa/x+nfJob
	 PySac0KTwuqvMbgH+F+28RZMuodOfIA7XAL+7ppepCkJWeLk3NA76+d8HGHVwVWkhL
	 sOyGF8p/EZKIHI3ODL3g98nUlaWMuKkAvbZk8mi8qZZTVQEUJ3yW1h47BqlhUrJDMo
	 P07OOwNi0+sazWve1dhYZt1NVp+xohqqYqhA5Aa4swSSs1lTVGiWKm7mLlY04pbOEB
	 y+D6q5OLxgFgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF7B6C25B74
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 04:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171747512283.3236.1243064460215213937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7c46538d70de3374b8c10eb8b6fa353c1259c9ad02a94684134eb625df4cd81
Date: Tue, 04 Jun 2024 04:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717475122
