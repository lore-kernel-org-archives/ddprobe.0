Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC13318EFF
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768042434; cv=none; b=mRyT7JItnmx2/QZWIrWZx01v0X0nl5l5YLACzSPilpcrZJg7Jv1s4Kbc6kqDxos0v3pg/3FQQZUWmfn6tYUE31MrzM54J0jauLzZft/ge149zo6MMx26HeGhbgKRhion0UqBUIfhHYtpaMYDTqP/U3PHqd328s7SXKSjBbFioIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768042434; c=relaxed/simple;
	bh=lIJ9wLmZCEWRWaX4dq4c1m1GywvP4tNt4tHgU0lbMf0=;
	h=To:Subject:From:Message-Id:Date; b=dA1D0xclfagHlWkvD1R4jhifHnMLT5bl48lOVDszOq8J2JozmW6KcmKDVJbBBzp1b+3MSQamIc3j36F+tebOGZ1/pYnTiv8+JTzjcyMdjkbjOO3pMnNpb5TMGpuqjuYqB6UF+/Hp/Tz5oesPxwXcY0NNw4IbWINblM9hc0m4GfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=epmErPki; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="epmErPki"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FACC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768042433;
	bh=lIJ9wLmZCEWRWaX4dq4c1m1GywvP4tNt4tHgU0lbMf0=;
	h=To:Subject:From:Date:From;
	b=epmErPkixOSDo7F3bVUHI1sQPOyg1HAh86sMudK4mo2kf+vhOpBshBRZTeEK1inzv
	 ruFurhdapxrenBWzd3wtxVXEb0xFcGQGO8gQfke15EzHkMR/uASQT4qe8E/tu5t5l1
	 67Gr1z8/J5nuEx6V7dB+apjVsvBNSD51SQLuu+/vu0cCtPUd9jdo9nFJxIb1naogTS
	 ztBlQUJxXa8oLO1AVSzv30mzfZdVIJMwBeTqG+eaqgv11AQShnX8s1TlW3xgBglCuq
	 YMjtgQOq9W/tlDY5Y5jiVbyG0B9gdV2oDPONh1puLhgjvrIIzGnqx2vVdXefuOmk46
	 hhKjCFbZHjCaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92191D277E1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176804243357.13510.12992076947857142719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbe5aa82da3a586a869a1bd766118cf9c2a8c4c6559a6fd714de662ab70b3ec6
Date: Sat, 10 Jan 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768042433
