Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F38E13BB57
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768866834; cv=none; b=a4LZ178wmk9Ljm1OeG63RO0gM12O8vmAGHkXappzbA2RJdldcOWHf+byfIoVM8F9hPBuxyuMU8roqbn74Gw/kqqtflAFWlPx77ycbDVl3ktNWCfosXJi9Lgf6va8YMIs0y3KTrBUpuplhA+XFiBqJwl3LTqDnGZfPt5HUAE1tPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768866834; c=relaxed/simple;
	bh=I/9AvFMM454RNwUD71LQZS7GvXyrlfOiuNESTCWAW08=;
	h=To:Subject:From:Message-Id:Date; b=q85FzkFFao1FbqZjXYCh447QRyoaNbJeF+EoyOjYq8JSZ05B27YeE7s9jakqo/rfl/PZoOk/GXAU50zwoZYWA09+4uCWje/PI+2/nzEu+Xa9XNuhrVMfx23pkbRfQyqOtAK669CLZcO0tz5EXBzH9LwHZjVonsFpE8HvmRHmeY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iu4rv2aC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iu4rv2aC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CEABC16AAE
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768866833;
	bh=I/9AvFMM454RNwUD71LQZS7GvXyrlfOiuNESTCWAW08=;
	h=To:Subject:From:Date:From;
	b=iu4rv2aCjYdvc3oP4XQz7vAYSUeCSSBjg4PUay+gIPBN6j2BOxNfCoXzAXcspL1EU
	 pkkdhV+2fc8QCVnHBp0qHTEjh8z61guC0tyHGd5f4yYtVfd+ADZhKXq7s+DZNwo3Bf
	 ptk+BQ9XrsE5yPIwqidD1cICmYFadtWPhbhUcQcR0flemZQIQggnoZrVTbiiPie/jl
	 oz7rKCIxf7J2jx+Ak+NT1rguAdgsodwBZqToKyZRDhukdleC6nQEFAe2Irc3645Y2+
	 0IyPPMz/lBxiKpXgSId73s5GW7hhx13ylAd8xOD2GUZKCdfHnuUqr9iJO7XFVH5RxI
	 KI48YdqU8hsAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6A5D2ECF6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176886683358.5485.3280179733943526015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34539b90de8b3aae7f332bd2d22a3cc4d4c1bf167ca55ef27b80f64662d4adbe
Date: Mon, 19 Jan 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768866833
