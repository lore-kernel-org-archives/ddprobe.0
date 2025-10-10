Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402A026A1AF
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760111994; cv=none; b=ut/KsBqHIyVRfmqzkLibTRMGQX6a3GO6OUtp4DhI4/+AdNiyTcm5OdOiNvW8DeqZ4C3ughYPyeQRj9bptwM2/tLnlhEmifeAeo+X7Op6j2NzZkakR/DNCOxdE1qC0Ws2L3kvpIu+O3m2U/4GiBcgb5gn0A3YXelCgTyJYYkhQp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760111994; c=relaxed/simple;
	bh=KkZeuufVKSQRTNZFM6daZ33UMvtFmx30rO/MP9ERwBc=;
	h=To:Subject:From:Message-Id:Date; b=sGEecUpgJ8Kf2I7YR3x5ZjBPwAUOpukHzJNoPfAXEqi5mFda1EYeahFlu4arvRDblHhCUqINulSuykj74hVV8qUanbSK2cooiDas5ZOL/bdUnKX71fl2IMaWiMuZb8lP/O0xVenfstDX6X3MIvrpYR8SaTReJ8FU8ei+Z/yp7gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F5OTYPTg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F5OTYPTg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A1BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760111993;
	bh=KkZeuufVKSQRTNZFM6daZ33UMvtFmx30rO/MP9ERwBc=;
	h=To:Subject:From:Date:From;
	b=F5OTYPTgm1hdnIjL1r6CPl/DCY81qHNMeusSxoPiKwvhIeEm78wvMT+EjrbApwdlF
	 iv7aBLib29w8gWu5ofyZRUC2QlgX5Siq50aN2iHmQmkehhEMi7zJLnBT73KDt4ZIyl
	 8rOMLkNraYXxXGcZUrxx6y4SBUP0HX2QXYFO0KZRwZJnq6wBr1Y7pj5XgKz6oUag8Y
	 /yQV/D+kSyBsQMrJXqFyDgk9TAccxfI05FkWaDVRidMYmWRQOhWJkrWNQr/SHkWq9B
	 iFyyynsSDpAfTIazj63SdiSlx7Px8l68BI4/s9d+xcXtDnP0Xz9Dum1qMuJf/0USYM
	 EYAOkug219YRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A69CCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176011199357.15413.13236541302063687253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fa5468c827a6bd327ef9a2cf50f553868b420b25c1b91d7b1b62553fc43bf14
Date: Fri, 10 Oct 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760111993
