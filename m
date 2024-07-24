Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14BC11757E
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721792154; cv=none; b=KfRcBiFGVu5SKZFxkDOdaAOizpjsgywHorvHy+RZEuziw7Y1wpsGJiF5PBMj9LpIWLKUjRBETHpcYTQODqKTe07dylpioPXPen7yk9+T6IAv66A2i4iXsRwEGR87AOFXEt0IcySq3A+qucrpHhOSRw4ypjGlFHAwwJIA0bz1nrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721792154; c=relaxed/simple;
	bh=avYbIBzrM8NgNKfdaEUmZD2vjYV6VnKTJhNgxDJCiOg=;
	h=To:Subject:From:Message-Id:Date; b=Av0Eb0P5iptIpu6SBgwmlDgzk/TJvIYL2PR/w0tuK1UEAuHW07YCrtrv2nSS8+d5t0FbkC8NfqXox47yYSVn9puqUK42FJlC9adIghegwZ526dltYzZonN6VsazLmy7I69ov9wkkTWUhWxNcilfS2RRQnXw/CDlU1KkOkjoXzc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lo+Ji/12; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lo+Ji/12"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F0AC4AF09
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721792153;
	bh=avYbIBzrM8NgNKfdaEUmZD2vjYV6VnKTJhNgxDJCiOg=;
	h=To:Subject:From:Date:From;
	b=lo+Ji/12Lzsg+NNLoE1eppnnoR/SfHuvVwYpk4wfNybQ8sk+C18ivZ4X2pn/68Pih
	 WkR4fIU6D0tmGa4yqzRm0ca0zKCX2nrxb/n11GfKHS+ukBRIrB6mjSkwZ6tI/2lsJ6
	 tFsyHtHHUQvkyQC1XXErejF9pYM5DyvuUff0ZntdRnUAoLaG8uks/VT9wYpVoFROyP
	 3FeBXoCk83xV8anEAYkh1YfDsuTGo2l0tLSryR2j5mwQdbQB01rYbcNXuOATZNrBih
	 L6Shyoh0UFEr9rYBiwVC7BWDnp3zdbEoV0bLTOh8/rzpM6vATBgymQdp8+i1ukZFD6
	 XPid1d3ingfXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9148CC3DA49
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172179215358.32572.11949079396954404763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4475112c6e91a43ad3462ced1f7d16b0f016fa64dab08d2d9ecc15c6bf2e90a
Date: Wed, 24 Jul 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721792153
