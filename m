Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1780818FC92
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754509794; cv=none; b=dGmiaYeUAar1YfqdE+OGdlR8xy6PDDe5C81wOO+1RpHndbzpRhjOd6W4Nz8iyZfzmpQ/MIZaHFa++c7dfMAy//ClN1OrCNLjmR7SuITe6BkJY+615DWn9v7qRUWl9jDtX6NGpRyiNr3P9upa/gHzzV2ZjlT+B7SzIMGF69XTVKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754509794; c=relaxed/simple;
	bh=Xo58awpbYdsi8BNTwqdYBK+4H8idxl2cz2M3AhX01gM=;
	h=To:Subject:From:Message-Id:Date; b=pd5VvDMN37ppzs24ToSi3OoH0i5uZaJR7hAx0YHGTtFHdnDksiKZqNNGi/wDu0KnX1oTU9aAEF/JPsnnaDaeAClDJ69GE3lwYnHX94DouNXzPIXMfzOPa/oJG3rd50PlT+9frxjxeZcVwseq/8wkcTxWUv2X4A42/8zUPocwSV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iGpbvLBl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iGpbvLBl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F63DC4CEED
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754509793;
	bh=Xo58awpbYdsi8BNTwqdYBK+4H8idxl2cz2M3AhX01gM=;
	h=To:Subject:From:Date:From;
	b=iGpbvLBlfOCkFZmyGy2T2xjuueA62HjxEzwEZc5GJXs1TuQEy69/YnRCUSAkVyRZs
	 jwYYmghTZmzuG4MqdteFIccilB9H0vBIdj/KT/elMUX0e4jqJncT3Q0fCsNxMbHwH1
	 iuTNIndwZov1ffn0x2V4bhZFueCkYS2QGnmEF/UbEiFPvMjCjqtmomblvawor8SeVd
	 KvEkoAem/ZJ68rfGWF7n/3awao8KG35nAeLgYC66rsE8gIsQpBvhYPEIhCFivqV9mN
	 pagHVZ6IoRiDdF4r+OZX5RqQnV3K3AHVJ8u5RXt3ff0XKeL7DS4lv/Z0+E6wX055O8
	 /jfUSiJeug06A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9281FC87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175450979359.3642.2733176913919958914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45659a02069cca786334e91be1041a1753437fc34e0f1453dd677e509e26a898
Date: Wed, 06 Aug 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754509793
