Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2650C301010
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 07:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763622714; cv=none; b=ht20i3AgDY90iAGhzZHzcJNuKF3nl3bJfTUWFdx45y+KJ5RiNP4O8QwYoTFpB50phl6QIg7pGJJNSx2AfETEsDln7TEeyMDGyWtXScq++eaOvgQZlGOkvFtk4/cf5+bu9q5u4DUNeLBivBttyykto/clTlX8UNiPmfALmOrczaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763622714; c=relaxed/simple;
	bh=aOpNRScIHvj35izPZCS27Hy2zoQP09dQq+jvDAHuIuI=;
	h=To:Subject:From:Message-Id:Date; b=adDuUexAQIJjeejcpqDCdA2hXQXlbB7CCWTvounOPlfffBVC5dYH0qim2YXm8ByapcPBEUjz3tPD4fm6v/cfA9Dw9FlBI8QcQ8pxUIZaujlsp7TtzeSbzSOyfkDRVRlptwutE47tZGJbYa3bMS6+l8EZcIikftBCZu5gUrjs43g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tWem3GGb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tWem3GGb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3166C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 07:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763622713;
	bh=aOpNRScIHvj35izPZCS27Hy2zoQP09dQq+jvDAHuIuI=;
	h=To:Subject:From:Date:From;
	b=tWem3GGbtOxfNyFIb8hby3QZ4WAkh1Uh6oS049YEdjuEtudu4TB6KGBJgjjY30Yo0
	 psAR9ooLa0iBMmtGzKsxAFsjaAUBDvmKu4xsOik/Gzo00dLi2zsnqG8F1fcepZyMjs
	 tLGrOLxsDAQRLSJPs2a28mS++NUXAo/HuK7Jybm0T2fgGcIcy7hSJoeD3yQ0LROV76
	 aYy/spIAxQyGou1VGdoRXSq93+kZvihEMPfdXkP2L/G6vJtAdMmGfpOlRJRnNjyxX+
	 2qF5V0s2AKu1YDSOlZPrjpYGuoKpvKcHoc7HbJpqP6jV24roclUxMUcuBgszgVJDjE
	 2blotbKT9lJGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E45FCF8549
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 07:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176362271363.31405.16218191362484943922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1740b96175e6e9e1c8e3808131caad646c09d0c2b60d84ca57f102108d27824f
Date: Thu, 20 Nov 2025 07:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763622713
