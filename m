Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3141A194137
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749480594; cv=none; b=hHNv/snNltb0CmPqmjxyh2Kq1KYXyUGpoqyO7KEROWE7kcHLMlhqRmPM+nt7yyaL/FN+UxM3T/uqYVfgZGvLrWZX5V4sWWn6yfoEQTIqGIMY2xgT/2rpMt+Otm8lpUGoTSVC8L6ukeFBynjYdwyEQyycPjtRe8SnsqKcaM50LUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749480594; c=relaxed/simple;
	bh=luPL4np5UnTWBMrpyS5ywYya86F1vth8pJXmSsa3TqE=;
	h=To:Subject:From:Message-Id:Date; b=LQ/ccILsN+iCq8di69nVX5LUbR16EwDveTq/U5kjBEqkyJuMoXHYRlplFmmAlXtOqbi6X5lJhyuS4VHkroZOdVjMB+kABiPi+hpruzPvNcwuRSoZGkP4nMiuu1Z2/iafPOdre17lKqWsqb9vWQUHbFAfeDKJIIimnW2EXY2TJzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VJdOZ0nP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VJdOZ0nP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9978C4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749480593;
	bh=luPL4np5UnTWBMrpyS5ywYya86F1vth8pJXmSsa3TqE=;
	h=To:Subject:From:Date:From;
	b=VJdOZ0nPHpetLZU4f6qiwftl9iqx4py6qIUkmr9BSwx13bgreR9h1DOewuY2xYiJX
	 PyHzafKqqoLj1DYiYV11ILRChAyd4CvhYSyjw7lKynvP1Tw+AfeokBYSflhQ5KTMAH
	 m/547/RdaoxBSPkUA8Ev8NwUWMgl/zL3XAKp4RB7cwm+ANyB/8A2+Dk852ZY2g6VEV
	 pQbDUWTxB0I/C7JFWV7ZsKte2TFwCFFHFcFJNXhiPmHHqwyDgBAdIX7C4vnpl5cil9
	 QWPtIDrpTV7w1EcRwW1vXaeHtuT4XHrossFKEVqPMmJlTZ4qNQ4ozxSBFAfWbEfppH
	 yoiLEKhbnL2ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916EFC5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174948059358.32536.4929725327705490597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26663bbe089afeeb61b49d97ee1a7740f554dd758d420c3889ca1d94f6f26c7f
Date: Mon, 09 Jun 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749480593
