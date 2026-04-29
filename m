Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3B893A785A
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 10:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777460253; cv=none; b=hrSbOt2U+zS0l8IRNFRIgYN4XvsWN/eKdawGbnDHOvWuiYrBXeINY2ZE8OOgY/Mf8OtjNrIrHGRrpfaq1eRTGVoF2s0hGia2b34Ps1ENZFxMZEtdb2YYMijiROvD1NNRAO2678tzrZ2FMmAWiKL07hNZLilijA5H8ZQszbeMBRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777460253; c=relaxed/simple;
	bh=kZQOoPVqRYtrP6sXS+r0O26NdAEtZFZKVFnCHGLNAwc=;
	h=To:Subject:From:Message-Id:Date; b=EwRGNK1rOFXLYOlEOnY69aKImeNsNNPpv8/jrCTyzGWMc81Nun7ACjiov364whmxj4xTCxI2mP6ps8BVGws95LDYxMjdKwgEZ1s/GGjZHGOftXORaoni2aYBZWmD6QGYhVjgjHBA5B925q/genOJf+EnpMg8vvOZc+hKSkzoZjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCpPDKjN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DCpPDKjN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B83A4C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 10:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777460253;
	bh=kZQOoPVqRYtrP6sXS+r0O26NdAEtZFZKVFnCHGLNAwc=;
	h=To:Subject:From:Date:From;
	b=DCpPDKjNi5cdYbRusv8XSIAOjNxjZKJz9lZUIsmK+ILeor2yXPCrLgt3fMbyulUL0
	 divt70Y+gS4gvLKpMI1S5/7kGl3ENagWNuP1BkF7Kzs2/h9Ha3FhWPtKbjR/iIBX2z
	 y982ic0Vigic+eHHhHgzk9Zpk9Z3IRWSRNlhj0GYeOCqAOockt9y3icQNAeHzpGd3h
	 pV9zzEB2jUdA8D6VvRx8VdSGXks0nmU3ev+cr0TZXcJ8uR9LPngmokl4OCGXG6kePQ
	 OYiaZS1S5jWkFqIb/GXU82tzeZ4VDflesNENOFgRfdszpGUuRCp6xwlHRyTF2FN1K8
	 4fmu61fjAib2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A997CFF8875
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 10:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177746025368.31895.282922276566769577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66ddf04f3ea1c7b526d0604b30457d29a009d4853a73d839a45cdf8fe57d6abe
Date: Wed, 29 Apr 2026 10:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777460253
