Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320621FC8
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735004754; cv=none; b=rVbu11ZTirJH2E5Pc9yW1VHWODHpN9FRc20E12GkKdtfaKFizAhCq6RuFvIJx3kYhwBe3PHS2JaVlJ/tuzMZi+uZXoZ06xfSnUJZOPBMm+HpU+Dbop2UhLmXqMr+hxnMXWDOzHHWI1KMrGONXw4aqsBUs2OzauX/uBgrGV3u4Lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735004754; c=relaxed/simple;
	bh=sT+mgVhVh8kMpT14WDyd6Gkkp/KQnAo7rQprb84uS1M=;
	h=To:Subject:From:Message-Id:Date; b=Yal/O2OZDwODDHgmD3mNOGqHtL7v5wwyMxI3zTwmi7MjUUiCk/TmNiCBn/S8LaDoVmVEuAoVNG9dSw/7rAgzJEhgdp34KRFGYA6HuxmknZfyzNkPIOPtrIBZ+xvY4y19zHOSyKP90uIgp4rDkNCsdTYkDSNIRrTeCgIZv5drvYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ipCcjanL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ipCcjanL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF7B8C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735004753;
	bh=sT+mgVhVh8kMpT14WDyd6Gkkp/KQnAo7rQprb84uS1M=;
	h=To:Subject:From:Date:From;
	b=ipCcjanL+O/Fh9/timkvGChZ3jmdBakZEMYmR+V1iVBZoimT0DvkaXCYJe0tM2Y1c
	 WFBKRiBTIQkEywolkBqv9URmBd/q3P+aTSRhz4InU7N5KRPNi+ENZJdqO7Q8DwevFT
	 TweiGj2sJaqjn/nqjiUiGAS78Y3YodW2VI9A0PfE20DJ0X+Bd6ZkPb5fcz1xr4w2Aq
	 /WtOr2oK+vKFCYnIAKHj0B5oBR+6cPXDeuHz2IdAMvVUxyp9IeWndXIHMuEo/olN+s
	 iMNq+qI20HOUcmfoCZxc+erCzHMO8s+OFdaWP5qOqu8p+rPOeR0bkPATd3M4J02p9c
	 hj+qD6lKwn4gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96701E7718B
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173500475360.1109.13830294392055070060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 464a066282416179b9933df71010b715f1d2c8b25b8f84092ac52a02c2915110
Date: Tue, 24 Dec 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735004753
