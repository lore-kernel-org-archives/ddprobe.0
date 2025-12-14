Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE2121D58B
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 14:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765721574; cv=none; b=nLQIHrt0uaZxUcD+dU5jr2j8RwmBaFk2WybfCGYLj0PYNew0JUk0+376iX54sE7qOiuWBFXWuGQrezdUkqFFMT9sDsaFMmfAiX2QueSvwXjF77JO7gM8xSjae6tbvVec6aZjQnz9SkuOAC74qV5W/f3ymFAC2504QWRjek99JDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765721574; c=relaxed/simple;
	bh=rfOfwEQ3fYcB31pwYezg1ZFmRJ1KtLFqpvt2UHuiLek=;
	h=To:Subject:From:Message-Id:Date; b=l3xfvigcT2AxJWHCHOT5cLuHcxU6xXw51JDlvFbk+MZu9YdJ2KFAJjdwfMW3YMquFaOq9Q9JC2tKouyIQlsPhXf6kFqee2CBVcOM1gEW2IdaNV/az82ZkjWlcixbtk4ThOKPaXJdQYx/CbmDiDvBMvXiK1KrUNLabX09Ex456Ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rvPbfoyS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rvPbfoyS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC653C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 14:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765721573;
	bh=rfOfwEQ3fYcB31pwYezg1ZFmRJ1KtLFqpvt2UHuiLek=;
	h=To:Subject:From:Date:From;
	b=rvPbfoySHrWhAlq/QK9eniakUuxeqxak0qgjS5vOyTHg7ExpwNWOcNNsE/w5qcjpF
	 fuBB1CTb76j9VeTMY/7Dg0AOBJXKeCjE9EI/2/qclPVYtz9TiVWxhK3xmMR7RK/EgO
	 3yFd/Z5x7uP+OWTK6ThzUdDgGvF2rXSV/ugnwYGbhGqSL7nn/XTIYwi1cJsUUwFY9K
	 hk1PtiRAWVPg60xEBKx+y0T+cz6TG/Myl1TOpGGLOA1x+d5mqvWBq+Bh73Nmhlt2h/
	 l5OVH8XYs/lYo7KcxQbYklo6XVKEYoyZO9m8mBv7jYqgtzLx/EcjwUiFMabStlPYR8
	 B54B+WvgdgsYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EE0D5B169
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 14:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176572157361.6013.16313632815899924433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02589a9b122293e6bb598e03e93a0c413afd48d2d308ff3ec614d1e34b67429b
Date: Sun, 14 Dec 2025 14:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765721573
