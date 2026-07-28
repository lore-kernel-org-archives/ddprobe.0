Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 642CE2BEFEE
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785217834; cv=none; b=Qk4EDL3N8NGQ9iO5qV1kqol943k7uHzr6wHRx/jTunhK/YrGbPy3nXotub6qhJvC1uCESiugDbd2iznp/scBe1U0jvjvQOryt9bsN2eIzoqVoLEUdoBj+bk9R42hkz1Ge657gGww+vcOxxkEoAh4Rx3CvBkKSUZPdeXHfV+ZOM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785217834; c=relaxed/simple;
	bh=fJONLr6W6YWnn/aju6qLZxGAVNMOSpPCJfmfJwTr/xs=;
	h=To:Subject:From:Message-Id:Date; b=jlO0/V2U18QBWmv1WfmK1Nl+Eu1av57t7ZXa+krMgivEwwPQmVyXhGvMsoBKXuuYoHtQqUEWSPMicaqpH5QocHPnau3tx0TwJa1USBvvd0hPc711sGb/JjHXvZ5gq2ttczD1Fpkbj8g+BlDsJmAxkfczcIqnK+yktHe1ylc9KwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eUxswVD8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eUxswVD8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E856DC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785217833;
	bh=fJONLr6W6YWnn/aju6qLZxGAVNMOSpPCJfmfJwTr/xs=;
	h=To:Subject:From:Date:From;
	b=eUxswVD88HJe70tU7NJaCBVouykgxO5Zpa+pt41k4v1ZVHYvfiqlKs/KF2uDKnD/T
	 Vllz7fvX1qiNuFwRhsnxnMSkj7rll+rn+Hmi2PWhGrEvBkCCqzTf62kiHIKM7JPCU+
	 WOaupy+UypMeGChalIQaT4L8K9fi52Lzy36jdiShtC4kLBjN/9h4WWQlqF1W2h+qYe
	 t0ub3743Cm1e1pyHln36KEMSLRgRg8cpnLDC0GLSoIG0WFsWI0jrC8C53TmSLowAbI
	 8rLsZASXdTmYzR1fiovPAPwmFX/83RynxdFJDw/6ClbhqUEam68DpFegsDhrsvSpKy
	 dDGIozSguZfLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDB07C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178521783373.29192.18324491933143938714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d64803eaf8d5b1db0defc29b8cd6235f30cc95b3eb9524ac9802869a310917b5
Date: Tue, 28 Jul 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785217833
