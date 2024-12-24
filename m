Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DA011713
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735012554; cv=none; b=rm5DCYai9WpLhvl0MnKGFswRHF8oAxdz6Xpu34OobVGAa5v23OjI6CdfiwGf+P59TlI6RIm76H7uYJioARhca40OT3L3xsurhvsOsY9dhcD75MJvq2WgfvsTVCUAGtC93QGLKlrfyhY1Mf91GtfQkTlA1MQMUWtM1ACBt8GyLjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735012554; c=relaxed/simple;
	bh=je/yNNkBrJO/UH3Bkmdeem3GAAcPxdoF+k1DlDOJt9M=;
	h=To:Subject:From:Message-Id:Date; b=u/ILi58xAGgg8cJFGA34xL2tUDTgNwl1xESR/yomsMuzb0zxoE+y+/e6fc0koOwSL3SKphK5lIiyGmKQEp3srJHwFOllXARtDO+3+0XyejlfCRpA6dlTNmwED2DVijxmqIk5ncgMzcZn2byST9w/1nIF/uIy/BbYb2GsiPeFNZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AKfyHXZ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AKfyHXZ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A508AC4CED6
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735012553;
	bh=je/yNNkBrJO/UH3Bkmdeem3GAAcPxdoF+k1DlDOJt9M=;
	h=To:Subject:From:Date:From;
	b=AKfyHXZ95DA157cF8RLTaVlLuox5JY2BDdHLfX4gO22gbP5gY4vsONXixEzuxqVb/
	 nao4PKru5sJxYvvXEvne+enCnpG4nH3nYDGTnTMpD/2vymspBVuVexNkcEqqjfAby0
	 op6dFyUKEINjnqr/UaMGkge+88hsWC9WAJAQjAe9KJ//fAwAS36HVN2Rv0yAZdPuFt
	 Cp2095zfBbZGvl36jqmiGNZFPPbFrimvpFT4q/jE4euA2oAJYm4mewDcYE+C12+SDT
	 Fkc/EhSbEF2s2lEdA/DzwmXsJNP919HAanHMZAtOkacOCtl3tyAA7+Vf5WsWPESF0N
	 qSoNFRXA8TmCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930AFE77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173501255358.20797.18388185027184339273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f13a200181a60797276966f022b15237a594ec9c17740a19c67104a2941269e
Date: Tue, 24 Dec 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735012553
