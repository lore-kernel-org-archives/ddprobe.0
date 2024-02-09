Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21832376F7
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 12:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707482897; cv=none; b=LyPpO3WsVI3zo6+AjS3tGyKbULLQiVL+vrR7yShoBzU2fCOsCq0uQjBSZ/EImec1PP7VSNE2a1WLmBUqlTVW+x8Q0wjTLHZynEppysCgCwwG/pSWNOFtnNRNcMKDaslbI+JUamQXLHzIGSOVPJdlKjZSlxXltNiOWxfSdg1kbTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707482897; c=relaxed/simple;
	bh=KXVynuukX4pxqdeYVDYTvgGpl7hK12h0iNLwrg0j+v8=;
	h=To:Subject:From:Message-Id:Date; b=RKiV7ac+CvxKy2xiLuHMi8V5ZPDxw7XE7GooQkVHR7UPKZk66mABjsgoKKmQO9h592z8Aa8aJf2yH+XWfsx9++lzleGadAvADNVFj5FpH3ehXGsEmPVVu03Uio50fewZR21tOCflTzVbZWPbdgh8QmG5LkauLVbL/hZys6zhJbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mQftb9nt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mQftb9nt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F5FDC433C7
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 12:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707482896;
	bh=KXVynuukX4pxqdeYVDYTvgGpl7hK12h0iNLwrg0j+v8=;
	h=To:Subject:From:Date:From;
	b=mQftb9ntoJYicMHbpYrVy2+Sd1LHxXSu8mTSmbFhURaaQ3xVXPdousZLVRkXbS4he
	 20IAowQxuNVkoZ/BlkPhhH5BTu6bKn/4mgD4uZ7DlLMTBudfn9kFae6qfmBUlqOnW0
	 0LxJ8wLjf/LtvC5N05eq6AAGVPyhKqVKpDDuOLMbvHqIL8E+CHkZpLx6BMJkSPU2wx
	 cFLEL+l5MZt5CHmK0PMuoEeTfQdffUZqZuct500+E72pkyxaEnW9VW9EmI35VrOsbK
	 ERMxOa2oFxK2YBc5Gb6bylaS+H2tigAPT5JK4GMXyVnGlnGMuaAgwHrxJ3Y8M8jOXe
	 G03HjSi/9EKWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63EF6C4828F
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 12:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170748289637.2918.8092443211048991628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4028fb430aff73bcdca41513232f543c27581cc9d8ba8eabdae150b2959faae0
Date: Fri, 09 Feb 2024 12:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707482896
