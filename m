Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6A8039792B
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 17:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789492235; cv=none; b=qBMoGjSydQCqDC8XdKfHOtY/ogFhrb56grwx9dxlkSsSEB1iq6n/jRGaV36Ptm3+WMtloVpPTcLCQ0NepgCJls96crovNWO22qQZVlXjJtweYyxkQe5S3BAMnmrHAUOHUNnAyvp71pbFU6ubo13y4Kzbtj+LAFprSNvcNz3OIOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789492235; c=relaxed/simple;
	bh=o2mBuyxIHmEgbQP4WBdFLZ2QMe+Pu0o8LYo4oMg47gg=;
	h=To:Subject:From:Message-Id:Date; b=C0NL/MuvXUj/E0CQQ0lsZwp2PaAlhCgvmuPGa70kINJ32EWV88H8kFLki47kKvI1jdq6nJY49igcWhg+uTtwOloAYDt9Px6vkEhEWFoFpqzYIjeP1tNI/inkmr6Lt679ycffZZtdOzztWaxlnKtboYnAPgIX/6xU/cdhwh6GdcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ASpiHNSc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ASpiHNSc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD781C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789492233;
	bh=o2mBuyxIHmEgbQP4WBdFLZ2QMe+Pu0o8LYo4oMg47gg=;
	h=To:Subject:From:Date:From;
	b=ASpiHNScfsL4jEEWw8piFNViSLMu/CIwgw1Yb22HjPCCq1AL3YKPx8XRlNCXAkBbz
	 okYIejvPggf9NQL6JRMyldC9ZaMvzqlhuG7Vz7HnhV8wyYdDdIRYvMsK00eAAiXz8d
	 LStkaekxUTG10tbsvVUfxZvYGMjZnJUVUehXeCmWydSB9gx2lbfJWDfI5nWQR4TO+E
	 W5HUacjj5YtnCHaK/lgUxZ+HBhwCrgJJDBk2b9PAfvS0NzaqGH6xT8+0OZtCVWHZyR
	 M8kaDoCYw5cOeT76uulspiw71UCOlW0kN6S3ckZ6SuUOSbkITMh5asY/fy7nqX5LYU
	 r8zYFZ6c4QHSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A916BC88E77
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178949223368.6631.7371108185917448374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e424c0699183cb6db262271f9bc506b13df17d62cf0b70cb1fc9402167ff55d
Date: Tue, 15 Sep 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789492233
