Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54DD039E6F8
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 21:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778363914; cv=none; b=QSOE2/M0399ErzWxrVuRG/KQM2sWx0eXnBaXOe4CRQLS/DZYVlI1c/TddJvHmVo0geSXtpWY49ibX809KuSoEUMonFexX/p0EbPdYV2QstXLTVSkbIoNcf6h6dw4/ReyhpP1Lv+crf9KpR27EONgxT0+kXMOfN3+ExukAufBbV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778363914; c=relaxed/simple;
	bh=xh3HzNSrHWT4JvL1CzJBxi00PGYyTQuE3hroN10IhnE=;
	h=To:Subject:From:Message-Id:Date; b=jVlmVk39tvRJJWO0Ub/HCQ6OAHLOw6Mafydce8YwXktupG7mbCGNDREv1w6TpAcFrNouZ9AjJlfVJ6Rve1wf0Ta6XMGqe5xoNz8YGBxe85FQKCYChMgfoqRCrAZgpdFyOSzMzSLCe8BHofCH+5AUP1okzUb4aHnM3Ezututa/lI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uukF1bh3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uukF1bh3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D78BDC2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 21:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778363913;
	bh=xh3HzNSrHWT4JvL1CzJBxi00PGYyTQuE3hroN10IhnE=;
	h=To:Subject:From:Date:From;
	b=uukF1bh3mypKPv/WR8pdRtKouaf2t6n1qTeIbb1zFPFVSQ+k7Uide/CP4YuxkesfK
	 fIOz5udxlPIjZ/XA22yMCb2xZ+pgjCm2Mp4D/T30gbdskI+lPIg+EMjNOO2WsPfLmo
	 sQpM7wyElNI3FeAM6GMyDf2E7BaRO5xgnvOxhix15QICmDZHzbsLlt6PiXmhAU2wAt
	 2CzE/66udkU9lIbCSuZCwUpVUmFh5YWiTv63rrAHqj7bECT6hpexpHzMnXphafxFHG
	 N4gBJt/p5lrzqmRxgLNiYsEfYg/lmzJkMJcZAgtNa3QyhH5NrQwvKMEQL7Ur5v+Kxy
	 4mjRXWyadh3wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCC1FCD37B2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 21:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177836391376.28529.10186962208586185933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 934103bfd66b5bff0085c9aadad25341d5171e6d4c5cee64d74220e0f2aa0587
Date: Sat, 09 May 2026 21:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778363913
