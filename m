Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E6050276
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770499434; cv=none; b=qHHfZW5vBhLSkdYEO4Q49MOyh/3reo5/WTM4i/RyPUc5B4eNSdzzE+QfNWXZYSe7x2gbYNTAeIWEAUUJh1n1rY3i6qbBSNrzpRrEeH642pZ4C1ywRFL9TRIMUCegad6VK2Sacs2kXrd6jFNXONl31QtnmHI5Xu3EtwOGKrugvD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770499434; c=relaxed/simple;
	bh=3S7c4Q7bg474f4M8VclUr0nP3b79TDROSJWo/Gt5Aug=;
	h=To:Subject:From:Message-Id:Date; b=F+xUTUKdUSmymlVmbtAsqelbTPXFLqog7EJ8pnNNh1VHME5r9Ql0h1Cuqsjivr9rdz3yDC0SL2P6iC/evAGy1LIBM16nzBen2dMwO9hAk9z/f7wa59DwmVCZRcwLEz+ZUFFbcnlwvUSk4vyCEgHWtUahNZ9kQeKMvP46wg5ePy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQ+RmbhL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQ+RmbhL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A511DC116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770499433;
	bh=3S7c4Q7bg474f4M8VclUr0nP3b79TDROSJWo/Gt5Aug=;
	h=To:Subject:From:Date:From;
	b=FQ+RmbhLYYeT3cihHyV1n3tcoM75bccTxH0gcXxGHKe9fjJGMPniG1Jx9D3GtvVoL
	 ksokzCbZ86LF/xzrvmMUInmul3WYD4B7Dqo54f2tn/sly+YKYqxaM6URgbJw3NVXsK
	 026D1W1qgktTzW/54ymGpQkHCLKbirm+m+lNlBGnFXFuBqjcCip0CSqYts4EQIMLVJ
	 xalhxUZiJM3lZIlIPYEWpuUU33uBbEOgqVZbepNMRh4s3+0cTEs+U/wezT/HtxpXrV
	 9hF5kXnZOeFDf8nyY/zq2/OFUBo3Agc2JPYfLIiwAhLeBVCcK49ZxfiPwR355Gj36+
	 E7QSyRIhHUyHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9503BEE0AF5
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177049943360.15034.16213685435399277931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66bf82108621a68793c65bb65573cba8c2c74e36eeaa8fb47e5da28c050dd8e5
Date: Sat, 07 Feb 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770499433
