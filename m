Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1301917F4
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754805594; cv=none; b=oQnSZHrPmln8TO1VoJtpwdBEhCSqMVrGuSclIZPkrx6ilsTGDrxJJbsDXnSUTVyUYKDCJb98vlxpOma91uKD3QSM3cZ0qVtrG+a71xuj2aWUZc36fR8AsBTkzXH6tWvx0V96lkNKmOacV53pTDnRRgV4P5L6UoHXNvZ5IKBWD/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754805594; c=relaxed/simple;
	bh=K1gjZsrDQpmZZgKcJIJt6ZzeZCJoBeol39sBM8rfvVQ=;
	h=To:Subject:From:Message-Id:Date; b=dGvqKjsmZl/zbMFOYAuVcwdgtLW1Mmn6UAl1/eiez4YglAsWg2sOmtsKEp4eKzKxwFrGn6NQ7wuF+nI8idsAmiuygTA0USIt4EO2dHixVoHM74A4Gj5fgm51ugm0iIMGkytj3Nj8uFK/ZvOew4by+AIttXIzgczg141S0PYw54c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PqRPiMEQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PqRPiMEQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A037DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754805593;
	bh=K1gjZsrDQpmZZgKcJIJt6ZzeZCJoBeol39sBM8rfvVQ=;
	h=To:Subject:From:Date:From;
	b=PqRPiMEQoB1DRDVE/ekNsrfdWlGWF7mk/CujjA5lDtTCZZjiEHN6AQxWzyGnQODyo
	 ghWmjLafX3zS+J7glILOG0FI/h2BfCW4pD1vV7FWsw5lz/9GxxNgc3JjWpxBwnXuW4
	 CNMRp0f2RPkBCeBa7SzbBBRQvhsWOaXrfxJPjsH9k39pJU1TbnPstG5OLI2bLt+WEA
	 R4DrbY7O+cxBWUVcX/+Lc9wOOW3zVMUEfuj/0s/i50KzkcTnXYTmvhYMWe5ski8roR
	 ubU6ZAw+qSvGBtxchpOMdL020Wc/naUGafFjLUuqT9k95/1a6ioks3yewk10Mkqgy1
	 V8GDluxKSfMwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EFDC87FCA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175480559357.13468.10052901428290446018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b990d2e343d409fa8949725b2aacd4fd8df0dbc3064a579710fb0d55791820b
Date: Sun, 10 Aug 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754805593
