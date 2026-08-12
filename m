Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17CC646A5E6
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786545635; cv=none; b=rMp2V+nDnzVA0o+d1r7pp/iLs5fVepxd83HvmOGst3CmxX+c7yLyQ1u/W1yKiDY6tcQ3+eJeHiJMWpMIXSN0pZKeKqNhD2Q1HSg8VngtdjGikfVI3WYwoaExKy5Ki7MJ7wuttf2AT/u8Qo1s5pEEc38JVtJiH605aQF4pu/DKjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786545635; c=relaxed/simple;
	bh=EhGtcsciWVcIm2wiFvtLpkiCokkEJiI1Bfo6WToxWhY=;
	h=To:Subject:From:Message-Id:Date; b=WH2nxkYLHWDoWi2ua9qWezdnwiIOkxARUfqOwvpI/LF5AcQWhjP62QJZai5ssv7m9TpoaVsZFRmoTJhs+/MK1y59ULFLvB8EYNtmS5fhx3JOJOCtr5NEyJ0rVmuCDisAAO5sP75yIRds779XbepDa7YUIDJpcv4IPhzaaBNV4os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kyn9e2B/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kyn9e2B/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE900C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786545633;
	bh=EhGtcsciWVcIm2wiFvtLpkiCokkEJiI1Bfo6WToxWhY=;
	h=To:Subject:From:Date:From;
	b=kyn9e2B/wTOPb8ajkVqa/+sjI+OhHvUyWszqMK3MJ2Yml/vSAqQq6p2HtOCcbpbL5
	 jj6rdTIpxHqAYx3mDLTRc49hy+3YmVbUhxKrSJPfTCVt3cBbS17T18FI2trQQWr3ML
	 E4LBX2jkihGGjMMPfLtbRoUVmveoYT1YxsXp+xO4x/9mItdHlOV50GQcmT4IDfUdgz
	 D0LRD3C7P0xxSRdwxol6Ckix8zrN3fE1xIADCsxRL0XRea81JFZ6eQVH0CEI889NdM
	 HcsnsPHwz7vHcgYq/xnM7PbRvxXMP3G1SFnhmBEsa/03oENXXSM2yMrzu4ZljYdC9i
	 ejnKrm1tE0aKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7F64C5B572
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178654563373.8186.4895913596138216154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df43871b7351dc2022397bacddda65bfa081af5e0b7dc077e3dc2ead65e6c4b8
Date: Wed, 12 Aug 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786545633
