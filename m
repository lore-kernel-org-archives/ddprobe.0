Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F382673B0
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 22:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788472834; cv=none; b=DvkRmb3QUic748O5+qY+0IXCxLo36Dqp8E56N+Lml9O+l2gV6xO4YkvcFG5UgUcdwiR3Yhs2NUduJm+lMu0wqinpHUX/kQleF7Aq0plRs7YUgikNSTD9GQOaCGLcka/IKr2yCWwZaWiV3mxvjVR37xC+A/6G44xsAQ7uppawemo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788472834; c=relaxed/simple;
	bh=HWnCNUkRDnqtfHP35KeKgEcZ4+2uOhlmTCfmsON1va0=;
	h=To:Subject:From:Message-Id:Date; b=VvTerQ+szEYu1yW3D7FPAPqIZ4s/Z/BPwAMFGY2wQIv2NcJZvzvMLOkT7ebVtEX8rsWx1v7G/6Pm1H++rbGrzZuEpOePU+/G2D8ZwuzeBiuP+KIJvVMD/j2eVupy2d8Cqa3j0Fiog8zIVpmyEVIMcBy05aw/xFk2Mz2EFJV9Acs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FvZGflWi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FvZGflWi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5D38C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788472833;
	bh=HWnCNUkRDnqtfHP35KeKgEcZ4+2uOhlmTCfmsON1va0=;
	h=To:Subject:From:Date:From;
	b=FvZGflWia9LJalGPshGxnXj8lnEjDcgfVvcGjJXwf2e9TVq0ChugaWCAqIxvZT2a8
	 WD4Me/i1qkBzLryrN9HkW9OIUhK6k/38J7WbdR+DFXf1JhVcerS+AZW2Pm+MLegW1z
	 3yIIrmboDaaMPQrahtYPjZrWzNdyBo4GdWKMGoV23KoAtAVOOPB329/7OZXKPU+oA7
	 bE0RNtrYQmv/dr2ovQX3DoarlYO+mYFgysfQmdBkZBYtOIC/vfuwMZe7059X0FSLP2
	 QAkgomtvy1oukpxJXzTqjxTvVBjfjM6DWOLD3MDL0TyswtKhKCJClGVDqseH+zIIPf
	 bmuaIgkAfeb9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9F6C624D6
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178847283369.10628.12282324721157835392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63878eb9611b702b4aeeacac2a6cde37e6087a6f60795bea9c10b610160743e1
Date: Thu, 03 Sep 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788472833
