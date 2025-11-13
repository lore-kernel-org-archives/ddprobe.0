Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E07B3596E6
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763058594; cv=none; b=aXJI0USI+AqzOE2dS1fjfBhdlj9ndhEoTAzw6afEDi+9oj2Yqcx5vjeOzNdfOhQNKmAzZnDaMOEougsS573hbCfs3r2BdkVt5jLW9FENnNWPyVM0SjAw1nMG1iK+DmCJbajugsaaWE8PxZnGRroeQiRQdobrbMhS2LFcyGzLyHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763058594; c=relaxed/simple;
	bh=KaKcjfjvD17zxxK3EubU3SXNxBofZ5/v6M4HCTUGVXU=;
	h=To:Subject:From:Message-Id:Date; b=gnOdsqJR/P0s3lICVYV88ZTUj6F8houRsJOIrS92nDly4vU0HG8NlW30WVrnzy8HB0I78M1sYPBSeyCkVZaKCA/zZGIE4TvL7+GDv78RYMWVjtO++vwyjHdKHz7XEvtTMHfHWI2yB4KyzyiB9TFDQ+TCP+Fx1PDJmEDfnkxSSmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y1e5lprP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y1e5lprP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AE9C19424
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763058593;
	bh=KaKcjfjvD17zxxK3EubU3SXNxBofZ5/v6M4HCTUGVXU=;
	h=To:Subject:From:Date:From;
	b=Y1e5lprPxBCvSa2awYWNkIp1rNBAvhxNV13d0lkCX7vOh7kHMF5vYe9wa8jT2tg+6
	 O+G/IHGGm1n4Eco7QvhNkQpLgX2o0mkgWQMyKEaxQhZZLfu5iUtDhSxLI4l0+vv9Tl
	 qUTQrskxlB2WA06ThoREsohu/PHU1d5FUsaC/9GoLCTT90i3nEPXqF5T+QAZKb95/9
	 IKL0WtMEjzRaltzO0GEUQCWjk9/BYbjQgbZ55IsJspn8KxmE1uoWSplwOv5J9U4BSH
	 NSsfI9tyG0MIRWTzAsAOajVIZaXMviWyH5WfcNkuvvDsC5tghvOlhZ3V39mCvlyqUz
	 3gL8d/jaeac6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FEACD8CBD
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176305859357.14890.11246658604604962009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c243c72721597e53378249e8a17df9a38ac331c5722349686fb267f6aaa5d0f4
Date: Thu, 13 Nov 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763058593
