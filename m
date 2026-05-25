Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228793E5A0A
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 09:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779700354; cv=none; b=mgfegR1cMLD7YTBAPMUIm2PDaoMzvaHRluxizrBgFZDiKnV4rQXpQD4DH1f4emWHLwjeX4EnovELLZlAnju5uwFM68bgLDMpb611NZ7+4IQLp7ctN6Lsre82U+E/VNktqDx18Q3lZGfPeDyAcJfPfAh/MlSietWao30yOA3csfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779700354; c=relaxed/simple;
	bh=xfnc1F6R4twXB/0AjVQEzKEND2vu5f9djaFLLuNzdrA=;
	h=To:Subject:From:Message-Id:Date; b=SclG/7bgHJnE74AeIm8oQ9ocA8OHGTsZt0QZHVQw0W4rQJKKbrUNzAXlVPeUQxI3dFmSKPKOg2o8YR7SNqhabOl6Uun672KBSL1z54CLaPLwhm30Io8531iwwIwVbAjdxzfG6hWpwsyqxcSysCmBbyXs5eIvo8OSBlALpJJ+v1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKQgFgp+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKQgFgp+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7493C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 09:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779700353;
	bh=xfnc1F6R4twXB/0AjVQEzKEND2vu5f9djaFLLuNzdrA=;
	h=To:Subject:From:Date:From;
	b=oKQgFgp+dYlBuqF2e/PK1vMgDXcTF7JeBQJdyfIPoVu0gTvw/UPFKhSmRl3hbS9LB
	 iyc1NtjqtWzQFWF9sBkj8shJHVE4ilGRgRT7bwnbNeEGQGy1NPTrRBaVzhzWKeRNqc
	 +7eo4JFw0bcEepZpL0chiGs0NFO9pR7FflIB2/hE1hzNTB5axbby2wQ3V3YkbiSUX3
	 JJO5sjokGrF1M4wIQNnt7o7F1ZuSsWUjsfLat7ilSbLlYLX5Zzna6EWGaToVIT4ZnF
	 DeaBsC+HjJuErcZjg9uMHVga4fgX3lSN15Nbs7J53wnPJ6eggf5x5i6xm2hZj325P3
	 htPXOSz3ARj2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6915CD5BC9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 09:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177970035373.2128.3597812519166139998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f03957d9c02388932190486479c20fdbf8f55e7042f4a85fa1b0b20fd0786c55
Date: Mon, 25 May 2026 09:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779700353
