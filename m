Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BAA036D
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749451195; cv=none; b=ue0o6CnFglOohG5m3H8fJWRK4VN5xCr+1ZrAirH/55GyG5YzcWZlOyPgV8CAlxTt00Ko7sT5XUNigRUX+HXKraSTtSIRN90WtXrzdUus6lQaHN5Xz9WJVw/9u2uTecn/jXw8a5DRmvw3eAxAKw5ddxImykwFsVR3Tc9kmjaWoLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749451195; c=relaxed/simple;
	bh=Ed49SluExFTd39Z8ra4xZkR8jInnHz6SyZ0oDhmbKJI=;
	h=To:Subject:From:Message-Id:Date; b=tgTBGc547E9GKy97tU+nHSTK+HRIpTyj/Dn28RqQL3ysvUq3nXYYi3W36+Cinos6iFGHwDzv6LE2nmUqiu7XSYQ5rpu6Rki6o6HxUZahkwopz2P2aDDJ4NbSOvAh+OMofUWSFOxIgYNXuqjVCj5RK349bdcTHUpp0f9F3P2HfU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AO2Xp6BG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AO2Xp6BG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A892DC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749451193;
	bh=Ed49SluExFTd39Z8ra4xZkR8jInnHz6SyZ0oDhmbKJI=;
	h=To:Subject:From:Date:From;
	b=AO2Xp6BGMENvmgFY1PQm9rom5cBJIkufC38T5wN9IB85gnLYanYCHv03Kf5EsaSxp
	 b2P/UWD39lMCvEQ38aE6zBoeCQ9YpNciy8sZ0achkLJ9loZFm2F+nhqZVL3YhPdUQe
	 s8d4VqGm+Wrd78lXQ46YV8f+Mms2odthXVVGriDvtPiDTobe0NlHlya9p+xewUlRr7
	 XKY3Kp8wWnvUVZnPArPEeku9MqmT5iji4pZuqAEprji8ktyxTb6OdaCBtmJ9cTbT/R
	 L1d9Z7V4QfSIqlqygY5C44e7AhVua2Ckkq6HrR5qBQuUqymYd4hT+4D2dc8oU61MCX
	 Cht9oh7nKwy4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ACAC5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174945119357.23830.18020127169980310910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac8b40f69859713aab977444ea8ce04bb658d3ee47373209f0664d11cb809540
Date: Mon, 09 Jun 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749451193
