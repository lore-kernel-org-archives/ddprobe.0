Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E01D389118
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 23:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777158454; cv=none; b=CzGCaOB4vYvykgbGaDGEV4NdEt2Yk5DdxlneaKyujbE04jvjQWBk2VVemPMzyMcoBnN8lbJWm3UGav7Kov66ytv+L60UGQKc4UAHhTQ8PY/SAiOW96kBxttj808rbdleoun4wFB5d6Ta8TE3cVwoYlfp+9aDwcvLrD7qJuH6Tms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777158454; c=relaxed/simple;
	bh=AURbmMblsTlkDLdKNkKcTCjBZVaPZIBpI+stjg5uV2c=;
	h=To:Subject:From:Message-Id:Date; b=gbykKkKZjjPlfIm1HtFRhxXDQfTAfIzvJrl/uh0qxvAMVn5J4r7FQotxdAtfWdQg4zkWI50eUSmpj8ektJCsYJwqXS3AB+UolnwIMpSkDYb/5AjtmFsA+XOFaDtja/OAGVDLIx57UrIG8DHFjjW4VMtiQSLaLRPJ8BJdKo/2g/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tRj0Oemx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tRj0Oemx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1ECFC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 23:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777158453;
	bh=AURbmMblsTlkDLdKNkKcTCjBZVaPZIBpI+stjg5uV2c=;
	h=To:Subject:From:Date:From;
	b=tRj0OemxxXoBZuy0ikrXi2UW4/Thfophc0eSrhkoKje2/0ziyteNKcBXFsm+L4G8d
	 Hgt2qln7hwmPGCCWPDIPFuVuulVsopCovuhB1rJ8InrTloZ8NYFY8A1nhdgZHyGqTc
	 lZdmoMhtqYmAdiRiFfYHM3b3yOM5/mAQrs1ohx4FrzuyE26iIOYgkbiSOyHz03CSLn
	 xJsAAu/WLLCe01lXfm97mqgkpntDv30uSiMXMlURtqsko8boRg39l7z+FiBjwj3wQc
	 rQCO8hCru+UKLupdWwCc0p+zwUZ8qrd962QY0rd+jQiB1LBmCu0YGovdm70sAINCFZ
	 T5JteVgJX8alg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B24BBFF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 23:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177715845369.2575.13277408304886397994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44f0ddbfc6379b837ba7db71c44842bb6af710fe1a70928c9bbe070bd2efc584
Date: Sat, 25 Apr 2026 23:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777158453
