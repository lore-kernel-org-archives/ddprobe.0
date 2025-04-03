Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAA0E250C06
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743705593; cv=none; b=fG0VUl9srqw57JpIVDZDwXn5nUEP4GACsEUHnjC1M89iJddPQ9kd2/WD+SIR059lpyoodw3xTo/1GPPjFc0k4bwgpBX4EdPnoRONPk/u8l4/uHCeCoGuS2baXFSnmUi+LXOPXmHwvI9cZthw2FRCI0Et/E9IJ8zZDJqDBHyDAE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743705593; c=relaxed/simple;
	bh=IpJVer3ED23QIqx/AXKd6vs0FJxshn5yyjMTQrBj+p8=;
	h=To:Subject:From:Message-Id:Date; b=VORL2G84LGTIUsev++yZUyiCRR/29dusRe8SkpTrLVpyb4oPbASW6eI8evlzHhDkKc/LLOlJvm5ghwcLg5mQsQwbds3bfn2AA/LHqTC/utKtf5q9W3+D1FUuqySYW7VePIb55mrbQoCgnO0ZVeQIEmzXxzOjsijktboVyK5BT64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3BUIvNU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3BUIvNU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA496C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743705593;
	bh=IpJVer3ED23QIqx/AXKd6vs0FJxshn5yyjMTQrBj+p8=;
	h=To:Subject:From:Date:From;
	b=h3BUIvNUieIURtoJOwOEMmiRuRfpXF0fBIPXD1Jifqt9OQz7QR5LibVX4WKfh2kYA
	 26z68fJN1+Uh0S49CC0+DRfTI5Py0kvUl5o9a8RkYr7y2/YxYqsQxfyiyjz8aQmypm
	 OouFCxlq4GGdJfX0VtRkg5/mMKD7IaG2ED9DZ1QvCrVdNCzeeSeOE19/g2O4dzUytQ
	 xEVM+xYsZEiGeOgxt/OOjRDPGiE6MWhYG7WN+9NG0dIcy7Ce+S2DOoZksb9X2Fhp3w
	 CAMib8W0MkOyxfc2Kc1Yd6JKug09ovTM+UeFDPsCduFNZN2j+jFRnavzba4ldU5ZtL
	 Bm7+4IE80rzig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9482AC36014
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174370559359.28591.3919444286335697901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1827fad1237250643498b5be4cc5c5b76cac6451a729570f0ca208cfc616a5c7
Date: Thu, 03 Apr 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743705593
