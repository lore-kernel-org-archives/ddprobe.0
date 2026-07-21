Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66F914C8FE2
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 14:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784645314; cv=none; b=Gq73qOqjeIN/w0QrjW2ap96oCFOJePa7kZqBijJ3MSkTtkeIa0cTL07Z3atIvpboVKZ9FiRBaSDDaAY3URhm4sLuKnDZrnQwUl04bQz0/9LKxcleX50OFMd2mTY0Zp8GyZ1bkftV/kevqmSknCOX+oiedNDeQy82bTvWgikEe4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784645314; c=relaxed/simple;
	bh=aJW4DR6jg++r8i4DxJnLcoISFBfm+ZL91rh18nPv1N0=;
	h=To:Subject:From:Message-Id:Date; b=MOuLvczpU1B0DC8Lm5rfvs6XKYEOjLqEzLJbufZnmDb2zlgNaG9fXnvIrdM1fbUADidKd7N6bJnnRHXWUYFTFrpfmjq9V+fW5x1SZefqqK/JrC35tfYJjVrOe3XkD9Is4yfvgyxhBT96bnOZm0JlCUw+ig+3boBCn6Zd1DXtqtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jJs6aC94; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jJs6aC94"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D14C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 14:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784645313;
	bh=aJW4DR6jg++r8i4DxJnLcoISFBfm+ZL91rh18nPv1N0=;
	h=To:Subject:From:Date:From;
	b=jJs6aC94vWbK9PBMX2F2IG8V/aRXs/D7X9K+KdDo5RwhJrNZFMsCnrfqEZIAtf7QF
	 zd4kqKcchNdz0XskO0u6X2dOPTDI5lQkcmOnbIf4yNvXiK+gBedPXTiVHp0ELYIf/s
	 ZRS79YUrhxY2DlFRsQHWGUe64iHGOLUP/LLF7Fuw21u0ppUFwsIdqpiS3SLyCMETIl
	 KqPiCwC/Kj95YIaBslNacWeWAE7ekU4z5wAYu/rBpz+M0Pqgi9gcdowDoSqVN5kH29
	 FTp0xfRvBivr5hoz33iqgFqR/Ik0YWmJGP70hTAF+vtw/d8UJbRxGAxqPU6s1+OUoy
	 rMU+ZQSxYntCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFADAC44532
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 14:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178464531370.23486.16631628476410579502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f756527fd79fc2ea7f119ad5cbe8fa656d405de82b3049f78386f7026629690
Date: Tue, 21 Jul 2026 14:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784645313
