Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD94C21771B
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745941793; cv=none; b=Qp+DkS3nUcRvlALj/KtXvDoP/cuhLcx1o0aLA1OANzT/M5kkEmdLfEhAuFqeXjeLKKtne1kEY6Gw+lvPC4Mt73yGg+jR9z2EN4c/lrPo2F3H8JaEcaUChYKovagRZvUIi5i79+3pvpdFS01RxRPXCdEjEr5zBw02VXPBN7RTRUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745941793; c=relaxed/simple;
	bh=IETUUPAV9XxqteKAW1xgGx+rd2U+SG/PY5tp9Zj6TqQ=;
	h=To:Subject:From:Message-Id:Date; b=VzGWlTX7glxDbgVrgjN6RSXoA9U6ihBmoMGf39mMFC/PYL947bNHJ0HrBaY2jqVbWdhZAYma7AGoFUg54pRG0U1/db9JOTELkcPWflV4Q4BLF1DjMVXaeyt6B6DIiANz06dAPiY8E3C6LxEYC8LQH95I8+O3UcU3DF7ihAfJoSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ErYDD3A1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ErYDD3A1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD08C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745941793;
	bh=IETUUPAV9XxqteKAW1xgGx+rd2U+SG/PY5tp9Zj6TqQ=;
	h=To:Subject:From:Date:From;
	b=ErYDD3A1iNrdOhrzugWZgU53WEw7tzHq0wN0Gb0sEDkGF70AtYgrohpGkTdCH82SK
	 l67m5aC33YShl4a7mVqUSI/ZENHDa4G3EV++wHUVamkf+oJ1Hm1LwoWMEQy0wlDoVQ
	 vxIEXv9GvDZeXibasLbNBzoDO1fZ5xS1ogJVZGki4bUDsR0hyuA3QZIbc5RG0htF9C
	 GF6CTgXDHSFI7Z/E1vT6py6XXGP0NOp0AdyqHUC5Lx/uoha/SW2urd6G+xBnI2yLJT
	 kJh8UeNOI9M8an2KLJwfNsd4lepKLyDf6NgPvWcdtynnIO9ILvFlykOBp+8jN8uQnx
	 zUJz87d8TV0xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8E4C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174594179357.19315.16534740341864474816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d76c3616cb20bf609a6c89ade8bb8fcd9d1111c9e8c04b9c261fc97c8209849
Date: Tue, 29 Apr 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745941793
