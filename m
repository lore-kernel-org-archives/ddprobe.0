Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156D82566D3
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 20:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764017574; cv=none; b=DKMirC2+QnMF/RaQD/dGepyCRCKTIyNiYCkixELpZYMGE6s/ozezBg7Xh33mwkwhTK/D+fDCSLMjpGls6YfAcFhePCUvJyOsZnIqOvmWpOiaUlFfFqEgFDGA2aRBk6+y5URtJHaAIuSJeVB7E/vbqh8FtAuQ7UcY8VPAXIv5RFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764017574; c=relaxed/simple;
	bh=cD2L5U5/V9Bl9NYpLW4fMinO/5Ssotnsw4VTUvpVGVA=;
	h=To:Subject:From:Message-Id:Date; b=O+foRjYs1TCJ3eO6ASmDXu441IzgV2IF0irafirruWHEWC8FTq9RTmZ3BuiUTO7tfpwb85mLAd3mr9Ak2Ob77UMTGw7hrwwNZu9nyTYn3WJquLESjSlai+iHrWva0vAqwbot+9KUu/C1HjY4PPZyNUE9pa1S3ceVwc0yXJHXwGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FhnsF0L6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FhnsF0L6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09D5C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 20:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764017573;
	bh=cD2L5U5/V9Bl9NYpLW4fMinO/5Ssotnsw4VTUvpVGVA=;
	h=To:Subject:From:Date:From;
	b=FhnsF0L69CStj4aMvhkokyNmFEtUO5eUdZNnfC3umGWbQI7CmHJqnIETzpXvoc5Oj
	 3UXJvd0Wh4B5kPCQwdVFdJ+UzjgaElE8g98uEopIKIel2wUnvKZFnAEvpgHVUkhaxA
	 3es9/qeX+F4dBxigqIfjG74vVvEfMwMc1iOaUzukPmS750LgiUwUW/80X738s9pNOT
	 jt9YUTPDBgiZt8/9c5YEqkm2Rg34esw7VCVjEKHwSFRPJ9P6nYLXPgkMG5Qabnd3B8
	 ZAIYjZMhm5aAoo4W18uwQ0gC1MUKVBkp95WSOrmAbNy0aM96r1F5QfyNZ+n0GgI64T
	 /zIHMo6hoDjmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916E0CFD359
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 20:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176401757358.15508.10922386367349100382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb8e13c821f7dda3ce1e9290c7c3ce3bc9a2af102925cca09d4741b8b04e424a
Date: Mon, 24 Nov 2025 20:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764017573
