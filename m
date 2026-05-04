Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D55A23D3490
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 12:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777898253; cv=none; b=upObqYt9EoaUGynGRnQAj+2OUQQ5r2HU4cc4yhhAC3PrnZPR29CQsaH46Qg2CQOByMmnZlRrJ4Gy+KZNMT7htfjVgX5S9/n/M+Xpn86UlWBVpV82SBEQvC2v4aImTqaz9sqXwzuMpjAf9iGZWNang5F12uNpq4uCDmE/mOMWY14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777898253; c=relaxed/simple;
	bh=iwqtt0CEk1OW7b8UGZNs1b5mVnI4AA3PPdekz3eCtQ0=;
	h=To:Subject:From:Message-Id:Date; b=T7S3fbIDg+S5Q/R5p1XjtZukqKh7e6hdhOac5aYtzT34e5HRoBUA70TK/44GGtGx2EsWgndh+SB1vuv8FkThRPz8Adynsr3GVyDgfbilMc6PtpJQg+CPSCLyxYphoRrFEzqzSMGjNdk3kpzzaDwOOdiO27Dw+U2of6tXNzYXkGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fWAUTg4N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fWAUTg4N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7702C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 12:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777898253;
	bh=iwqtt0CEk1OW7b8UGZNs1b5mVnI4AA3PPdekz3eCtQ0=;
	h=To:Subject:From:Date:From;
	b=fWAUTg4NWvbcE7XACvBEMX1OZzTc6vECiRo3ZLwLGnZT1OIRCnHXqQPzSF+r7KxZT
	 xRYDx6dhU8j4UZmJaTfZj/nydZDmRQoaIZ68VTWuSONccpUS1CV+yMcThIT5Qcfaa6
	 MH1jgJ+NodsxH43p2NvEv1qhNUSE8ZtLExwydMD1jTv/rYLXNx4l07552ck4n1kImy
	 QPxVffs5kO2zmf66mIGcAB7xX+JKM+4N1kiGCVKYOj2uqqC3fXFQ/b3aGca+jiwXXa
	 NZ/HxUdG+RCuzkF6AMxRkWrMD6brUO4Vkm3bXXcU3IC8/4LNIoxBsn9Dhf5PMf4/1l
	 Hu7/DPoz3AuHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AD2FF886F
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 12:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177789825368.1928.7530671260429294697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2226f5b85ab8f52a20ce3e8e5feaddb0a9b34febf45567b98e7888919b19e1d4
Date: Mon, 04 May 2026 12:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777898253
