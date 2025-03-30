Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373AC4A00
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743374394; cv=none; b=qcYjI9u84SNsB6Fqp6td8CUIwP/+InEFLF6ekmJ9fGFDgS3nBeJyHaZ1ZURo1pgX+xw253IIBfYocrYkuTxFfG+2QKPeF96cn2s7gQtpPT20ml1DSN2mdULfW+IrbG/IVbn7sciLiK5xlICX9O858hdg0fc1T49YaIe4T9U9Bz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743374394; c=relaxed/simple;
	bh=5qLPjD/5/VwhR99UQtdaaQLdtmTvyrh9Zles575WvF0=;
	h=To:Subject:From:Message-Id:Date; b=bNZfu5bYKYJskHc04mpdhJy0ib13cipzUvnAcI2ulOFh9iVbkm1Gz6/vaKUdoRVuNGQExEwZhmxyMyMfIRtBeEwHJC8fVY3V8G1Lx4Zv4aglkOLnp6Uc7n7PasTkEB2w7YpibwuHbz+VxUtjuoY3Rcqu1qf/17WbxMkIEDje7Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PXx1ASRo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PXx1ASRo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7124C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743374393;
	bh=5qLPjD/5/VwhR99UQtdaaQLdtmTvyrh9Zles575WvF0=;
	h=To:Subject:From:Date:From;
	b=PXx1ASRoe63BBS5cLS/iLMSkqq7XRSdk/KplXWvid8rmblAFLlJb95VBv/fMzuP50
	 WcB1P0/lquaUbAIM7SBI4uEqAJN09qZk0c96R8L7oNUV9hnneLTA0b9/SuTVwQlzl2
	 Kfunk1bRTVVzP/l/xwWIrcB0mNLpRLn7wqMlQp7PHJEzyTrTg7Q74J/1Sv2zaoD6kX
	 g+DCns3z3sKLCvFO+5p0A/wWjlwVEFhy14qivV27qcdcGn8BSr8YtEw+Seiho3kil8
	 a5k3iIfWPcLAc3LfNlZG5iLgxSvC1jP9/Plvtu+ciP4or/dwIW8kkB6g5PGI9JK88V
	 hxbZ7mMBOXAZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954F1C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174337439357.21519.17008068416285649797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 673f6535b28b94215adf5694b43204cdbe024aceadc1ee4c72c9ef38a87e721e
Date: Sun, 30 Mar 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743374393
