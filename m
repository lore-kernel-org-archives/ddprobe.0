Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CA72D372F
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751471394; cv=none; b=LrPA79b43jKzPCePmanvyuGSEgwB9J+jWCI4rEC9waD5tavnOMSmw4xBrpDKfxZr5HMLgORt2CB3NKkqyMDktU0EABIn4LhTm6d1W38fwLA1C4r8Yx4z3TDs2984ftqY9NcoHKqS4L8VkHAyhoSV+sxDxo2wRaOPsiUtisnN2WA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751471394; c=relaxed/simple;
	bh=Vd1z2L6gsV9sP2ukOY+sU23KWMVBjzSLowjZ1fxOPZk=;
	h=To:Subject:From:Message-Id:Date; b=Kw64tX/WTSP3OON6sObIEp3qCcymYk1GeYfq8OxkSy4DXlKNu6Kvdfk17H6S8ANsjG8REVt2+yhfl8z8MpF1VxPfkgRU7XI7973dGn88P6jQNVtWaM+IMaGDw8iboUJqJLfITe6z+ughIzL56vi82nLNutPbpMlytCCCpZ85AIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dcAA8hkD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dcAA8hkD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A133EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751471393;
	bh=Vd1z2L6gsV9sP2ukOY+sU23KWMVBjzSLowjZ1fxOPZk=;
	h=To:Subject:From:Date:From;
	b=dcAA8hkD+obTpFzo+xpCMszLLedS3LzE0blgQPg0wBiZtgEtw5YJKK/RptV4DUXh5
	 Bbkct3TMc1SSVpFxZpI9mBgHQeUewMgisVXUauQ63PHILqck0uVpPMbaZFHYM83+Sr
	 x1uHB5k5ieF7oHz1WQBVhthyT96vVDfpZiDCN+fQkHzvTRd7QJ84frfcEccHwSYtte
	 EcQ+qs46NEeSI+I2k8KLD9F3DDm/kzvo6LvSD7bJNvemJUwWr7OwAblovCmOOR2ZN9
	 OA1bDFHk2a8ZVfI3W7xbmS7mtZmQH4lMeHdLFW7ypm+pQ8FvE3COTGLUBgWSLd4jD4
	 p9cM7zEZEOyXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950DEC77B7C
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175147139357.11145.16810965939695453023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b273481503e784e26ea8d371061323a82e0ed3d33b2be9e6eb9c81d83758ee6
Date: Wed, 02 Jul 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751471393
