Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2785B1D54D8
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753217994; cv=none; b=ci/T0ZfgJiV+ika76wJzCnVZZIsZNRnjbUzq/Y8LBhpD8kteEHSAyPxjX9hbE/ReveofB6eAJKG5dhbEExCBdOaY6M+HeKZ+SRI6RLJKZu3BD8FSOOwBIB4NIqRxT02k3rwchrSxrhdIYr4uoK3INQp0Opupd2k3WfC0pETMctY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753217994; c=relaxed/simple;
	bh=NKpT7dubHnPEEeOwiZpo6Jg5UUIYJ4WqLKvPOg438uY=;
	h=To:Subject:From:Message-Id:Date; b=YQQA6FC/6Ie2Rm1vYxk4kuZAz6P8TXV5jVvWEcd7eiLJHlZ0/xuoEe1si9DvDFwmeCazHzdQkaTrpAsXiXwXm8slRyE2ydBnQbXjzjQ0oOn5L/VQuE0v1gHLpXI0+ayAP/jznIavMryaufhlvZBPFgdkZlRgNJHF9LKbL/3iCMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKGi7DEq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKGi7DEq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A262CC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753217993;
	bh=NKpT7dubHnPEEeOwiZpo6Jg5UUIYJ4WqLKvPOg438uY=;
	h=To:Subject:From:Date:From;
	b=oKGi7DEqeHgDmplXHHe47aMnQmRT61XfBUSpGe2aFfnw7MZ+aAQr+C6PP/xagJVl/
	 2c8W5iUlnd3h2LP3P5McwbAYveKfD8UUcaia/I2/Vd1gx8D7mopTV4J0qfihDnbR9v
	 XRJ63bdl9tEqna2cqDSZBS1lO32cehKtJz82JfZJzpVfLZfV/Yov2AwfDHjErHeP7H
	 hohqAG8BBAOqZP23NfOj2lT6Yfis0Xgn294ojA7SgVlTGLucIhZDVbloAw1Ac6j8Vn
	 tcrex+3lNEZ4pu8DUgfVdkPnqVyOBUZYioLdpYWDSdr3yYde8oqWoFoHcGvqTNuvjU
	 YTxwoLipkwgpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1C1C83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175321799357.32750.3481300121966962283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f25c2b4e5876d8ad3354163503b9109c499dbb4dda9548bc2b4dd414e0f50c5
Date: Tue, 22 Jul 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753217993
