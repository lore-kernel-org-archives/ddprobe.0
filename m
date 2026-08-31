Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520FA3AA9F8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788146434; cv=none; b=OKNFHFQZoEiVwaVKnt6lzBMeR+0bBb/5VTaffsLx38+flKpBP3BIs8pzzIPBgn6s/fYASBO5kT2DwSVwIGY8YyK4XBZRPhBP0fvNDGP9FEU1wGx27RXBVb2EcsrCRXDELGVi7eLob5mXZrLfELu3o8uQmqhjQOIZ29yiftWAKoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788146434; c=relaxed/simple;
	bh=4kh1mQoYReKn471X8jWVZtCJinAuKwvDD6/qxKwhea0=;
	h=To:Subject:From:Message-Id:Date; b=jTzo6nxIt+PoMEZLQ1RgRpnvm8JesI/rbamvDCwSlXYr/xAkSSS2q2yyMRizLWH60XLe6hkwWlb+R3wOWFtD9oYdKgkOdLORMBFf+3hWRynBXn5lGajnm1RrBo+nDZa2HvpqonQSdxF1yLyTdXn1p/k2ACIIeEG2OJuAz8oMCjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VbGHa1Qr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VbGHa1Qr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF9DC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788146433;
	bh=4kh1mQoYReKn471X8jWVZtCJinAuKwvDD6/qxKwhea0=;
	h=To:Subject:From:Date:From;
	b=VbGHa1QrfyICJztp/n8lQO0S8Q/3cSJpriEKhJTCaD9GtBADzXgKD0foutq/x7Phm
	 0oYO9MNa72UY5SZtqgj70Mqd03ucaQ4yg6jL+KirxoDDxvJhXjcQKooixv1R1vQGwA
	 AGimAf6wn71T69rEY8ZPQHkwQ+Fi+KqviS0RAzHwVrq/csDRbB9dJpbt77rxbx0G7t
	 MwKg/uE+IRK/1r568smFvl16xEoPEdNaTfy34y16X+hcljKnuhJIctQ6LOSx/hDTOW
	 CBUvlTFFwyEUcpjeoYg3fbTyKLb+5sbtEWhApcbQD0yfYGDcZd9gQb+1oneetsJ1K/
	 APjgU/gO3KUng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA417C61DE2
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178814643368.30231.5515872374493657630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a30fdc50d59028b263d5ab2a3664b59bcbbdc05958a00cc2ca2f6fac3cbfee48
Date: Mon, 31 Aug 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788146433
