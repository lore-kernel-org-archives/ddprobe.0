Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4864153373
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 05:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721282123; cv=none; b=fnDV4swo0Q+mVzpGNLORWRTXmzSHLIDnknCFYEzPMJ7NtRrK9WpUUaNvN1Tu4CQt4Snouk1G/7rOeNdNUi+t97mq7GJOtktJ9GcWqNRS4sY51CvgOaBKXJp6s/MG/3+QFnO8ozDGStGyJ1rfy6ZmUyQCeS4FY2c85KQW7rbwZ8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721282123; c=relaxed/simple;
	bh=G47U0oQR1uzFtvTaLggk+nKJ7DQDsi0zeRdmpc2D8/Q=;
	h=To:Subject:From:Message-Id:Date; b=EFEdiG0pTweCE1Nv40cme7lJT9xQYLAhNI0xWrUgxTiKW+2w945/ygM6M9dBRfIXK4mVjOmnzbsxZjZKmB0I8XdL/lTwqT70b7Au3DsAicjXaDpuWzvmEvLRT4GiRIeEpXKLM0GHFsPPi9MmsPBI/dNlEdASRoWQt+kLaga1nCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YHqH1ODt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YHqH1ODt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D137DC4AF0E
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 05:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721282122;
	bh=G47U0oQR1uzFtvTaLggk+nKJ7DQDsi0zeRdmpc2D8/Q=;
	h=To:Subject:From:Date:From;
	b=YHqH1ODtmdiA0CnQRIucCxNDIoMFRdEIfeLOYg3tjUVGTQs/h7g4kI8alA7L7OLdA
	 FOlJ16Oflf0EaC86R2ck/SJinHfdZ748fzRCRmAvcfqoPNjKttwteffJqIWgJn9tW9
	 Wtw1RLtRHVuF/UsYn64ZowR+6bwIyUAPXoYzZLugBvwqE8WyRnbbmY/hGiaR7IP8bZ
	 /a4wh1nF5ldsQtrVaPSWP7eIrxwEyoz0cYByMb2L6nzqQq2uphqMtUFcHER3qDy+ow
	 JxAd56m4b/6pJBZz+z1OEikOPdv7LjPOPnB9/UUDxgRBHuKDgRwNNpAwxirqxRrm7j
	 KdTxY241nX3yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBCE8C3DA49
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 05:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172128212276.15839.7605709443323461144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae8d69fbb24010fe1d42bda40262fc5bb736867d417d2c9f8617f86ffc62c0cd
Date: Thu, 18 Jul 2024 05:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721282122
