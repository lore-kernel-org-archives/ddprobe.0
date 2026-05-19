Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E9831716C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 11:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779189034; cv=none; b=J7Mgg4J+mRLRXx+vnS5I+AcwBsDoLpR0A/TyWNapNKi8tPP2/qark/9C0yop2q0n6k6zl1omrSSEHlt3F0cF6/FPDzwL+3KiTar03Rhu0lsQt3qrHy65ctZFZXpbQqm5wdZFlpGTyrnItwj3Pj8RkYIdIvOuTiD3xMugMTffkww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779189034; c=relaxed/simple;
	bh=Ybh4qfZ1V936FD6yHIYR3t7ImIPldGuY6SjM1gseVU4=;
	h=To:Subject:From:Message-Id:Date; b=clLz9VYGaRit2l98InXjM5JwQITV7rXV9SfrG6xeVHy6OJR641RvuRNCNoLatxlzXfU79DD7TMRfq0AoCQnnKnK0ZaMKqGcnSVDeRdTtry3uyuY/EEMtcmdYmunzi9gINYNXAGi2KY2dWiv2WJQKnm1lg2qm7DX03UkxJGiIacM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pxmTkkdq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pxmTkkdq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD56FC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779189033;
	bh=Ybh4qfZ1V936FD6yHIYR3t7ImIPldGuY6SjM1gseVU4=;
	h=To:Subject:From:Date:From;
	b=pxmTkkdqS8nVLGBEIyi+lIT+BTQ3Cfjdvfro2mTpeHADZzm8pTvq/sn8dpwgnzIVb
	 Hb7kI2tsawbEKFkW/n6anAxd0K9DtDCJv9ZMNPDg0K2zKXYyJiZS3Vtii6CTEtpMj1
	 J5XRsjFUDYgn0l1SXS+dWRUkzw96DdRoDqt73cJV3h7kMPK2fHIZo0X1uUoeFdad0V
	 MigbUCe6mbC5blcF0wm0TcRpF9ysIo/87wdr0kYI50osBBtmqv3D6FNJ+0J120tTqk
	 S3pF+poY4ecrtk4je5vHEbUwWrtpDUloPvUKU8JXrwMQcGN7pDYwb6iaXSY2ebbJhg
	 0UIXodx0im2ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE681CD4851
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177918903370.21334.3989723698273399319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e76828f6e7a4417303aa52f799a90986eb5f1ea09fd6eb6fee60e0c0800b8c85
Date: Tue, 19 May 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779189033
