Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07A67364E8B
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773695694; cv=none; b=tgWhj4Se3i22cLp60NimBDMhIy6+aYmGrb8r+gvELP5vmp204kO08QL6xtek8wpiLNocyNWziWJUWCPyKvR+8f529ZWkVffhRhiViOH/uUGjiuZbPf9LBrrnZmyrWN3DbuhyapbUVijX+ilUpBtZe9UJ8DgfzYpkiDhMhG/oQcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773695694; c=relaxed/simple;
	bh=PiCWAnMqBSHRNRfMIjB2t+dvrIw8jYYusaK6RlXfMU4=;
	h=To:Subject:From:Message-Id:Date; b=PfaywL2uiv0t/wdl2r18TFOYrdC19Ich5MZgLzI6Idc006daayQBakAkBQDcNNI+dQLVa7YfSs9WUsKoUQTw8x52za5t0ZQbU14RFw1H5raSKILQzrelxZI1ET6P0Vi7IEn294IQuM2ix2sJ8FYNghmRrX/aiL+3Pln+8RAtZX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n6uigbJa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n6uigbJa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7292C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773695693;
	bh=PiCWAnMqBSHRNRfMIjB2t+dvrIw8jYYusaK6RlXfMU4=;
	h=To:Subject:From:Date:From;
	b=n6uigbJano63KryaykcUvoZ0UVekWGNaLxh81ENB3AWWquwIpQtYVoF5mLLugN4Qh
	 DQq9jnRaXu/htaR/wuMcksr6ByN5at00A3cxiss7vG88oMam/1FD2ChTOx8H7ZvVe/
	 t0HIK+1SAeZrK3jIR7E47DNGxXgNa7lJeHZ2rAxL5HVDqSiyFHhaYs+zM5bjE0cb0b
	 Lw2gSkXvRe2KPPtW4eFkKFq+VXYcFB8eYzJwEnkGKoPibc92/0U/HjlJlj4BtYI568
	 bjSzkK70hQ02Y6wsI8BXnd6UaQ14ipelc2FZdnNNrY/GWCbfpMllFA5FLaEIKrtmXD
	 q8WRCVMLkH7kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A92F013FA
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177369569360.2202.15486763128378911112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d566e34ed9961745efea405ecc5b85583e168adbfede4e269aa11ca5d32e8b6
Date: Mon, 16 Mar 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773695693
