Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474CF32AAB3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784821234; cv=none; b=Cs5R0iqeY0PcF7T4jYPZ/gnNLXsHTjIQR2KYSGTKF978bYCHpiv75+yR6F3LAVG7SDq7ZVyWgS7vi0/hvzZA9eRiNK0jJ9nIvkk/ss/0N1krG8+D9y9xaXg+M8UK6U/7ZGQ7EuLPxDo5DipS9fWf2hHC4hzEq98ykMjjDXs3xHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784821234; c=relaxed/simple;
	bh=7Ve6/CN3Vw5B4g/NHQn06+MDuKBLaaFU56C1PFqgDvg=;
	h=To:Subject:From:Message-Id:Date; b=IqaLh/JNifBzBUkgOAX8yySumkKVuNYHMFum0YalvpMheRfF7f6dT4lu3CYr19tfNcMtPXkEsFB06PIZrkM4DRkcOsbVMckjG4m9GfdEydbD7fgaSmCCVxg4xodF/0m6D28Epw+Ey6mi2VDKfnYm9RonyWWBG22V9vl5FfSar7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XX8qIsZY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XX8qIsZY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3346C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784821233;
	bh=7Ve6/CN3Vw5B4g/NHQn06+MDuKBLaaFU56C1PFqgDvg=;
	h=To:Subject:From:Date:From;
	b=XX8qIsZYK8nSQcLorTEZxKmptxQY/rkYQS9Mjd5ZATvT01vzx8pvbq5gjUjz8Qaec
	 DbMKMXxdSBkMq4OBxg8f5JnId3WUKY1ecVAsTe0iDMD2UmqSD+MMcjVOfUNr0XM0CA
	 RmasJIv5A+uUlKRAoub138HTOjbQmrMOKlObGPfdSpl3MtI8/WsNP9HfpQeG11j8cA
	 Nw4wHP0YwGtYAmnn4VNbv4rT4Mn4utWuQIL1ymFKsbvMYgftRh+be4SnpnLzakTB0G
	 ULTii/0ILMvCYFuZkP5wLLYSx6BkvSUkoHqpP7qwAesNOIzi1opbWF7GXw+/mNBmZX
	 a2120WBRIxoPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB61C531F7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178482123368.14061.11380714707147069954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 690d9b15eb3c09e3916d81c568188665c0250b21780630cb532a0b59efaf2956
Date: Thu, 23 Jul 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784821233
