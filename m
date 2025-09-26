Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7B12D0601
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758887395; cv=none; b=hoQuD0+9S3Q+VqOV9aRdt62bwbdMq54WSfuVPq9417zqiDRAHiZZgxnG8KRmkTHTmlrT7CYaxjnmVSr+nJtbEepfKjSahu/ab9bgj3YkBZsrHtEIeJuFSteNEDkMume9YaShNr5/ONtpP1yaPURrf0lxjbk33/ra9CSS2yy/R1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758887395; c=relaxed/simple;
	bh=5SWFzml1FZfGo00Ei3Ey48AobPADDnJuFS7+1fo9RsY=;
	h=To:Subject:From:Message-Id:Date; b=Pmzf75oAW336DwjlSNt7NoDO3ldPaB4HolVTrMI5BTRBioHJkyZ7Vl53QkN3h/KCqFQXAbKZTJdXSDw+sPy24kdFVNmDWLYUl9Xuwa4go1DW5bUD78hrfdAK1nflxlC/hoMAv58Pc5UFwPex9biEfIW4v1pvTyODsDz92WE84os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qq5A/eX/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qq5A/eX/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2BAC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758887393;
	bh=5SWFzml1FZfGo00Ei3Ey48AobPADDnJuFS7+1fo9RsY=;
	h=To:Subject:From:Date:From;
	b=qq5A/eX/+Qbu1F5a4i2zbtL9dudxGQWRUUO/1V/Px2AWoUNoOtVaZhuhfJjUz5q2U
	 IZDfmi/EEom4iAZmzcscYpSenV3apIMEO3Wc5DA3C0ywjPiVUi98bwrxtd+yGE/f4z
	 jqOu+Az088TdzONfHDbnHf4L5bLTNItFBRYPhd6xJgdTfRlAAXsURpTbTGyQEIA9+j
	 ebbNXgQN08PfCpAP+dWLOMRVFVThTCuzDHU8b9QT0MfbcW3/3z0Rcxwsfqa2LKBUFc
	 4Lb/kZineMMZiexNYoU6MEzFYAyP0d/RK4K2eKBcgPlopUVIaqy4h0dPbP4b8M6mEy
	 Eu35rN8j/zGbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963ACCAC5B9
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175888739358.19941.6513749672176110196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b763ea563559cbbd5778f6f07c6056796b1988fe20e853a48534d63d3182fb18
Date: Fri, 26 Sep 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758887393
