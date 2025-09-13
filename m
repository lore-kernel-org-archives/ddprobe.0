Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2190D2C0284
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757755194; cv=none; b=L/J1reXJzsKtU/NnSr59qIVHPa14Ui0w2t8SLugB1FIPfvIBa+wSYOEgGDoF9DZEh3nAZWU2lERjaiICIc0hBmmLqaw2zXRqMZxMmCsgCD7T+hc8kqWHo5Z5KWfp8tTaV9X0mDRPWgbOyBYtac0fFr5NnfscprtHtQC4HbwPo84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757755194; c=relaxed/simple;
	bh=QaiBEQ6hdeov5YJIUVaPeiE5FlRZIoO3K6lIbt5aKHc=;
	h=To:Subject:From:Message-Id:Date; b=lkTNvly46C4wFNsRKOJP7k3l9ODJC1Hm3a/9sfdeMVE5Za2l8nmL5TqJ3yULm2rvYWAxLNYV/zXadyfh2WrtGtKEFZFIP5/KHGzLsCrmU9LbyrPyntIcv7nIHusNC/u8SlgvJHvGCHT5Cbi8SlrJPUAQxApfCxmwJ/pAFjTOkn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cmi1dvQl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cmi1dvQl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACEF8C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757755193;
	bh=QaiBEQ6hdeov5YJIUVaPeiE5FlRZIoO3K6lIbt5aKHc=;
	h=To:Subject:From:Date:From;
	b=Cmi1dvQlqtAiFkJqh/ZW1914jkEXi4PhNvbc1flCorUddNoNIHMb+cNW01C5mejM+
	 E4I2oxgZOCRH7BarHjUNWhoywyj9l50n9gMEaZ3wo4BbC3wx930w9BRxpnpBJQRGZl
	 eUHU4gkuI3uMVxzYF2C8hmXIYMQ66GPqzUG/tX9ijf9FD8r0j8D4K/bk0LXDAoucFU
	 uZZVtit5iaoWX+59GjmmUL03jsLnLcgFQOooBjwhu/PfMAfSyaRrtqk/B7ru77arfb
	 pWiB3vEDSXGz0sr4vsYTd0p99wgtHKkO9WCxrySf0HFM8YA/ZBXpzNXcnASQMEo4z3
	 OgeR7QGtuaPfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FA1CAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175775519361.30984.13888748030819443122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95efa02b79e611db0a7f4fd2f9d35af00644c411af9db10a015c22eb46037f5b
Date: Sat, 13 Sep 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757755193
