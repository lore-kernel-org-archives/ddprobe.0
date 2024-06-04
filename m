Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7644D33F6
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 03:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717470923; cv=none; b=rW2KcD9mOe3DBMFeX/9n9e1sOUc2XKSI9UusTQMoMd40XMzeNpu4KqQTKqnJywyEIKxon8bUz9+Ds6/+IWnVW4SgV77Ak5jvC39eIo2MFELlDN4Jn8qDykBpIj0u+16ps7vxnEgqVhDBtRVj8lf1TYuHd08VOFTJ9Jg+WGx6IGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717470923; c=relaxed/simple;
	bh=TgK4xwcb3z5mJRtfRPN1M0mayoGVhRGGJEo+97l3VdQ=;
	h=To:Subject:From:Message-Id:Date; b=gINIJyWodwAu+kw3b0RvXPF/aRWSJJAa1t37KoL2pXCmLOOk1P62wGKrz3l5IO0+I2o5gDRcAwjgL1VHsrwkyobZUAq8RjCwNzE6p547rB5rUuAwxEZ2lVIGUwKyT5Fl3EgKDluiPR/hM+5eE5HPQCl21iyEyIvClahoNL2uhc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vCSgOeqj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vCSgOeqj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06B77C2BD10
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 03:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717470923;
	bh=TgK4xwcb3z5mJRtfRPN1M0mayoGVhRGGJEo+97l3VdQ=;
	h=To:Subject:From:Date:From;
	b=vCSgOeqjJXaL+yw7QHaJnxwuwoYdGT0XhqhmdkmMuLFceXM/e04WCIJi3W7hDLHKK
	 m7a/jPPPCU+MPcwmGVgqC8o9VaokKwi0bfrWdLnGyUzrosMraDTiLyXk98ymC57t9W
	 EEITZR6lYoEtPEn5VYoDE7xsDuDItFpWymMj50W4MCkeq0FQZX7ESGbZTBF05SB691
	 t14h1KzMhcAA7OHEXvM/VKxgPPG51fAirUqTtOa2uHiGaRDrruiFsPl768IgTtjePT
	 IwNhpn/JvCPmGSMGVh83qxbiLXABQjMjKyEkSI0VV5WpAGT4wEUVX2oolpKRv7kMs3
	 woKmD3HJUfI4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7BA5C25B74
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 03:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171747092289.12263.11026122022209875766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e181a4de3a6e5ded91f0ba72b54373b38fe708f2f9c4dc15a6559f3cf1cb7c7c
Date: Tue, 04 Jun 2024 03:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717470922
