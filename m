Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBEE9286422
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767078833; cv=none; b=FrWNMDfp/fZbe2aoHbHwZdNXSwonNisdetLGB3WDXt+i+gzZqtp3Ommr7LWAqTsskDutXLBiI3Lth7SVkFHy+N5vfcqmYtY/uprdmwdPSO0KwPxNLwV3Od3o/pKCIP/23HinjkzAk68Oizc7fsV4Ws1oz5r23TyLa9gX43Kil0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767078833; c=relaxed/simple;
	bh=+UDJuUEdeyl1IeKXMCZeYD34F5eCb6REdw+V/5cFvp0=;
	h=To:Subject:From:Message-Id:Date; b=GqsGH8+Y/LzxkPUaILEKl1a0SC0d16U5rcj7Y5XS8kWS2ieMln6rL81mkshyooUxQsaIoIURYlghcF/Qm9y9z7n+G17eb1WMsEL+cqh9QfT5MF+zd/Rd7svsyZH1zlV/hyZETqpVOjM9m859KHBZomIK6ZgcoBht91Nc6/MBVpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mUUtvBVq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mUUtvBVq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AF55C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767078833;
	bh=+UDJuUEdeyl1IeKXMCZeYD34F5eCb6REdw+V/5cFvp0=;
	h=To:Subject:From:Date:From;
	b=mUUtvBVq/VT/oK6Ei0GqahdNcREnv3WSqlmTIhsvIISoXar0oUnS1qamFH2YOmXVg
	 eACP8JEvBRk5DQCgNmtCxRxqJWe6MP0URkGjF1n+2aHnbIFHzUTumczRz8s1Pa/SXh
	 JtgQYfwGLB9pUYtA/cVkUP9srTPxFjvBT0AYM90UEe7ikWFc8UMN1KFtrcE/8Ujdgr
	 j+lnl8V7svi9hQjvIO/VXF9PYkHWsJVefl3yZbR3ZkLeZcfn9Yrrth2Da3qMZiQq+T
	 WuulF1p4/hezbpBLjYc58e0rZs01jn1ac6TqAvSN2gHA1UlP2etXDuHB2aZII7aEFH
	 3IcPhyAbVKJMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E535E9411F
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176707883357.28266.7591927258091988092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 894e28744ab9a76a00172e39eb22e223b00e9d0ddf1c27fe44a851359de6ef5f
Date: Tue, 30 Dec 2025 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767078833
