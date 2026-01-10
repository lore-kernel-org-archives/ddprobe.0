Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15FCC2737FC
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768050834; cv=none; b=TfCj2j+2oKIsFz0iOft/1l1eAV+Tebk1bk+bgmjUjESsn07ZQkdqEanU+zm9gnzoNthsGCVNEn2wfS0bCklsLlzt0Gv5uVTHRdBXvdqx/VDyxs35LwecDWFLMl4CtQfBzvT5VZBKI5xzfYS1cgWgoO61mRrQK6DPBAjrRTGIOd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768050834; c=relaxed/simple;
	bh=/JoQxFM3awDVVs8mTUnrLP0Ru1huM29dUl4P6QxQuSc=;
	h=To:Subject:From:Message-Id:Date; b=A8OYiBO8VgIglu6ncWQj12jJCxfb+Zh/IQctvgQaZPUuSXKJI+ZhZnycv0piSOVN5FfXPPm8sMgnTrbTr5Q0UOFSOe7iThq+RuWAtW3WQznyPEy5MqWC3dg5awhc0aBbTblznNpwIkHBDFDHoctEm2MO72Lk1FghHIOfeuZOijE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A5mw1PdS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A5mw1PdS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B6FC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768050833;
	bh=/JoQxFM3awDVVs8mTUnrLP0Ru1huM29dUl4P6QxQuSc=;
	h=To:Subject:From:Date:From;
	b=A5mw1PdSwzzyc4DTeXZ9eMxbqdJ9WvI8w4kgU0W7IVfLuYmxzhtsecKMdmcAN1Wqe
	 dCjz30Kth9vBKE7cW0ynXI1HPJhQ1df8en87Dje9+j31/wAx/XRSeqaaUD7eg/PMss
	 /V49VTiXUpTC1i3uqlXPYjD79Yu0ul9SJYz0VKzwNcLotUdV01kwFebA9tzjbwhXHw
	 FXVXEa4NyscXA0KA3QZXQRDYwrsVxKutiN2Q6vVCGj2roX16t2WXyhDV7PWZO9rKIo
	 GAK4bSv9/x7AXeYPviuZQw/li2+ULym6IYb3UI5mr6bdNDpP7ftLpZxMDZ5xjJZNMX
	 D7IfvvV95p1uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9427DD277E7
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176805083357.23497.8551590591602289428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b66c92c81ea1a0504fe090e44af00737e107d744bf5d3715a6ba58e89db2f62c
Date: Sat, 10 Jan 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768050833
