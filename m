Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA2C202997
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748291994; cv=none; b=KLqPR20nm0eXjLrn1Kzpnsg4DYyQ3Fm7nG64Zq1qc1RFi2tXSlfj33gHdNE4UWbOv2ETsZIWkqW4NPfxAP79Ajo/SFPm0XdYVFyVRMr32dUjIELJ+EkgvOAvOrA22Za3MQJq1pkzVHRluiou1TBSnZ9qTX1RpEZ8gic11GFacTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748291994; c=relaxed/simple;
	bh=UCR2VH4eUXvb0nOw3kt+bueU+zIIQ66vnvrkuzi3bjE=;
	h=To:Subject:From:Message-Id:Date; b=nXnCrLMjtZQMRWGtHgEvqVadZnZfl8pQKMrpv6P70tr/MvYIPARz0lL2E6DKPSV/NIzNYYu8A3uBg3Lo7FGu8HHDMu8j+5pJMM15YVHM0PIfESDJ6BnvAqyp6+d8KpilMlyfDhaZ1F3fXh4aQ+yE4qeydQYeCH13kJPw5O8idUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ialmz1ps; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ialmz1ps"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F6DC4CEEE
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748291993;
	bh=UCR2VH4eUXvb0nOw3kt+bueU+zIIQ66vnvrkuzi3bjE=;
	h=To:Subject:From:Date:From;
	b=ialmz1psn5OlU0K0PmGzopR6sZX6fkTzAPlCVUWy0rstKvgDyTY2vGCMXxk5tiJUL
	 bvGPtSrm1/ne+mxlQKRc/PE8wOkpiK1OZZHzbVvC2L6fhogeeALFNOblCdCcHzYU/q
	 YSL2BPIDSd9xcmqJns7Bs7z1O1G4EX828XgZqcRV9CK9KWm4Kt34YnUOgo4tN54Er0
	 CTMBTjz4ohq4B8FR4e7ErNhbyLDehSnm/F70aiDSkk/T9KlWbswxA/FuwL9gslzuKI
	 VP3hmxyeZ6rPZVEKHwPIAZucjbRaeKl41DyByVsEzCS0QBlUSH6OXNlytJh4nqImSs
	 4s6FUFQsm8s+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92031C5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174829199358.12208.1260805858863041368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c233d0ada0fd6a1a93f1d25b4ec33ced484c0dae4b4dfc3fb3599022994d62ac
Date: Mon, 26 May 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748291993
