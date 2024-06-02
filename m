Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52148EDF
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 08:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717315523; cv=none; b=s6sbNNQIByHV8XIKbQrZoFJ74Bo21DLLcb3wqPyePh/zKu/c0rQzme87nU3rlscR9i/YFRDHoM1kxP66TkL2xoQ8umh63puJ9Wv3RmVHJrIJf8Sf0xQ23a2m3Izq/AC6j+73jz/jKdtZD2CWBOlBnKEmqz9qNfPyGJW7IgA8ap0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717315523; c=relaxed/simple;
	bh=CEq2ilGGiiamo9O09XhbwOyma36FoEv7wl6dodzPAUI=;
	h=To:Subject:From:Message-Id:Date; b=eP2A6xuswc7lUIkBV/8gqXbXHRd11d6qy9irDtRiOX8tAQJg+OHm7rMrKAiBeh+75lKRqCTGSrfPXj1HEamMTuGPsimNxkuOBnSjucgYAecplKA7xq5fEUeKkPemUzV0Zr6dwbvG/ZtGxkeRGJLzdfQ8EM24DLtFyoy7Fu1jj1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tZW9Sgf8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZW9Sgf8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC043C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 08:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717315522;
	bh=CEq2ilGGiiamo9O09XhbwOyma36FoEv7wl6dodzPAUI=;
	h=To:Subject:From:Date:From;
	b=tZW9Sgf8CPmVXxTmTNg13DQTS6yliZb4hOXHr54KOc3DfIf0Xph7ttTw/u1kYpnrO
	 Uoc50Vn8pkyAH51hPQmEsqkg3MaesjCjB7WE//Y0hyU4HWDZaf3/AHK6ZW1g3+jIJv
	 N26r+DHK7ArD2uCqt+3oEgMVPRetxRNR6C3bxl9MwqkmjVaYaJL8xhm2n435KhR3vx
	 TcF397Kf0GCFfOeZsSu0M9Wa2RbCyEZNa6fpUwFYkTQbgXaiSN109VCuC/bMlpOz2a
	 f5qYtsWZvSvk8B/LS2X71EMBFyFTbMUe1GZb8LmcpeP2sVV5p9BaOLwedV3E23k52q
	 dJoPwy39DumSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6A7EC27C44
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 08:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171731552278.1280.9122650990136094871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d2e2c202fc269fddc727f519afb9abb9db18ea9590530a1f6dc1fd0aba69dc4
Date: Sun, 02 Jun 2024 08:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717315522
