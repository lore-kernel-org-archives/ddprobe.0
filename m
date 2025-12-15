Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B56230F92B
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 19:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765826574; cv=none; b=lmaM9XZAG1HkBIlytzHx1RXiG/OLL083euHSyUrqH2HIaPGxwLtknjHh0AtsApb2EKgEh+tVq67jxjpchGmSu99QNmohBVy+AEWUOWDo9I9vA51eEqaaAjqofPVppZdk4Y66vajSx4XaZ+b1yqAK5/dGObcoFxchGM1F37zPNEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765826574; c=relaxed/simple;
	bh=ysk0db319U4iWnDXuMOBfFF+BSjKv3DIELyVaX48Nfg=;
	h=To:Subject:From:Message-Id:Date; b=ophcZx0oDjbC6W251uGQb8H37Co+t5zMCMj4fZ/MQ0KAh/KHLEmSsaQ0PaTfXO+XeAyBwd5c3jKVMfFOgW0Rh+cjvJpvQ1WoB//zyOAgCsegCbKtntmlHIbI+Wi+UhPkEs/mljEjAJHhzs0cuDsOs5BumLnkWxpizK1URYLD1FM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qmSE22ue; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qmSE22ue"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7184C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 19:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765826573;
	bh=ysk0db319U4iWnDXuMOBfFF+BSjKv3DIELyVaX48Nfg=;
	h=To:Subject:From:Date:From;
	b=qmSE22ueIU6s0BtOCi3fkXlazd3f2OyRtzuDGBBVOQ8w2MGGKEZiKLQAxA4lreYP7
	 m/XazLOlPgupfLz5LGZ9CsQZBoEfPaZdTukR162yfa7jSrXJzgI/Z7WvWSwDQ69ePV
	 gYnYeNOD+L9CzfMx3qi98VtJeBMKGv8FUkiO5Xefeub3Ur0qI9HgMzIPSfkjbfFGZP
	 w3jZxmapYm5rhSoezHuCokxpBdaU4kC2mouyKeuXiaAQ2/dy0AN4yg92CdCvnjZgsc
	 i9MjZfUWw/dRihlZAwMYVkz3tclWN3Pm9hXLr607th5vMCZjHaaqVcKcJyf+fXnr9B
	 vraz18gI3N9xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924F5D5B864
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 19:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176582657359.20448.3835063785964154255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 099485ed1e268ac3fdfc5c44cc5e932ebc902bff474e8f4dfd9521df8071cef6
Date: Mon, 15 Dec 2025 19:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765826573
