Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A25C40C03
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742150994; cv=none; b=Gvimj37XK0vdm85AAPHvB3CKX8phY9mgjaQCFqG0bp2hQe4noLPAIhdglAQ6g11vo50bT3sNMy1dnUQfkaZocil4dxvxWodpaF+Sbvak6rfBfqSI9AaOqzvAVMzTSIOwLGFonAvtRBhETPttCLDch3HYBTG4yhpmrzRdIgalauc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742150994; c=relaxed/simple;
	bh=HV4vvHAHbHjRr5qNfWiDhKwLR+AMO+x9PGmSjatECsw=;
	h=To:Subject:From:Message-Id:Date; b=NQmpZH9pfeG/DxI1ySQb1c3Tt2Ydc23rEoAUugWBncjqmUn6EYMsfoj+0gKWxWSO9/LaMmtHuy30T8BJkQd4z3AWO7YYgeMcv5L5QXDLTZOZZEx/hIzrRW5g+FoILFnP8epK3YTMIbyjzJQor0VfxJZnAsECZ1z3Q0AvEP9B5Sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VBgRisU4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VBgRisU4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4612C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742150993;
	bh=HV4vvHAHbHjRr5qNfWiDhKwLR+AMO+x9PGmSjatECsw=;
	h=To:Subject:From:Date:From;
	b=VBgRisU42DE4H8S6U9GcqD0LYAY+8Uc43+VlRCUb2srWvMMMmgVHM3rLLz1RsqfLM
	 /T03Vxu0d+iGs4735vF1JPQ8+ounC1yIxtldsyJu7ElRlcJulZiThxkmcqfPFrmHNc
	 7g8VI3ogFRtTtCNB0i+aINIBP6YMNHMci2+ZLnDftSbTZ9OdFHcgJTMT36bx9DnVM5
	 grvOg8GwPlxjKdYhQcB6mHxjxJ2RRUvPA14DDBYm+BxU5w3yzz40heLAPpEWsdhpIs
	 qyIEf3ljxSZ0qB7hoAq9enGx+1/DFzTsXp+DphV0SarMPfSBFkW4Bbr51xOcPt4dfP
	 ad9HLRbQWk4Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB938C282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174215099364.24286.11887897367307024113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e85bdbc5c18d3af88e30e25c6f3a2026a120fab4f0bc9765b6e80a109baa8a01
Date: Sun, 16 Mar 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742150993
