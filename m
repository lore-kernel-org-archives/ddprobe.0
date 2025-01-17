Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6EF1CEAC8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737110754; cv=none; b=G2jQPzFhr1ViESGabGiqXvDOfAatdZTiW1o8KYkPSJP/gsWawHmd3uhp8zi0+Ce97JVoPMmyfswJNVqIpwcEcusM9OFGoLcvWpr87b4uSvGzm1EnfabYASgshP1jhq/c/Ebi5xPqCpUVkr/WHL64aWftinVBUQ4f8PcdDLu7eIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737110754; c=relaxed/simple;
	bh=Cgjkft3SxQh1ei+mYke4PKx3VgC9LYwkz0ENHLH7X54=;
	h=To:Subject:From:Message-Id:Date; b=aBmclznYje7dtOUU44/zYX14fkzxhz6+lm8gWh+WxN1CH4yuYbowvvXOgOhw5gAd1pY4jwrMnxBtgMUR5glk2TI2jykBRabf77P5SmnR/VWVRYIVTnILs08hr5BI0N3mEUdbPDditCshmHAQZ20ziXNLUftm4JDMQS+E6KfJdzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hokNqzfJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hokNqzfJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A259EC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737110753;
	bh=Cgjkft3SxQh1ei+mYke4PKx3VgC9LYwkz0ENHLH7X54=;
	h=To:Subject:From:Date:From;
	b=hokNqzfJloIjAiR3FFPzg7AsYAEHLjMv6X70MBkS5Nz3ST6vSqT+A1fb4VLWmIRJ0
	 mtGQv3CjtcuZdiWlqGO2Yk34qmlnjSvR/quWZ+JQw+yJTFP8HvsFy92sWwXiuUQxvX
	 FbmcwlA3yei361MN7Jy0zZ+IzZtZJFKv2EJDP9AfTk52ZiCHeaRenCXjbTvdvL1hb1
	 Y6PZERMW0LsMoB/5yf3fOYoY3M/zi5eu0CXxo+AL3JQIpgcAuhYGcMfQXJa1htITGb
	 BhUvdSp9Q2XAKXqVpKhqsbJL/F0yV/1kN9IXDmgcZRMloV6zg//qrY0o+I/ck+jp1U
	 YyHqUJiATk0Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900B5C02185
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173711075358.32255.12679291332332113747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a64b6f84fb07fb4998e70b64de4cbed99567b6adc17f2111ef47b278b2400b7
Date: Fri, 17 Jan 2025 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737110753
