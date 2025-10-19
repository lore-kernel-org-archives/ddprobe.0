Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A925A930
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760863794; cv=none; b=Xd0xVeuKoJinCvItY49v/h2DwFQOyVZHE7rUklJqkrsMSuo0gIeR1i80yYhh4rAkHTPr4m5gz/dgdSJSudTLV4AEzYQYD5XWVXeLQWNHgsTF25O44wjtP+btCqFbIx0SQTvbir8G1EOAAEVr/xsadh6OT5LoS8bdZttaCmfu31Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760863794; c=relaxed/simple;
	bh=/2Xm1C4k5khn708e0HWq5RSvZ+XvLZbdSZrJ5oZJ7Qo=;
	h=To:Subject:From:Message-Id:Date; b=N0vAVc3b1WbIeMWC+v7yfqCl9GBajxpogqKIW3laemddJINUjzshbEIPrcn708Km5cduQ6iqEt2BoG9wAnc7LUetplMMN55iNvX2x7eqpR7sb9W6Ndz2lxFOLHeWQnoP9oJ5kB3SrapCE63JznwSi7hk7LoFx9mCB1Gn1ZVHk1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJsekP0I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJsekP0I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DA5C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760863793;
	bh=/2Xm1C4k5khn708e0HWq5RSvZ+XvLZbdSZrJ5oZJ7Qo=;
	h=To:Subject:From:Date:From;
	b=bJsekP0IA/3yvsKm4EC2loF85t2uTXh4uGj/uCG4glzbWWn6KqzsOumhbatWGvVDw
	 B1DRWg9XwYhzB3DBRToCTFzwINsxzDLbUAy0kRMPZW3mtJQ4VvfPWXnFEopSkd28EY
	 KZmRCLiSiKwk/E7QBodtK1JsKt7sqPXmc3gFCK9TgY6BnSYUyRc/Dx4MiIROnkWCfV
	 KnSSuJ/6xfS0DBD7nUIzKPvkcnh1WP5W3ZBplb/FUlU9rO8WOhYfE8CDPks7NfY19x
	 wQgjXjBVbLzUit8FJCmwTIVod26wZ/AOBMm/C9zk6aHbro0oJfiZgCXe8LaEe36I6Z
	 OKJsQ4Z6vi8Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95006CCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176086379357.6582.6415131741967898519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6860a8fe22bfd58e257f08c788acf98800e6030ea8de22e3af0e32978a670b4
Date: Sun, 19 Oct 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760863793
