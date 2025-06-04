Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0841D5AC6
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749052794; cv=none; b=lItibE9kZFiP6ctN1CdEcASFzLFvPl0zWD0f/9HfteCfddYet6bHlyqqxXMixR6vYjmRskf8B661f4Jo0YAyVgEcoYOi8LKVoA1ldT4o7pVgfuh3xQXsasjpqiAHi1bgQtEcAdkmWX/5Iinx+NAPcfkgDalJYzlX/2d2bG/WXrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749052794; c=relaxed/simple;
	bh=Qay1ZFTNw3HvlUz7H0dWc5clMQuxEcci1H4d4pe4aQg=;
	h=To:Subject:From:Message-Id:Date; b=lB859lzXvydzQE2t/ZH5rpLkPTYINuaFrnK73o5WRl3Y4+RcEuPDY4q8omLrUf1HluwfNg8ddfCISgrJENM+QGTCG2uiTWmws3+TsEL01sGGai1j4Al9gzQXvGvz8ZgOdu/sz/VE9Yf08YNlR1tvPOd+M83qf5hBJtrdCFa1m88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+JUIyaZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+JUIyaZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1432C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749052793;
	bh=Qay1ZFTNw3HvlUz7H0dWc5clMQuxEcci1H4d4pe4aQg=;
	h=To:Subject:From:Date:From;
	b=U+JUIyaZ6oIYd/nCCrSOnfwBheoRZGi9CU5IXZlXTFD+8MHN7TWcKgffgBk9Ya+1b
	 vduthXtzX27+i3ryVhNetI0pUg7/BIzetMw/K0Gv8T/feeHuyoo3wNQitc4PNV+4xL
	 7Sp/J4TCZ8/UAVvKXt27KUmfHcEIB2w6Fw40Cx3OqWgfVSxv10LA8hhOK+Lf8dvs48
	 mk4zbm8MWLU6hyaVcFvbH7bodJEedOFxkFKgmp7gtg7KLV3FnBy7zwn4geX7Vx8Oi3
	 wshG5NbhI49gpQSumuuRTSWklcZbJC4Un4pIfJ1+3lxgLP9DOc+mxqfiupMhhuSnuP
	 HqV12BsshxzFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8D3C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174905279358.2262.15428669391531746707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60aae826ff2d64324757b898088fd9763a85835dcb402924533fcc511884e029
Date: Wed, 04 Jun 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749052793
