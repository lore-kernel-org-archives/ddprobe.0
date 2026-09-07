Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 505709475
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788739834; cv=none; b=D/L3TFpivGsQnblywtuXalaDqMnnzs/sNscyf9iK897q7e8u9bhCsKroWsQsGZaSpAVCRe3EKl1Ecc7stXPGlrl38p/6zHdLZfIzYExE3W86GGNUqRtGQJuhxIv4MOk4QvMMLJxEKV2nVDPcFpbw8lmcMFHHjawWPB6kivaIr1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788739834; c=relaxed/simple;
	bh=dyHN0+Epdht8nttgdjfTcbYtN2mBKScoL48XawKCedc=;
	h=To:Subject:From:Message-Id:Date; b=FIx4H4NgdRRCHaChvqiDXG+WHRYJNK7NgOtczYDAq9t9vLFaqlCYJds8xkR8HknwpYEIQm3oq68ZeVYj7Pad+GkoZHXSPT1ASQIHygbbfj0AO08RVel4p93H5/4pU91/zMzA6TjeI9RYrZRC0fa8vKiGTEkLOnkM7ahmbP2Cb88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KmiER2Ro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KmiER2Ro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1E32C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788739833;
	bh=dyHN0+Epdht8nttgdjfTcbYtN2mBKScoL48XawKCedc=;
	h=To:Subject:From:Date:From;
	b=KmiER2RodE6GE2NQefg7LKunhnVaqNWKfzjjgc/PdpolYhflAsrH7JfLGRpFVBJHF
	 RyhdCH16n3/JzHaXoChAZMmiI1AopbWl5y+QbQ6hlwacnI1Y6/sXZYw46XhutGBIXw
	 5rycaT8AiulMT7820e1KbIjguVeqgIhhlHs3jlGR19TbNY/rgcbkFMXt/Uza5tEubh
	 9zC1bVg+KbYVr8NqtR4iXSUEBjtzOcPWvswhsKh0KMnEyGR6LZ1DgxZr/29dB9gwlp
	 9t7hw7sjrxpQCFjjdlBY7/Kkh+5HqT3s9qv2lUb0YCXATysmoVehxco5e9Mj4kKO0h
	 wqj7v3JUfNECQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B93A7C79F8C
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178873983372.18164.17541164201796803245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b80cdc3f2583b0b572b7d2e48a55d13d22302b6cec5cee9a65281d058a0c9ba
Date: Mon, 07 Sep 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788739833
