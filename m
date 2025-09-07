Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296A41B3937
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757285995; cv=none; b=X9HSFJurPr53bZRoz3e57YDON+WuC42ehRutWHV/ZZopzgWeQMVJGg0XqX2heWTp69D4Pg6LsbYUAXWM6PZMtW7CafLFGY3D9jOXLKR1QRqtVh1lZR1oLPguGrq0IdBYOrGw32zWiAPnDJLunDLcS/nwlYM8tTlltXODUHftyhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757285995; c=relaxed/simple;
	bh=OBhrI54dTJnU378rUi5Ooab2for2hWJak4YbgYtQ+YE=;
	h=To:Subject:From:Message-Id:Date; b=gfucwpnpP874N6qcxIU05qcfEnWHd6qMY4k/fJTit5Y3gjFG8VO35yVEjtwpQDpFQRxOcCDXt7LkhE6e+ZfOwCxQaGRK5/Atp2KsqbmkDwZ0HP5Co9lmHXhcQBybOuE1YPvD0cjyrTJMPgeYp3q2RdxXPWb4GqOocrE2HKaylIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HcqHeZ1f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HcqHeZ1f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B26C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757285993;
	bh=OBhrI54dTJnU378rUi5Ooab2for2hWJak4YbgYtQ+YE=;
	h=To:Subject:From:Date:From;
	b=HcqHeZ1f7jmnKcnb6KIoR0Qaa+H8pyfAyphn+O7Wif5uQk+2cXRzFelh0FE+F79Xz
	 28XvUqtT9ahez0B+yBPF4bzj1e2vXr9j2TkQSgfAGFEWvT9wdFyAMj0Q6Qsh6fS104
	 56EedC266kKJZItFWJveZ1h5UvA7CTeKoMu/yoiwKc/iHNRZLrWHkAroB3A+em3SC+
	 pI7UmBhmgKuPKAy61cC2ZcDxZ68eIto589oTknX02Q4mEKK7FzucPu5tIOJ6DIFMjN
	 5iwX3PXWYfRc4MsyPoYwbe1djOi0tDlxm1IErfFnLpfhI6WDCfmim4lAjIvfVDKGsd
	 QVsrdmS7X8fqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ED2CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175728599357.7485.18344219654147910829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b75412989700e35e7d0b8d42248413c16b24654b0c24669538bf5fa9a4ad467
Date: Sun, 07 Sep 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757285993
