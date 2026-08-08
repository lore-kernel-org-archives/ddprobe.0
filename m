Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4735A205E02
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786181434; cv=none; b=KpCqfvyVlLyUZfU5vO/Qb4edxuc0+AVavsp+aPgryuQi9Yth8SVgV0vqIpGgGnzcRQQ1DdcFKSXuNoVbtB0FItB0sU7v4beToNHlAZhklIHkO+lzk465/ZR3jIRs9owNFdNvBvXxQoqm5ajH71GBaJSi66Jwmn8zqsSg4pAIwFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786181434; c=relaxed/simple;
	bh=T22Yc1UpEXrnGtGnkt1aSjQymCfmVW6BxNa++RO0+bw=;
	h=To:Subject:From:Message-Id:Date; b=n3Foms/PVEhTrMviwVBk1DCdKPhTMyUpuvgRtDKiSI4jzkx772VQ3732sWclZok0dIlLqyh7AW2eY2FZBgpqBe63x3tr6oHeWZAXp5IvYegO5VTOWKBB336DOOqmF2GXCWENSpRmw5TN80f5RSvxuuXtUuXPfuJ5mKGMuiw8mP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=alhZ5HRe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="alhZ5HRe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E60E5C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786181433;
	bh=T22Yc1UpEXrnGtGnkt1aSjQymCfmVW6BxNa++RO0+bw=;
	h=To:Subject:From:Date:From;
	b=alhZ5HReI6E6EH5bFIqgcWZq6paO4dA7GBCgRhE18oyE+BucdBVJB4MEpfS8UfXHc
	 u8lLjtoJUwkj4LtH6LsyWQVXBmgxyFveoXLdqeKBYiFTuPJygq+rACYME/lxER6iWY
	 T7foFzM6Scy6FsJ0qzTufw3baMROVhxkvxUmRiwq+zp4mTCgdFu2dTqo0AZUWG1rzf
	 zagByCaX40Walj1EwaF1ZxkTxgFjCJ8Fj00zIk43Gz9OLii6WaZAhbp2NyMQrWzSe6
	 s8zsI4AmeH7MTxLorxogiM2uLeNCo8l2T/w4HB9Kvk4x8RYqZPKMmUQI49aMhsDp7b
	 ACnEVBRvPCbZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D79C5AD2B
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178618143373.10149.5038590332769106933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4f34fc70ec453062e6691f236b7ac19278e09ebfc61edb5923d0c8bd73002dd
Date: Sat, 08 Aug 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786181433
