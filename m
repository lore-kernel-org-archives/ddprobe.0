Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE8133C53D
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770717234; cv=none; b=T2m4nRSCC9goYRy4P0PhrOL1jJ8Cgrf7qR2FLLdGF+Glo9U2px9IUGBv5r4b0RNdAZ0fGbdJUoe1kGyQlQfEGPRo/+adxM0MaRfCCN46TEGREoxFBsthmiI0z8VGo9RQZYGngr4OJlBgmjYS2Oram5SzsZIDVFOChW5hiVKKSIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770717234; c=relaxed/simple;
	bh=5TKfTvv5eIp1erDvfp4fgONbxBUNAYy955lSKZjnepw=;
	h=To:Subject:From:Message-Id:Date; b=aKT3zn6J1MhKvU1AFGceYMDuf1U67Dli6WCLfLoGvNV/e8F980GK9DRJ3cC6nBaEa3ns8p/QsOBQjkei6wtEgoamUZOZxncsPlBedX5MxEUd+0mHwmOuIuW5WRYGkRMcuPxoa8ZTWTLAm28JSXqI/OlRGHic9ZJxgOcQPsKO2DY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M84um5cJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M84um5cJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B532EC2BC86
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770717233;
	bh=5TKfTvv5eIp1erDvfp4fgONbxBUNAYy955lSKZjnepw=;
	h=To:Subject:From:Date:From;
	b=M84um5cJKWxxDozytG3C5G5doZ5nzoHgRImCkVZQdDiIMdPHovFfYaUiWSiYdrP8R
	 z980PIFfWOlXBmfvzOEjZyQKggKEkq/SVamJcHtQMC6tKG4hhDQy/J3BsSUOPacazo
	 Zv5zGCJVYfnwpVjR1vGy2KN7hv2u52zm7MFm+K6nhBy/yHnxrVQDXcYtXqWepGbK9k
	 iMagcQdecu12UlLDny9NsrcnglDrAkoLqxnRa65QMtLWMnx8YF0wIOEZ5BnxEUvgA7
	 dPDDXzl5Jt/OU8thRf6QlFaEN49xP9WzVxoW7F5zUdc7nq9U5Fp8UvJo+vcFbhmlAm
	 HSr4qUUbecrwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF11EA3F2A
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177071723362.1909.14859661702628408793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97baf50bb96ca8e73f80808a04e73d89b161118df8faa58449e64798e41c02bf
Date: Tue, 10 Feb 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770717233
