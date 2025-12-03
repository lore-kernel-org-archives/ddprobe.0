Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B726349B0E
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 18:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764786774; cv=none; b=FxS+mDYwyfRw2v5iBsi5lqzzrhuIVI7MPcLj/vEfi27NJseyX58ElH6mPggoiQXctjv+/MNiX5bNcSpeaO1u2tD6atZn2apq/7qW4LwFz6rhB8z2i4jYxpzLAuQtNpJexZbjXP4VP41y+6WnCi/nJWmzdHzwUFL4sBg9zpkTXrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764786774; c=relaxed/simple;
	bh=D7o3B7LiVZ0wmwm/2C5N/GgTTpPrJw8/KYVQciwZAco=;
	h=To:Subject:From:Message-Id:Date; b=n0l1TSULQUTz9zJMJ1fnFO5QlKPuPxIr4Vl3xMh6DmvgyaAKXD2OE00tk+vBgUuzO4FimDamHbd7hq1myq5iFON60WJJuCGmwTvK1ckoFEigUDO0qnFmmMD3RId9HSjZID618ZIRodKE5pzvRlN4W1kzjBNfc8pM3dlyzz8YzkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WkLZq0Jp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WkLZq0Jp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FE2C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 18:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764786773;
	bh=D7o3B7LiVZ0wmwm/2C5N/GgTTpPrJw8/KYVQciwZAco=;
	h=To:Subject:From:Date:From;
	b=WkLZq0Jp/o+WZnG84xvyd5EyYgQLCaKLTtg97F/C94mXvX7ioMMHBYaWBlBEBRjgw
	 x+ZQeAdLa0+H34iFAFvPIv4msOs+jOVDi/2iQVs/0MoK9cAWtP9ZzwB3fcgRNAYV5L
	 lhONpZjHUhbB0ppL4Nz89ExRAU38Uv8ETPI+oikOnPxQualqHXJYaZM3duDM9L2n+H
	 Ot7tGvgflP0JEdqtqaeTdqXnVaQhs7WKQsInkqDZPSPnUXnmiEPQyVj9AOKQT/jFnQ
	 tw/WYlABCrmnvBSh0W1FLCT+xAUiz1EX9JOkauhzo07P+o8BUW+gdTS/lJUpGT+0c9
	 o/UVJ51f6pFLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90873D1BDC9
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 18:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176478677358.8660.875240637015986033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 151c5857f255993e2a43a2cb85cd61c6af2adc810641fad2f68426c3324be2be
Date: Wed, 03 Dec 2025 18:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764786773
