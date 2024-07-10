Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4226E18FC6F
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 13:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720619183; cv=none; b=FGS1siFguGsd8iK99R8z2rZceLIt83GBnMjt6KC2td74iEEyN4taoOLGL0MKvPZmXFWja91ztDcnZYSHZC0bzEXnRLP6GRskH42a1GhpteC920DF5yu+Tl8Qox0WvrUbAmVM9tVoh/BRZG1nlH/Y+gx1lspzuaFxCVktnV2ZYD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720619183; c=relaxed/simple;
	bh=uF3GyZTT9ro6hXSxfDkRrEZAPNZlxVTB1hzbam9fzm0=;
	h=To:Subject:From:Message-Id:Date; b=qREYLib8DoluZEpB16sSnUZLykoEAkq35Le/fRThhKXsuZg8MbZULyRQTA1zzQvJU2djSUesMizKrrQKTWAFsx/P1wNaPp0eNph7xdTsgRbeUnNPFUmL1qz78zZbEJkg6AQGOGjo5a234qjrnDgLcI3bGPvU7o/8GjulvLUg/+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n3UJkIl5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3UJkIl5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF0FC32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 13:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720619182;
	bh=uF3GyZTT9ro6hXSxfDkRrEZAPNZlxVTB1hzbam9fzm0=;
	h=To:Subject:From:Date:From;
	b=n3UJkIl5Uu10Rk980Bu/ddrgqHNgCrcTYeZ9tOn/PLgvhCpkqQGF2BQZ0Gndk03pF
	 Rpad3NbxjPXCiOWblHjxYSR1YEDd+d8xCtD+XTZRcKXGcf+aH23g4hmwF0r/HN3Rpc
	 vJblNJpf7Ybqh2LlwVRswlZ4vo+9P52Kmg0Rh0K1Uyij47ex8FK7ibnCFbcvyuAaPq
	 xMxE7FeqHW1AYpXoOtHX5d70oXHp8Ovvc6yjVALjMLg4YalLwgpt8dtWji+PT8MC1B
	 xo2e3pOZckkZe3QVlWPQK8huuvJajdQ1AvPJsq/Zu5vbwRQTwO/XrdQQoy7PtBQTzB
	 0VwiFnvPEk7zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD489C3DA42
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 13:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172061918276.28453.16600463143163594027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34af604dc2e7a80324a714906a61886ef3255984f11fbe18595ba26e02a165eb
Date: Wed, 10 Jul 2024 13:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720619182
