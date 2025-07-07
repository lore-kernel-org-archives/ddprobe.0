Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3651DE8BB
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751884194; cv=none; b=pPpNH5qpB9Mkvcy+XBzU2ScVx7wl3E1W8RKjCaoDQ34KPzo8EhISMLTq9WYMRuXqoLG13pAdZ42rTTBe1kGct12B2mxZAUh+GMM5yrDeeS1GeV/mNCvwDAVf0OH9vHR4U+26XcgyA8JCij1x3SF7PqYBjpzTcTpWI0lv6cQJQhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751884194; c=relaxed/simple;
	bh=gIyYsd9UXSjEEG06tV1t6ROWLL1v/3Jbrhkqp3l2u6I=;
	h=To:Subject:From:Message-Id:Date; b=TIL66eIufS2j6bdW0JMT3KPKs/sOr59cnc8gmd+zh2k0pT25S5AvvI2fHDx8yrYH/vdX3jJyUP70IB5c+lFAqOUPPkH7fQTnG1uwjth8++KCXRu902x5JIVIMXjmYxeo2bAsePiGyvfvSPmJu8KCe2SRhEEhDevGl8aKCAWPrI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eqIsljw5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eqIsljw5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C10CC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751884193;
	bh=gIyYsd9UXSjEEG06tV1t6ROWLL1v/3Jbrhkqp3l2u6I=;
	h=To:Subject:From:Date:From;
	b=eqIsljw5/WA5Bx4G6oaWzvz4uAy3vyovrclK4UoExIvt1t5mGNYgUxdynYcax+oIq
	 z1trdFDZZg76YSUyh4sQdOnOZSubThyr796CBlNUoYdC636udgKdj9hNNPTwD/P3RD
	 H325OrEGzJ1ZemLOy5jFjuOlsksUKrK1s1wNytq8SJX8R93BL9VQAwx63FHBUvsivi
	 sUeu/oQ7KCfkA0VhpEeq7ZpXlPQRZFLdFgwHTYrYkFvbliUepyUPe0CdmBVkwmMM8+
	 mjHQPsDazVTXScDktJPvL/NLDW3rdrs1T/6yCkVKvf1kAVbXe3BJIqhtkEJvGHPUJG
	 YxDE9D2GVhdSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DCB6C8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175188419357.18499.16724283469336766077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7838d2ab50654e94327307ad0ca1d8341b192e5e4842972e29ebbdbb53bba721
Date: Mon, 07 Jul 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751884193
