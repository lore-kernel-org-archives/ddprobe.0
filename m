Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10495433AD
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768014834; cv=none; b=jDXwahy8IHscGuq9HMUxIcTatzLrZHksL4O+S9x4ChYU1+GZNAABBeo4WP2NxGFEEeRv3pEfZJIgbbnFt9Ttf/mmHBjlKmEP/JFMBskYnr7ntDlbMqfamM+mErbOPApZnnXsyF2gRRXBrlWDXyycZfjx4pVYlhByFpu4UMbOYkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768014834; c=relaxed/simple;
	bh=IlWj4ySJtKM3hhWWzlfLE0fpJPs5fAD7n4og/YT16Ys=;
	h=To:Subject:From:Message-Id:Date; b=HT6SJC8MSR4HqpVtxt6IsE3IisA3Jf9LZif3j29JSdFP20rgkPqTum7GKlVm97+WCp7ShGtfA2DjuA0kdUvtq+iVb+h62m63o2GIGgQoD5wPCnpkfk3W8b1lBnj2MQk037LN/CepUYP7J5E76WI5LwHhL3wERPMD7b/YbWOJFog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MnQDSkad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MnQDSkad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A588EC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768014833;
	bh=IlWj4ySJtKM3hhWWzlfLE0fpJPs5fAD7n4og/YT16Ys=;
	h=To:Subject:From:Date:From;
	b=MnQDSkadObUWg6KoKUexUfz1NK+RcABhRngWrxyFQOQg6SdfwGE8uW81nj1ROcLkE
	 3DqkOQdhfZIzU26Nbo0gBWj1lrz2xBdO28/hSEezk6bKGSCy3c8G/5rogAghsuNscD
	 rppLfNTGbEq9GOXtDuPJFjei4fEJUXFLUiZKxZ32BJVT4+OZoiHvU8BEfgSQHIy9Bt
	 AZIO9V6jub4gSlfoe+KjZXbfoh1S822T6MeaokQvr0szYMK78pDCx1jiQmkt4CubU1
	 6QTw8ccwhU4ugNVcxYXK6yfYvEQyYnC/Cp8tlpCb0W97XPEInhnAhcDY1Iu6gxy5T5
	 2DCtbZTSAj4Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D79D277CA
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176801483357.2357.5454426111254483222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51ef9aaef02f72b9f1b0b5eecf84028d65a85bbda00c9268486a1926cfb5d1f9
Date: Sat, 10 Jan 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768014833
