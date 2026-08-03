Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3430D437866
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785793234; cv=none; b=VQN3bWGMuSWByJErCi38BRexkZ3fkZpuQPOLY0+3DgCNDlsR7LQVJlEIXz2tilwFkKmHzX2Q1Xuyop7LLvcG+mG7N4vgEofxFBWjOnu7xS8wYObMuXSQPKFRnWor9EJeh5m7vHM0p1SyTci5DNQIUxSycNhWs0NUF7/uvDr0Ico=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785793234; c=relaxed/simple;
	bh=o+gk3Z3zB6RUVONr/XI42pavG8u1AP5bSCt93aZxQ3I=;
	h=To:Subject:From:Message-Id:Date; b=QZt5YpXkl1EZct+WKiZjiRVBhNIZ6gl8tqTP6EaqmZWQ9Wsksf52angQOvPfrEPyTRrTQGKOlBrPLH5YgBvH75ALEINn+DS+8b4iiMUhlD9XkETe4e8vcMnXQMazlVTmcaejEHM32Vr2tD0GSq4Wfwkc7jtSCmUsmgjvep/gg/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYHUbspO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYHUbspO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF18C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785793233;
	bh=o+gk3Z3zB6RUVONr/XI42pavG8u1AP5bSCt93aZxQ3I=;
	h=To:Subject:From:Date:From;
	b=mYHUbspOaGdMWdcY4sVX63rHYwp4gn6eebsXnsOEwbvm0MoQXYu8Cal90PZi8Y5fT
	 5n/46fHAPOV8qzJcQN6wiYzcHtmfn8WsHbMM02BIYrk4puq8h7SeUP7JopmFohBC/t
	 yFUXpX8GOu8SqPU7KPhi0pPQ/W16mlr3Kd3DiGM4swpMkYQR0OHwXnWAqupxEzebpb
	 tplOYtBjVV+HrjPvLD55svJ2QPR62oAXM8m8e+kU7POrtK4LHuNAxYynNQQVfhQ199
	 u9jFpNnYQgouF7hBAXc1mbDdRlVLzVAJnMPutEkNZ25IutycN7G/B8x3GDzG5MZ7ju
	 RlvsqTbhL0XaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5F0C55196
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178579323370.22456.1037005595143089290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc06289d6842c658c28c6de88fed8e141a4b0ea3bab40fc82b2f524cc71f6382
Date: Mon, 03 Aug 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785793233
