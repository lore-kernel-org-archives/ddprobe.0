Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 547331E4A2
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 14:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719067943; cv=none; b=dm7PrJioBDZwUd2q/RZLSNof+JYOrru7S++xdmEPidEEnwi1ot3v94c8RZpnNUxMX4FM/N7QrR716WcIbaWEGPQ9UYzkaZBREcbU9EFWi/kkR0lobJJB+UD7QNkpUKwfs0XJHOs0XSFQHr+dOMEkpqAwtyvUMgIXZC8J7S4mxxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719067943; c=relaxed/simple;
	bh=OFxDCTMLBYZiZBTYRyIIfIcf8mpNcDz5jxp/12bbkFQ=;
	h=To:Subject:From:Message-Id:Date; b=ZMuQMmRBTvLx3fkHoaeyd1I/kmBBLXT9gxGV73hLXPXnAfFkAVWY7+3lwv+8NE4DWOMhUMzlHm5/6cR2Q6BfnKIHSGVKijHumPTN0BjCj7OQ3+maqk4l6N+onXpIm+ertxLYHlP8J6ZC/GtppoD2wEHCTds1yqJQEumN5+PETYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=svs6NooV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="svs6NooV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D794CC3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 14:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719067942;
	bh=OFxDCTMLBYZiZBTYRyIIfIcf8mpNcDz5jxp/12bbkFQ=;
	h=To:Subject:From:Date:From;
	b=svs6NooVHoOkrBrZ650QT4QwHyPxJQwItJeUvLe5XOQaLY+kq2f6P9Lsn2cZ1ksn8
	 fdAMyMtnBM9mQi7xzEQxli2z7ZR+SYI75f9z0E1LQKhjSFXbmEJIAF7+DvV1VLhj6w
	 +rah4WeaM9RZuUC/2spR6D9YjijIDGEoJGp2KS57AmFoVspiild4D8XzxC7mnLX3+z
	 KKdQU3PGApixhG1mNTzwoy3sW3rfxg6avW1C+l+mfmNAqUnDcexIWR8zpRj8hovCXi
	 UJbiIAEoVZeY9QSBFBPYPfEQyzxbdTSO1ek6ujRtU/ZmOAwKYRvAlKTHgX3KeSLiPq
	 F0ROFU/JVFDcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C42A9C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 14:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171906794279.32661.11937158428693292711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 951dc5bbfa26fbf738b93fd8bfb79e50f189b9ed248f8f330448ad9e22e6602d
Date: Sat, 22 Jun 2024 14:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719067942
