Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F11A21ABD7
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 17:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778087854; cv=none; b=Ol+q9W/cmhxqWtPlAt7mIdGXSlMKNDC65u++pnJatOpMQHPShHhPyeidWtPwjsRTm4I05+qQJBRvIyRhtK/gcR4GlEeCQjpwNdyM23mi86lz5wlnoSeMv4Aw7JUn504EaIwwZOchyt3ajq6Dfc9UAJjxqEcJk+R8tKR3WGz4T/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778087854; c=relaxed/simple;
	bh=NJ3ndQLwDli2T3GEhIfM57IPn7/SY3EsBBS6GvsWeC8=;
	h=To:Subject:From:Message-Id:Date; b=W+artj0o3bcMMo3zwP04n43QS3X+LOhLnIkL3xGchdFj2oTAiiHx/7C4oH+/5OjPpVokOa0oRUIaDpeKFspuiWtzM8xwnEphoNS7pJCpU3BNjoRGCOcDz/3NWFmkKgxByT85gOsZrPU9g+TE2B9uCOM8CTEtpGsEaQ/lPah3II0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GmoDEw6h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GmoDEw6h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C058BC2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 17:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778087853;
	bh=NJ3ndQLwDli2T3GEhIfM57IPn7/SY3EsBBS6GvsWeC8=;
	h=To:Subject:From:Date:From;
	b=GmoDEw6hrPG0fVQZSrYOsWEaDiM7mTFm2CY+oLX4PVJFGW3p66MX6U389F+7SR3wl
	 dMt2K23TpxiwE9m55Xk7JzX8Cw13enPb5ev6YS65hQcKwhj/1FfEoPqKRlI4mbIEoN
	 E43uTGLEyvqyANgmfJcjORdArrUye08zbnvLpnFLS4tPsYEsK6FQOHJkFFy2qkGIFZ
	 k0gqVpFF8Y3XbwF7oO7F5TG1KF9966BRL6GEObuUMMRA0rlwoYv6Bm8bFDxhmdioyM
	 fZFkCimbuuioJKoXQYvhxpkhKZgxnw4v9v0PfrAiy/EMvBkly6o8JPaAStVzbPAA3c
	 olYwmYYki2nTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0DDFCD3439
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 17:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177808785368.26639.4447589041743571961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2356886c7e6995415cf5cc15ef53ddc61dcbee9526175611f03078eb5b0d866
Date: Wed, 06 May 2026 17:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778087853
