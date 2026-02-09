Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7711DF73A
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 05:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770614034; cv=none; b=HeshHr5cQ8hK6i29mEC4cjWTewWEGm5YfgEUc2iS2ZHT9dVqODVJyixLimUs1gN4K6ZJfL1h1EF3iEkseEyUAok4/zKUfFbSE4INSdAGtUeOiSHWGgD/U+LLz0Gaoqj0RVaRlwamrtVKW5l6+yGvMJeqCnW/xO58ywhwxR5a4MI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770614034; c=relaxed/simple;
	bh=BKwNAg/mtUIw2YmQely/H0rY29rmePBRDvlipuw1wcQ=;
	h=To:Subject:From:Message-Id:Date; b=nTs7afjoZ7MCX/YU6EnMVq99elvG0BQwt91jPjk1eab+2R9OzihvkXj/evRATb9NINdhZ+C1Rf0rGgKaAEMJoBb5p0I0DjxYqM/xexiXFQ2tUaKgYIS8hzUlmqQQNNobfIN3ZNusXMgDsV9dAni3egH8wEnlB39udbH+2nhQHPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cxa9WMTD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cxa9WMTD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D988BC116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770614033;
	bh=BKwNAg/mtUIw2YmQely/H0rY29rmePBRDvlipuw1wcQ=;
	h=To:Subject:From:Date:From;
	b=cxa9WMTDGsyBWp/fuShr76/XOlaPSb5+F44xxPNkBBe8pBdwhbCCAcvfUVmuEXnen
	 aGw/7oOSmc2OSBs/SQ2CZ/urXbJ0+pLAHFqt8WDGI8kWKoQiDpa/ey92G5IR9z58CG
	 ilnxRL+W9D25gzoe+KD5BSFLLT+QRB/+WXofJqq5O2ANRuB6ZXeRvDbvK/nQQvgVOY
	 n089Te0j9V0jPT2mkAbz1QV+ALOh/GwYzjqJZNNaL9MvZxTxWVzY9ni//rVK1gZdK/
	 SsGuLJoysZV0Tkf+u4MRc70/Fsh4pjgiHUltaMklKftkkFVPTbdgjH+/Zfm7kElgpp
	 e9LOSjku9vQaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EF4EF070A
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177061403367.31936.13846106453347516689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ba5d5d06337e17441ee94d84f045b6272bfe2578a1ea1975b56b5b4ab78b12f
Date: Mon, 09 Feb 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770614033
