Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D28F22619
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734338754; cv=none; b=sveh+RZjk3e3DIVwDhruo+m3RIhM/30peTNi3l+mCD+x1QQAkmDR/2LDapqw3yFKY0A9sjIWxrg38AsslOeQTGv+9ms+gXeOk32L5BjA89KuiHxRl/O590/7dpI6cbSdvxt8t9ppgxhzVdP+M3ACRcJbLCsJrO7Xy/ms1PspEQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734338754; c=relaxed/simple;
	bh=GJuhbnFAiBnHFAYpqmAohQzmhJjYMwy9AR2wc+XDH8Q=;
	h=To:Subject:From:Message-Id:Date; b=DZVf8HXRcbEP0HW1RNcfJB2CeuSngjNM6be98O1rk/xn039RC0VzdnXpza4/3TaKVpr98xmDEky6FCuRqFeR0W9PTBjl8begiFF2wkGx/4MgBO0Zsi4aRRfTt9WEiOJ7Yw/ExepNHyYmtxuOFSIqhPo3IVMUtRHDH02Q6D3xKBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/Nb4sDt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/Nb4sDt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B25D7C4CED0
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734338753;
	bh=GJuhbnFAiBnHFAYpqmAohQzmhJjYMwy9AR2wc+XDH8Q=;
	h=To:Subject:From:Date:From;
	b=W/Nb4sDt3bebG+UxRGEznO2xsRFhF2pBT7FbPuMo0L/Tikhis/Z5pALgZdlS8N1vP
	 zcoQup7SP3xbydy+B773VEybCwrWZr+H6Qr94ihZc2Qm+hA4FTVGErfh60GnnXlIu/
	 3l4lOjiBIdyf3h8jA8oiObfx11HF3vTQPXN97F36VvVc0WGqs6FvZG6Z1JgrAfcTDr
	 Afmki+fsVIKH3BD6eUptbW3+nsfkQYU5/v3UPB2rNm0BLni1rn4F/Je2b+/XBQDy30
	 3k7w98DOgeFeUxxovVr/5tN7I0BB4SmZ46y18J33KH6CTlLwe99Trg3ihAtfM8zOmt
	 LpjkzNqzyTIoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D985E7717F
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173433875362.7809.14003878772564163857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45810de36185a61760f8b5e48ee050df091f101088ed9870e58518b0db8ba921
Date: Mon, 16 Dec 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734338753
