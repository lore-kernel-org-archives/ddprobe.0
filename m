Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E13A92C027F
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772018094; cv=none; b=S7j/SNC61dcIOjXy+c2XhVHIh3/U26jMIPzTXTBRJsSyi82ISakcvOkgZlSEWWIzqp0Q+FgHYA0epPwk+CXOQknHSkTMKzNBU8xjmxI1kWtybtTM+8e45tUJDb9NIrT2KRzpORIp5hoP5tkvwt9oVeMg5iIAp41IlJcKkDVIwfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772018094; c=relaxed/simple;
	bh=8Ux0Zre70UoXX6rOlvlKLGmkRqjEUb0WptMBPplcSq0=;
	h=To:Subject:From:Message-Id:Date; b=D5hJ1jG+c2fOw5xd4W73OsuCv2vDSulivsjPpwAHVGqGjOo0NeORIHIQLA3qvYrPlEFGDSWF45ceQNQ9vlTsdIQTcVlMUmnas8XPUjzUj4u+fF8VQHgAyiLkbtxVFWzYiyNk2atbylbFbji0zFZrhJzXIXddYF7zlCcCWpC1ADI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fpd6xfPt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fpd6xfPt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8332C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772018093;
	bh=8Ux0Zre70UoXX6rOlvlKLGmkRqjEUb0WptMBPplcSq0=;
	h=To:Subject:From:Date:From;
	b=fpd6xfPt3dRQZsMVxsvuYI8iaNbpIk+LKFQ6KTdp4On1ne7BRJsPP5sxKhfa7+NeK
	 T7m2jGnLicZISjuIkecbE6YKxN7Zqx3gWCynUaJpwbR5uPHEE3KPnkYwaquijZPK0S
	 2KkdJ/rHJ2MBaAFpxo7x6+6GTc0//JvU1o3vlbe7v//OnawwsKL5VxD+SOcNsetvf/
	 GSx+R86cBt3rATDVLQUwp6Ka/NdwrUWeNlAt0waNQMQ//V1DONlBWqZLT1zeD7RKWe
	 +ju0ywcgo9Tpo0SQ4wod3BAiuivN2Ms8BsYebbodV8zu1gd1Gov0rZWUyMg8uhLQwc
	 64WcEpefPdgJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A91FCEE81
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177201809359.16399.1197243091968510447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37ba91fc0ae433f2c09d9ef7e686964d9a9e9dd8cfb1f70d2c3bc1e841aabc2d
Date: Wed, 25 Feb 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772018093
