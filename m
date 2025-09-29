Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594FE78F39
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 16:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759162794; cv=none; b=OUNF9cWbrw8sYNBsRSay5IAaW6MFpbkQQIR0ZgcQBSmdcTqZdcS0U5taFvbYDH6UXX4RkJT/kDnUNoiW+7KAr1ViLDIa8wm+mhlZ00iVqdvC6yK2T3Q2HS6ou/Bp8FytK13Ye3ZkAo6w3wxWOTy4aP6AFyUBh/3s0+YGbPVZTeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759162794; c=relaxed/simple;
	bh=c77cxMJCPdRpqXWU9VcLbv8W9o+3NwM3Oc4+C45DwqI=;
	h=To:Subject:From:Message-Id:Date; b=lPnmDxOsvEJx7uP19VMaU1ZVANcGczAMBMoH2ZRrZHiDQy5I5P8/PNpxokwASAk5UI+dwZdGWhKwxiJybFncwhQlj9ld+4UWb3e8VpgZidWDi+y1+P6lZKuuH7MMZQ+KvoA5u/RXH5wAjhgYhVUrS+BcNIti6oh058qCRG78VYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gEuYzeUI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gEuYzeUI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5B65C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759162793;
	bh=c77cxMJCPdRpqXWU9VcLbv8W9o+3NwM3Oc4+C45DwqI=;
	h=To:Subject:From:Date:From;
	b=gEuYzeUI65rc60TUN/v6dfGWKp1TQZyUgKh7Rgb+KTXLjlW0hr+ytUqCXiXAhNkvo
	 M7iDR21dds4cMuwrGLDGTO2a6RHIQlJwHb6Dt2p2hNDBDsun0Wv5elFcLbEKjoSKv2
	 ksbCyJ6X9e+Cx4Wi3bG3zfmytzsOw39LSGf3N/6ibApxW6Upf0s9H3tmpTUx59xCUC
	 974flvbusO23p8jHikljIuW0AhptqOxLAulElVa7hbxVvHz//+P88gjExQ6KAv4jub
	 5WXr1hrczXEXa0RoRxL0zU//XYQ6nn4LnqHjLNUiZrSm8Y11HqWm0/gpjVYs/mimcO
	 0lharqBEFcV/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFF52CAC5B9
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175916279377.22784.4733179812273248329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82902fb9303f124df5ed4ac0fb0f764e3e47ec01b1438e0518c41346fd9185d0
Date: Mon, 29 Sep 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759162793
