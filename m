Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105E3199E89
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774379694; cv=none; b=Xt5pGRSHxAM8Ta5WO88t5s95c26XjDLD0XHwV1Y3n8ZSdh3EvpBAJpSdLFav0K5rgK/s+by5R+Djsh64mjGHewe3W6MzgPfRAdfyAAeB9MexFYC0ML2oDtSlGnyD60caKsqiCrCkQ57CVbF5YdhgzN9eqA3UB4YvQ66A0ughRLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774379694; c=relaxed/simple;
	bh=blTLeMfLP5GA3vOm9X2Whr9AaAlG25DiYpLXlZPNhxw=;
	h=To:Subject:From:Message-Id:Date; b=PpQrlVHaKtffB8gmlv2kKs4YfPwG1bRwr3i2I+73XXOa9t/Ha5VD7rfGX4nOGb6vX0CLuiMwsp7vQ1mW2OwJDUK1bEqmcubn/Qxlx5PQycIwceJaqNIc3y/OkWdw03VhXqazwoB01GMHygzWYToD7dm+oWYoWj1psmKy/EbU23k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uxo+W5Bf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uxo+W5Bf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB93BC19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774379693;
	bh=blTLeMfLP5GA3vOm9X2Whr9AaAlG25DiYpLXlZPNhxw=;
	h=To:Subject:From:Date:From;
	b=Uxo+W5BfoRIxXPcnn+7IEj08Xd3/x6E2ayZJKakEDG7BOi9BRwazT7sjFAL2xeP7Y
	 w0qlnGvx0BaVPYtNKZvsFld4dtdOwiLKXsglvcGXx0+bdyVfLDmb37gRrPa04WTKVQ
	 i44eTkNwK5luDeFuYBAUk8IFgMHpcQG7efOb6DoYEMrIJGvu6eYXFlMP6GeobNbv4z
	 TQi3D3PdH9OSqS0V1etmz515tU0L8l+S78E9n95gALIsUkCZAVf/cS+z7u03uits5I
	 DDa5Mx1asCp2M/yuww6EyXYaKNZj37v/yGs1qlqIep6Quq0w6VIb+kkicSTOWGCMqH
	 ow0TXvWGN/ycw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F6BFEC0F6
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177437969358.16464.5301205689888121949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65d58d37a9515d78c702eea7d86bd8c84fccaf37284b3f63e3a8ec93f595d331
Date: Tue, 24 Mar 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774379693
