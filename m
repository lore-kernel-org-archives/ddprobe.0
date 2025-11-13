Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13A0935979
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763038194; cv=none; b=AE+4/uqvyJ0cRRRO4Ba5WovXDkOmUfKF5B1BEQaxItsd2s/BbBJhpkRpdJvbApWefAKsTAKexwE9fcOWKpp694n/01n1HKfwQ4D6DOPvNUmVTFQg13ulLde2rbaU+D4xm5v2CkDv7ZqWMeUQArMVOKWSMK2fhJwlfzYJCXCLGXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763038194; c=relaxed/simple;
	bh=mAlT4DPl2m8OHDw72zYbRK5XdQK0LApPius4OM8+H2k=;
	h=To:Subject:From:Message-Id:Date; b=bYeGZt4yBaATYvqkbf4dyTU4W68OcI1uXKpZUsb6P0ISLQ0+eH/0nXAKiokNiikVQpV83qcjcG61w4S0E/FKzLM4rIiWmAdIS40mpLrHXu3jt6tQ2J7XJS+A2o8+KTJsZId7cZ4LEi8fFRCVh2ZXuD8GSeoMwYBx6FGrSFJisxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cVaapurp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cVaapurp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C6ACC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763038193;
	bh=mAlT4DPl2m8OHDw72zYbRK5XdQK0LApPius4OM8+H2k=;
	h=To:Subject:From:Date:From;
	b=cVaapurpfj3Vw10HnZRH3qOftKriRaZ8WXlcaIQWYX2OQyvaiQkIRgAYO/oKH7fnK
	 SEbl6ypMztXXynEyot98P+S2z4hbtuxvU+lx1HntLTogOx7kWgzZ592aPQP6KYqWOr
	 mxlLPsaCEL8VVFD9v9mYRKv0Xe32IWgFNnXvRQ9MbY29VIpIOFRkc0AJs0yrBQw71J
	 ag6SsQngQVEXFCJkcytnrXE4uEQ4hdpjpXgAOM/3LbLHaK/ujbHbd/TVJRhk2ZgP3r
	 tBCY41d+rBKTxUhOWygNDWAj5r8M0RnKqREgiAQrLKmxfWujUoTtBkaspnAvSoeHuX
	 WLnxp5m+pcALQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCD8CD6E4E
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176303819358.24218.7154869788037297036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41895bde61bee4868191cfb381017a872321b987cf124948d82d738c0497d6f7
Date: Thu, 13 Nov 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763038193
