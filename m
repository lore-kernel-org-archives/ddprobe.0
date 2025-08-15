Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA082737FD
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755263394; cv=none; b=r4yzCMa64qpPzt82COSCV2nv+oMkZ7Xd6xWMS3EPZpb5IObfKvg82QsEL05L1px2o2dFZctLz1BYFE0XFJXXI0wn9nzaHTM7ZMxk0fGyuFND8bP7+7owk1jse8Na2B5Qcl2jDUAdxwcN61oFYIZM3vdQEmdwDzQGfL5zz1vgSls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755263394; c=relaxed/simple;
	bh=P1NU+WTlYUvddCM/wn2TQNoJr/Gw8NEPHqU9KOENlTw=;
	h=To:Subject:From:Message-Id:Date; b=c5xGJjyX9OtsaKzf6wQw3iF8bV08Kr+vco8Gp4A0vR3EcUbQAw/kL1YTJGWuaMCLEI7ckYJ0cCFu/6hwz+qh9oVFELq5b7tEkrsWKt12PGmwzitDenAQRDVgPmJ9+NH52zFWZmBDB4cHpI9xxCrS+6lA8LfaS4K73ckhUnnyenU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hSP6ePNe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hSP6ePNe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1660C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755263393;
	bh=P1NU+WTlYUvddCM/wn2TQNoJr/Gw8NEPHqU9KOENlTw=;
	h=To:Subject:From:Date:From;
	b=hSP6ePNe+bm4K3C36YIyrZ3n4OTkitqy8meyuKhDD8bkBocCe6gIN+GAg9CZ+O+ly
	 pwMZhscAWXyKKmyIWRyTfoz13NR7+wm7Xewn1BUlH9TOLvZKq3JYCZcto9K/sybX5x
	 OnqG27OXEKdMNjIXE/4ICNiAGVTTIvj/2RfxFFGHJ/VJIUJH2GieXZFCkHnAeKKw9g
	 YhYr3gW8UHkEW6JQZXYNaWJdPme4zEsBF1erLaEbu9O6MCPmTZrZUhHjzx8VHEcVb5
	 AZ5JH99F/XL4DDVQsSOylFVT/PzHtkescdCKsTnzyk9G3EqiqqiFYqW5IH/c+JQl1h
	 fNo5oxZk1c5cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926B7CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175526339357.18613.2178778470487897023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ead172e02a0d98dc4c4a7650a825ffffb42b1596657e7e488ca75346a15abe60
Date: Fri, 15 Aug 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755263393
