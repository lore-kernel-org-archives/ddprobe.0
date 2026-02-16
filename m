Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F0D285CA4
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771232694; cv=none; b=LH2U05ZsjsnAPb8yPg9NKtFbVm+7KbV7gdjTIqpt8OcMYtxhSqExCp6mJ5Wtdj3LV0NpPFNCn9w9lxpWSlnwDkDnohnp1eu7YoxRTEPjAvezZtTCN3jwUakct1so9JgtaQXUTFRx8EaME1bKbsDaBMiWe+Kn5nwb2AfwOHM9MaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771232694; c=relaxed/simple;
	bh=egdhwxh6nvgaPW3mXolEPg6xfsww2xD+n9kd7B4v+Yo=;
	h=To:Subject:From:Message-Id:Date; b=OisUw7a/NbEQk47ajQUUh1l+dlmrH/O3vnm9VmLLoPgGyNDA2bo/szGTNhzkSp4sgNzuxW3QMNPNXiJMKcTWq7De65N7u4baEeTz0ZJryqTXVlrsHPZFtJZ4+dBdtN04Ous0q1d+2jNUlZP/HHJuoC6M7yop5PPLUmfBxybXH2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fEjxXWPp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fEjxXWPp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B563EC19422
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771232693;
	bh=egdhwxh6nvgaPW3mXolEPg6xfsww2xD+n9kd7B4v+Yo=;
	h=To:Subject:From:Date:From;
	b=fEjxXWPpNMlkfcuxZkNRSrm4XPrFiEg2jkYrzhj1Ej+/sjm+KaRpnWm3kj0VFlB+U
	 jjbDvBQoeGDy/E4xIZsE+9jlSkkOQn4aadAjyPoyJIO+6gFxprhaKktjejPF0JTPve
	 hHfw4IslfnycrtHAqJjF4L3gZonrN/HYbBkd9v23l5drVo0u4xy1TzdKYtfS+tawgZ
	 vN1hK0m09w+xZWbGaOeUBtAEYU0CeToZ2Am1sAmUoCwJZSnNJGeA/Ba0V6kDm0nvEJ
	 bVMjmXLIcibsFSnBLZG7psvq2ogUiySYbdd1ggUdo/lfwymUQbACOHcQrRFFil/ESF
	 E0/k2gJcfTEyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D264E63F3D
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177123269363.4781.3246880471779420993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d584f2add033c0ddb817bbdedb2de2c101f3cac3733af35369dae90f3f2a0f1
Date: Mon, 16 Feb 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771232693
