Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13C30259CB2
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 01:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778548834; cv=none; b=iMmxDoR57iT7rsLU6q6mMPpkvjPEvOSSP+d9bpYZo6zlLOjnswMsVC7WoA9QTB4/5qw7YGgnhg9JA0glglH/1K2iK0mPWkbPelajZ9KIa0Fk7BqMNC7heWIWgal0Fgev7Hw3X8iKyCWAmbhI92xI/ihI0bg8YZNoiN2Z86jz+vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778548834; c=relaxed/simple;
	bh=niXhbyU0PAVoJS0QEfHuZyHyQ/6irT071pIqoMh9geg=;
	h=To:Subject:From:Message-Id:Date; b=uPqkA8PNhPXuyBwr6NbXGbwC58GMR0b0y/uTd6rOusQkiHEEc3fiZc4s7kwHyQiRHdhI0emHZlpevyMlmRufWorEj+PTQmInFCieNOLqHfvjQgf2V+BNK9co4smMUcgcpHNE7ASv2UdhjIx1NG8Wxp6R/+RLEXt2yesx/YES8/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F91NbKPP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F91NbKPP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE690C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778548833;
	bh=niXhbyU0PAVoJS0QEfHuZyHyQ/6irT071pIqoMh9geg=;
	h=To:Subject:From:Date:From;
	b=F91NbKPPo7tcG1qWMKijp9GbcWLLt3DOukru4zR3G0UJjt9CvHzgEEcY09ax7iGMo
	 Vct9fg456sPFVyuYdV3CB0cEJyt0hZyv9SXmlIzYmOEf7gR7ai2+V/oJp8kuFYQmlR
	 6LdHfzHICgjIpJ//afrMbBLyumfrTcej7LfQpmcz8NyX2JCTsQ1dEy2EY2lnZ4GpQJ
	 Ik/3FYiQW+Ahu8NMQC5SpnGBleZ7J028KBEJcv+4BREf/1fY78Ee0mOX+SHoUyE9Qy
	 g+6qSLTupr40bCyiVq1IotJpDCdaRFnwN8Ii+wGf3ztcjQKN+X0gJmMXRTXnGTI2Oa
	 osA64ALLzFikg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE0ECD37BE
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177854883368.9664.4395805966717713904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b1e63b2102eb1eb297cc1633e9c9c969e102749ac6c7e8667077c0daaac2dc8
Date: Tue, 12 May 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778548833
