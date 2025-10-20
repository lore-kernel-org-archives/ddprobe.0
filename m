Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C632750FA
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760975394; cv=none; b=fhQtMNrz2sdXeF4ppQDHmXNDG60gaIdKbGmxvZLya8PyqJBaFH+ulii+l8s9+91Q/eihrN1/E9slI+vbKaWS7xjL8EovzRneIjhzUyQD+zmHAINCezWSwGjSVeugj3+AEYmYUEMmDfAPClnIXJxP/ckEcMyVOOgoE0PJdtbrTZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760975394; c=relaxed/simple;
	bh=mUo8ohr7abVjetCqb8cY6xKpnO8RKUjssZsRzJUCOMo=;
	h=To:Subject:From:Message-Id:Date; b=oalPutPpKoIx1H4Myy4oxFD1s/h/VVs4Jlns4oJtThe/YZSzddvY/rAAcDohS+GT/77WFoYSIs04oTfayNTKWlwT81rhVPsjygPyUTjIPAUjfiaKsHGOCKKoaJdHEqVOswk7DP4Ee3V8U5ZMONe1FX5nnPl5yFu80RK6bAzqLOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGIFJEXl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGIFJEXl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84FAC4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760975393;
	bh=mUo8ohr7abVjetCqb8cY6xKpnO8RKUjssZsRzJUCOMo=;
	h=To:Subject:From:Date:From;
	b=RGIFJEXl57Df7ZXgBuoSD+4/Ki7LCmEbUMgpbptCWtDLs8ky2x5dX5h5Gf6Vevrsg
	 6TxpG6/24es/2a+7HwE3Y0YBTQRDRIAwWsJe1aMKXPAcb6w02s6g7zl6sNlSyZVDCC
	 JAvABiUWjucgMH2oHO1KsxkUSRsMj/UWIJGCygQ6incsktjlCJ9w7yziIV5P/l8jIK
	 Nl2U1LUpZU7BzmREGanZQZwOL6OyWl0cRLajgSCxfGU4VzJE5RA1GSMAAHONwNaCLu
	 R0FkfFZdHDjOgAD8asu1AjwAQNDSIB/u1RyLPB0iS2WHQabb4Gq3utYFsF5gRby2Bc
	 eZWlYherK03lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97525CCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176097539358.4864.8912258328940225983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fb0f7e5fea3509f8f45f23ed1328fc6488c7fad38dd525a241ba158b474988b
Date: Mon, 20 Oct 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760975393
