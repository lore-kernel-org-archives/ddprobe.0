Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178FC130AC6
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707226697; cv=none; b=P8j8sjmAON1f4aJJf07AtK1eyt31nAfkX5973diQBbbD0yA0Xs8YzI+bMIqQH7jAQbCN1kXR2bbf94xzHZZ05qzE8h07snL6AxD13LyQ6wFYv/cpUsSZkzieMp08nHY2ojwy0wntU7B8bu4nxLr+yLYBAGWa4DaOPLii069NNW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707226697; c=relaxed/simple;
	bh=luc336Mswx1bOCwF7m6vCM5iuZOywfQETo9LY/cwrYg=;
	h=To:Subject:From:Message-Id:Date; b=ijrKEGi/UusrT3Bb4Gh4mSbRtIEh1M8+g5GM14xT2tJ6csFYEfb2jij1u4eSTQhiosNTUg/XDYR1oIjQkE3BqR15kklSIGVGifp/VL6i+VPEI0LG9GpCIRRwYY8i52wELyHO7YEKeBAssy55FGZLDW9CaC0Zailc7/ULj9SiVFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sYA/kg0L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sYA/kg0L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A9E6C433F1
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707226696;
	bh=luc336Mswx1bOCwF7m6vCM5iuZOywfQETo9LY/cwrYg=;
	h=To:Subject:From:Date:From;
	b=sYA/kg0LPgMsJIqtFIogNpGpeKkGqql0xAP3yi7O3iTeU24WvaItjuQqaCCA9ah3u
	 w7ZScYmaaFZIUYw5ZVJ7OBYh5Y/ChKSfhjzet/80IiC8LVjCJ20E3bv/s1KDiYDAkC
	 byGMXl83Q/MekluphrJZN0mSBtAA2NCV2OTnE/8TgC/KpZWq8wHq3N3VbA30wTfM3h
	 HhtBeZLx1FLou9WkBUt0XxWNO9TlD9vJIz25NmKDlXrapzHmwwqQEhzfURfuAiURHP
	 PsE94whcmiDoiylvfaeVcngZF0tjOuNoittOIy6ZVe2yLOSdQaQPVejtBaoKRhFV9J
	 rva/nf+hwUnMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B3FAC4828D
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170722669642.17484.1609931237044891152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae5d9134d70a8cf2b75bc42c7324d381c790c1110ba3f9bf6c9fb8fcfcdc6e9d
Date: Tue, 06 Feb 2024 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707226696
