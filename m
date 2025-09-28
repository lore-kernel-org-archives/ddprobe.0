Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0917F198E91
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759056595; cv=none; b=AM8PfUv2pZyHCAGpPguAFksCH9KPfD8sqHDIJKSSl+AzFHTPTWT+JDy88XYt3wseJRli0WiSku1XxJPDIVkSJqrDI04ElvdjkUsGo+SyP8Mvg2jdFa/Ea+UNj5oyJoYbVl6TTqcbDOP3Z4U7MysqqV1VoQkRSmApAMW5VIMVRdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759056595; c=relaxed/simple;
	bh=RbvZ8rFgmDqysLUTJcGeqCfMMlRFV4scxuGBKlO1iXw=;
	h=To:Subject:From:Message-Id:Date; b=J/VcuJCZnMvyxzgq+hiaEybJo6avfa1kSor6X9mqAI6sJA6wd1+cDIIu+H1WVyD7PMuc6oYjCYD9qRN8cPkdV8XeO4J7tvE4wqpYtQDf6+2ido/BvuMP1CAZTaJjj95MzyO6gm3rJ9TlafL2B+o/ySjAsMi1Hg31Oy+hzo7dnQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qtlBv73d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qtlBv73d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E94C116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759056593;
	bh=RbvZ8rFgmDqysLUTJcGeqCfMMlRFV4scxuGBKlO1iXw=;
	h=To:Subject:From:Date:From;
	b=qtlBv73d8oPGQT0xY2A2mhM7B6IE0PH15/iZ1npTgujYZhjKa/q3gaJRil08xfzpj
	 oLvWYoe5QytNgEbcDIrUCEYObEWQHT645BToZmATzoQ+qpN+YbqTNehk4qFvZkCGlo
	 EHmhlX1X+84xyz8KFoOrFnoNTTH19eFl5En1OMcRCSoIagxd115/ds9dW2TC1XJgCE
	 gR5M+7Mu+dF07QUttfZAihvCqp7zFW/RhviErAVfO5ryJ6X1ws32Yb3leAJ8bjKzTX
	 OkMCNbpqHBklOqzj1QEyJ64hkDAh+3QCMss9Gcn6KZ7M2cfa6odZ1nCtU+1I79nRc1
	 Ijg9Bq1ea4MIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3EFCAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175905659357.2823.5830054616066908646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dd5cb0f775edf86b4e96cbade4e6cc43d3003c8ef84407f9d6d0b9850a4a446
Date: Sun, 28 Sep 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759056593
