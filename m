Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D4EC202F71
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786831834; cv=none; b=OuZpxVU6hTcmptLH3xCcbhvdPFtRQNJf1NA5rQ2wKx+LFLLedLRZg/4wEjyY2lBWhQnSdTeFB9sv4rm43v8i6EwQAf2mRBebUEI8Yj/dJP45DdA3kP+WgZAS08tq0PDib86s2ui8x+h99BjtBVqGHOVsbfoXQq7F+hUdIiocxR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786831834; c=relaxed/simple;
	bh=J9mTv2w0OP83s/PH33JQ+S0ZRNnsvUSboPV5WWN4tAg=;
	h=To:Subject:From:Message-Id:Date; b=K10dwFDC+7/T/y7yTetHF7NGgNOYtHhCeL7RZiBVvKPvOk71gQ17QWIfP79beg3GdUCMHGVdH+3M8TtY9ch+s7Z5bRb4W+h4TTH2ILXtpL36eavZyWQWngjjWrT5moP3TlNq8Bl7d8Pm9q1cWapcYfGWsm273Djjy659J0AqahU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VsCqmmRo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VsCqmmRo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D407BC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786831833;
	bh=J9mTv2w0OP83s/PH33JQ+S0ZRNnsvUSboPV5WWN4tAg=;
	h=To:Subject:From:Date:From;
	b=VsCqmmRoXi+sJT939EZZ2LyDi1D/i8LuXj5OWAijoSDbCxewg+VfjTL7l0HWIM3Le
	 DAQXHTdf0gZQoDia4pREM0M5QOh9Pxv5cRfGhcb0dyhjindt5+07tFRGPkZzDk0zBb
	 cKxJoIs9u02o9ZHULZ37bkPF7hVWJZd25eC9XmZbdYat0+SCvHXrrPv6/4/nbAkLtA
	 8wslOiRS9GazhVJ00kS7DAhgPRGrWF42/eK6Gu1xuyv5oDLSoE61fHFKQB7tNtwkQ7
	 /xNa/vzba0L1aoTxTGJrw8JV424+jTA+S4OFrh5OLJ5+mMrHp0TOp30A+gi7mE/hN1
	 yYlxmN51nVdKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA882C5CFC1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178683183368.11578.2502314078926531766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9932ee7bddb4db1361da49600d0278c35ac7bb68f75b21f2e3ac1555508e473f
Date: Sat, 15 Aug 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786831833
