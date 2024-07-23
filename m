Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAE913C9CB
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721766954; cv=none; b=MaifLZXF67917+wg3s2kjS5Qh3exI04PZIlCfY7fSqgnYTiRuNtOft4t8tTCoBOGgEdFhQDlSdK6d0q9ytcsSzYvDLx12t1+SNEDlzh9wY8QjtA7aohRtPC51BjPsf3ZcIB/NX3y2mKREZRbfga3C94dzxb9wP/aJHB1aKYnx64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721766954; c=relaxed/simple;
	bh=UiRnDKd+g8VD4FNm8tlrYcfDzb5Bzy8ByJXqJW8k+sA=;
	h=To:Subject:From:Message-Id:Date; b=HFoL9peBDlPAc6QhSHP0Uvq97WsP/r71uMi54HLN1+21DG0/cg8iP7V5fTPHmFws9iot0bDkiz92kUy60SyrKe1FBFXDpGe0kob6GGN71Vm94+aJq0bQxPdqpRLMRFcqQQOAsoDOzMwdnccFqs6JXE9Fd/B/AZuwF/Et3zza9/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g1LX2ej/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g1LX2ej/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADABFC4AF0A
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721766953;
	bh=UiRnDKd+g8VD4FNm8tlrYcfDzb5Bzy8ByJXqJW8k+sA=;
	h=To:Subject:From:Date:From;
	b=g1LX2ej/JjNVsO8inVyl/zARorS5ns53HOwiWI+k9YjZ91eJOakb1DnId6XdAiZy1
	 WMNao9XXnCbKAlFGcHfDCj7zgmuSTM1PEjrAUI6TWiXNky/cHgcgCX/SUnBX5bk/RM
	 fMja2ch1dI7c+jFY29zolyqap7a320fvwn0AuPLA5iGL/V9mD27BLTAUDKHKuTPxcy
	 Gx+RdfiUOlo9VG4b4ch1Euzj/xmgFpFCoOyWl6OGqr5wvHm3KMM+XSq8xHUpXhdLnZ
	 OKj7dVbEGSlR+EoBzZdrxRo8MQcTrPZGiG1MTLMnJoxDR9o7/xHQ/ne4E7uSqeFARh
	 F6Z/5ksAnc/VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95006C3DA63
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172176695358.2200.2635842294886655351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9d3df02c93705ad4b70d200e3eb2b32e7a46e35df9b8185197dc3bf0eea269d
Date: Tue, 23 Jul 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721766953
