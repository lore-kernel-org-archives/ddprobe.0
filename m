Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB14252904
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770167634; cv=none; b=kby65q4WiIF17h06auZxUubZ8gMQg+O6LpM2PmvCRW8OUyg6XNKueKVT9HVhLWJ86ZFruHFKj4832mryNusmCE3A/4nnT0BV8as8xZsfnjoHxopXzB8pGRrSA1iCO4+xw82r4M84HNdAJKn6OoOZPO62UkkN4Zi6Y2H/vtbWzf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770167634; c=relaxed/simple;
	bh=Dv9bcmx71wciXn4pzq4g7BjuusJy/oIqwV6ei4P1HlU=;
	h=To:Subject:From:Message-Id:Date; b=J3qE+C3/0Eh5Zy8n4UC2VhjjIGL4za344jy+W+0K6UVX6i38YeOqcdkNw/9ci5RvRzW0nsGbZJFihHkGH8Tiz/613xSR40Ema6IqZ81mTvv2WXIhMo2tqA0ztNVjFw63oy3mpABTqRmPAEINlxIFf9WK4a8LB29WAxM+6/wBeNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ryNePtuh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ryNePtuh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A556FC116D0
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770167633;
	bh=Dv9bcmx71wciXn4pzq4g7BjuusJy/oIqwV6ei4P1HlU=;
	h=To:Subject:From:Date:From;
	b=ryNePtuh+Y7l6TX4YRBWCRg4crsM9Tavf0HlIy+JJiiUofPGd6fweyYKUclJ8yy+F
	 vLzJuWT7BOcuxEYcW+y7QJqDIdyut8XBAbTgR01iw2q2X490wpCJnrj4LQ4Stk3QtY
	 qY0S0CA9LE+rpX84XQunCh1VA2xk1RBaGIryqnqlC5hNjf3h62nE1jL0T41dZ7pEYE
	 U4K7zVn4+O0WCHoqnxZjHHjn4LQFWTVDUB9EcrBMMW4KOxIV7pn2sdHczNLhRBjLj6
	 tbtpIbWyS6hJw6m1A6VxaAPnRbEN+38VUs7JOIaC1HJDU08OxWcxv2eyYQPF62sOEu
	 KgAlCD0ToLt9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A75E8B386
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177016763359.8962.6065228915735728879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c1a38a72dbd8264f33b1acab5292f652915528b3906019768fd497a2ce9dd83
Date: Wed, 04 Feb 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770167633
