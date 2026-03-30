Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120561D5CC9
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774873494; cv=none; b=OGWsHol6QFlJohE2gAAA6Bpl6QUVyhfw8+wm0oGQ4g4nCRxvaWcvAbYNQXUmkOqwmcxG27AJeIMMEVupbYMQCicEVhoTlOsQIuafNYT18WOKxRipq0rzi/HviJHA1qRHnAC40twtYpwI9Fgg63sO7ikQHJzdRjamxit1T819dQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774873494; c=relaxed/simple;
	bh=VQpLA+ZEAd5lhMwaBuhWSjBtvIr1qub1wRHycUyjS6A=;
	h=To:Subject:From:Message-Id:Date; b=ol283r4iZfNCGA2ZHD+oShwNPGHXxedNdXirLn1dyHJapw04eBG7Yb5zT4tv/Uir69Q4n1UjIgA3z2m3mcAtr3lxhuFtEaB9D+CqS23euFDJE423V/XN/ocMzUWH5DUfjLPuGSECWBL3HLbHB2vV2bGzW+eZLgGb3BKR9IblcRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sW0kEYTe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sW0kEYTe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A71C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774873493;
	bh=VQpLA+ZEAd5lhMwaBuhWSjBtvIr1qub1wRHycUyjS6A=;
	h=To:Subject:From:Date:From;
	b=sW0kEYTe/gl+72LGkrGLpf61a0uSysGmakCRT4OU4873FDa4h1mMx9qytmY0XWegu
	 MLOiYzsPuRPccSK+c0S/84iwMRZTKLUpIOLwyz8ewXqBAZQ+YO6ZTNXfXmwRE1fIKa
	 8FubXF1iw2NVfOJApvqQnDoaLYE9unSGA8ms1PRif4HhA2FQCn9vZUiIGwdlCWsfWj
	 Lb9SJbwy3YksDCxyqz8IomOs7znUlslb0z4uSAMD3ZnBvPgBMszvGiL9ff5gOBlzKt
	 jThmEN6nknAm2duoMW+kTGpSzjye221v9EEyoGUXt/OJ48VMKdVskx1dyMuXxBvrxm
	 V0wVrUK27gFtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9232F10D14AA
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177487349358.28127.7067739683885941949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1afd4c53060784ceabb8c0e216986779d4a648da6c39e3b34fdaf14e487351c
Date: Mon, 30 Mar 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774873493
