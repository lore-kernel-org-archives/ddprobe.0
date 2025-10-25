Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C032FC037
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761400194; cv=none; b=MoS7JB5+dPqo6EbEynhhbCNwdqZPrgZKY5H5jmKSzLP3VXzs9Srmg3ebV+Q+e3uqjiYNK8oiEGqWADWlj6iJfrKPV34UAgnJDlQqmkmE+56KcmpeHkMjlvNoeV3Na2JGw81YKQH5RWtlED2WpWg8Ojiad2ct9Ch/jjQpmJwBvWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761400194; c=relaxed/simple;
	bh=JluLpknAHkvELvvkAIIX/Urcg4xpJ4DnnVHlAHQHmCs=;
	h=To:Subject:From:Message-Id:Date; b=UbZxkv9UqhgfMO4dGKlbUORof09ZLFzaXCehTaAcTfF8DFCfvmutGJnDbJ/bw1bROxKnEdkmFKYozhtVE+gNPncip5H2dQoUGr2X6AleuDjM3nGr1ZiJ+uKL/AMafL7hyytLkOusEpcaaCSy6zCBkDrd3nTQUOMW/8N6IKu+Jok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8VuWrM9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8VuWrM9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E16C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761400193;
	bh=JluLpknAHkvELvvkAIIX/Urcg4xpJ4DnnVHlAHQHmCs=;
	h=To:Subject:From:Date:From;
	b=i8VuWrM9ksqMki59oSk0KRd6zpDt0Cu9cghanO/a+/wDJE0YXckkI00/QRf0xLFKM
	 Jlw+ojYk4BbM+22Pm64iVWK2jm5nhaozkAqhlg5ViGf3KYpYiIyRZ+xI6yTUnLiY59
	 Y64Ta7/Jzjflnnnhh2dEMSaUUPbinbY+aT3wOoc4g7h/pQhDBaED2Jx/9bjw8NEAcn
	 jDFdsnJbdIJvQTZx58pagXEnLPxIzWRRLVqQZ6PZuuFMV1hQFG9VZEaj0WcyYNhjFY
	 TJFP5NEb6C9e5Vwa3kDEEIgo8B2dq34lZ+rH0IVP8SjN5ayWkDLl64x06Wd7qKC/Od
	 QheKC/lO/wf/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F898CCF9E3
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176140019358.2814.7438382155668876122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf0ef3fe18a893a58c2e8c80a38aa45b8dd45966ab3e630f71f804e23265e1d9
Date: Sat, 25 Oct 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761400193
