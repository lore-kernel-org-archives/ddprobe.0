Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFAA8347D0
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755353393; cv=none; b=OAhYEJvkapjiLhNaH/K98xPPdeFzUhtFsWNiEjYqRA3V3lehZbZhFwnI3dYVDRLSRq89ZNI+hV4gNsACMKnKI1dYLM2Ws/sW+iPPWaoNQR1CP60QDOe0c5oHDEZJtPh6Fe7+ZESJkTSsK3/pO0Lv11P5Zm4Ty2chrEUhVg2xPRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755353393; c=relaxed/simple;
	bh=OB8bff0Igfmu910t+V0gVAR1982zyybaKXC/XFx4CVE=;
	h=To:Subject:From:Message-Id:Date; b=FAJZ9rujIHe4zhDirhMAhw9Mv8MEgBmUnlbVU7N5PpOycgZgtg8reIiOSZ4ImHOLpQlqhq1Os77ZfyYgHyCLE5ug+AqrpKoyMHvZmCFOcK6vYXP0ofqWpga4wqhq3Dw81vhdShXETPtmYuU4hK/EoMUi+Q+4UNmNvXqiYyHOM4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cYodlbao; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cYodlbao"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E544C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755353393;
	bh=OB8bff0Igfmu910t+V0gVAR1982zyybaKXC/XFx4CVE=;
	h=To:Subject:From:Date:From;
	b=cYodlbaoy5fX/RDUN0fdCJHXOUCmL9WNVXj3jjZYnVZxmU0qdzRxriGktyi8tM+YX
	 EJxNhDh9cDCaVMd/2bGd6WyaKMo2h1ZioOyHHXwtUzWOos9mOtXtowJNyIjDpsIspm
	 9XUWyRknu4ul3K00Phif2gZsZFjH2lohUmAWEhPVlJjGo34VtuJqDA2OZemrValopk
	 NrUW3SLNsfOAsCxWBa+Ijx9OicOvr3BQTVrb8nXpIhNiPNfDBA9yiJLELmuHZqG5Vu
	 0SjtBa8xA2ivzWeVyBXEfwgtotxTm6jC1rZEHBx0az4793IJq0w+FMQ+sH1UH3s3P0
	 JUzCWPbEOOPdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6E2CA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175535339357.21063.13906177076184903869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 119d699d57879554efa1631d3156cec1fc88ca37a44132b0413d44e15243343c
Date: Sat, 16 Aug 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755353393
