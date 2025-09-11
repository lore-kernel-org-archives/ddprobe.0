Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EFB586329
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757560194; cv=none; b=j1aeBrSsoLfUHebGyJSx7Ql0A69ZOiz+sHTadhH4r7B/vutAo9oJcqJODM9wjQcZn8PrY2R47oUfI6d0KzGF+LA2HvYn4u9XYhD5e/o3vd8Xq/9ilEE9OVkTxH0NWuZj7QPhsI+HIEWdHKYIzGB/19K2gTtTGRrJE7GgIZeMljk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757560194; c=relaxed/simple;
	bh=+v5axYf+XWju9W6DjQ6U4nF1vtIU9ZylKP7xaewTCtw=;
	h=To:Subject:From:Message-Id:Date; b=BfQ+AMSedtrt4VxAn9/R7MNkDLF6bBeBxvvat51SxEGQrH5BtIdehH9lqA5XRiEWtzeL6cHJ+2DR1cA0LU8bbGi3HAiXtJHngdWbIjT4kPsiFKZOYNBqlQSnuyyvxKx+2OuVm2yYQOToQvZ2/5qHO3c18OWsaM45/HuY9ma+AhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ONZrKb1s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ONZrKb1s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1311C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757560193;
	bh=+v5axYf+XWju9W6DjQ6U4nF1vtIU9ZylKP7xaewTCtw=;
	h=To:Subject:From:Date:From;
	b=ONZrKb1sRNth0z34qyyjVB36bJ5bP1dGNf5LGaOPHX8yf9wejTriouvkA6uRDLt6j
	 FYIftiw6YWfjv4EPbW4TcaWT8MHZoLEOMYReAtAA0CAke6cwu3avLbY3r/v0Vrsf1o
	 hgximk6rgCUOY1VvB5SCbqKoA6jLPPyKNUfAObBRh4im71fM171mT0hwIaSEu1UZv2
	 sRYnS1xiKFcbtMa7Uk1EYzz/BIk6J5kHQRgjdWNVFmM4C91LpUHbVOi/zrIhiiMMYy
	 to2PKRpADTwcgw9C11wAW9m3pu7O8EHDp0Z+/jGbZnYzxp28PvBxZ+o26Q1ObN4l8G
	 zWMROdyPRc9vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E899CAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175756019357.32611.17292460585185789792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25f383594c22ceb33fdd93a9e746e9dccbc60682e6616e5037818dcc30f45409
Date: Thu, 11 Sep 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757560193
