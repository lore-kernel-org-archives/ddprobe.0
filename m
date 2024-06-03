Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DEDD101F4
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 04:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717388123; cv=none; b=p5xMi0HvRroXnjZlZFRjByF858KJc0tjkBYUoBX5FNVscCaJjsvepnw1DB+GPiafaoD2euTh/BzlpUZUxhdX1MknnoUHKUjuhqnStRVDKwqLIP/TeW//Zv2QCzlwVq/ZI6jmZ1g0FwWGeJZNHUZjsBiwKlo4Q02sJlpqH9WmKQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717388123; c=relaxed/simple;
	bh=z+sg5BcoKgXQbsuaxLwqTzl+6s0R0kpreF9tLdoKhXY=;
	h=To:Subject:From:Message-Id:Date; b=W/PB+GA2dCLVw3ky6U0HKC1lo3uKP0WjEvFUDWhUR+5CbC5GYBiUv1xJU0tkHVuAyw7l4wZL8mYbR9DQtLWP6xceWYsjypnbMhBPO84ufWX8BShRaOmeTQFpx4sO+5qHl0ezUw/87xaBMxURETLhNK/uqOX4lgtYVWh6ukGvBs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pCGsLw0C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pCGsLw0C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D280FC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 04:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717388122;
	bh=z+sg5BcoKgXQbsuaxLwqTzl+6s0R0kpreF9tLdoKhXY=;
	h=To:Subject:From:Date:From;
	b=pCGsLw0CDI/eEL/Ew/S+UtSlAAdoZ5zf5CVhiWZ/BCQTbuAMHszU0wiD/OaP4RaFe
	 pLy7leim+4xX5D5eqDutlmmJSgS0T5vS6UFLpJG+7IzS2++61tFOQOtSWLRFRXqCpI
	 0XMKgoHPFoquMF6NKh189d0nraxbP52w3a4Bi/W2Etmp6LyM3K/qipN7WVxt9fJOSE
	 hQUUocMIEHeRFwhkO5dDRjr/Dp+vFBEEUQrOto55WAX2B0ob0KLJFc8ofxz+9a59hi
	 ARgaA4MtPByD0LeQVvhng35JyxaqWhqI0tQ0FY+DqOGk3d8PVCFOgOjCQg42jqEs4y
	 cxBfJfHhMfYtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE7B3C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 04:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171738812277.26089.4527533181357046796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1102dc6e16db232e713e8d0944f0d235c0bd8fe3e4f600d550fea71f2c396d5
Date: Mon, 03 Jun 2024 04:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717388122
