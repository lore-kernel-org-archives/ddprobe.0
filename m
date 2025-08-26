Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E0F53126D6
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756216795; cv=none; b=R/hDT468l8R7zLWKu5hHBreX2ktZsiQ65OpQFOZaxX2jZLzk3A55YXAbQDubTGThcM0TcU5pv1M5C5T/YqmgHRBjtOC61DOJon3RS4WZPOLVz+fkqGmOpNZNT8H3yhdystzxVHnWO+pbQ0EKZD+s9duKLPMPJoksQ5UOOFAizQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756216795; c=relaxed/simple;
	bh=hukb2Vuz14bG7K6yFVe6pkfmQo9oEIRqlX41CLbCF94=;
	h=To:Subject:From:Message-Id:Date; b=F9GJHthnmiKF3capgiAA6dkUyzuv7+VBOf6d9LgFou7ZXXtdsHK5trwpWMd/4mCPgdctLOLlTpPn/2lJmD+pZ7CI8CikErGBDQNbRpBfvnaoPj1+0LDaW3B+vaNH3YwdE3TSdzICxFdI5D7Q6xJ64m95tl4mFb40Lx4T2lajhJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J4unnRfz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J4unnRfz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE55C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756216793;
	bh=hukb2Vuz14bG7K6yFVe6pkfmQo9oEIRqlX41CLbCF94=;
	h=To:Subject:From:Date:From;
	b=J4unnRfzgpnkM3toPVbK1N0chae16PoM8quijq4vTBBV64AgA879ZohEyGTv4aFTh
	 +RtvVD4Onl4GyuVAwcKllHNf+TTUekqiB5t1QDCixUGj/n4LetduuKpSvXdwd096Fn
	 S1FMPrd9Yy9wyrpxE/7/Len+nlwwskilixmHbZXP3MmQjhYZKJ4rgx4qmsIlDJu45o
	 czPQExDAchMPCzJ3Yw111q/qsX6YMMUHfDjySvVW41QnfSV92312QHFuQ9jOx21alM
	 O+DcUMzuXXry9I0aE/Zb7S+MUOoZLPLGesm/cXL2mNdCHhWN3yqTntrlORY5VF3e41
	 ximpn5eX2WRpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7FCCA0FE7
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175621679357.31031.16762169922950879488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8af45066d0f7e477bb25ce84f7b78acd4cb208ee4950621b0ce17299f55e539a
Date: Tue, 26 Aug 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756216793
