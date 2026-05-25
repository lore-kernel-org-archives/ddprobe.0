Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C05D26D4E5
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 21:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779745354; cv=none; b=WQ3xqDvYB35RQso86n4HLPNbZGpO8oS25qZII0W1bzbXxwtC/ZkjkfFpFomkadrWHr+EYewk31T2fRj4XnNW86RFZN520L3EpcJdNB1+oC+h874/vSobf1o1C/9LEqmWumjCwBDYy5++Q6SgaHW4c4yCZ/NEf3ZKvsQG5wz/vsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779745354; c=relaxed/simple;
	bh=3ZeZ0qZFbgcNR62kUv8i1zE7PDoQ6tTysfP7g9WLQ3Q=;
	h=To:Subject:From:Message-Id:Date; b=tR8MeEenZABZfnmU0OiczFgByHwpcYC9bRNh/W4bMJaOxyC3Sb5piPc1eNyVFN7eNYCfyb2Ggd8gqSJ11wkWIu0AH0dq/iMHhG3m9UvgSfVCmuSaeLRQuL/24ywe79gMdokzKvYzjlzHaLFU/+JjBfSnj4vLzVUpMDJ18CkJaHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=doh0vnBX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="doh0vnBX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7D32C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 21:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779745353;
	bh=3ZeZ0qZFbgcNR62kUv8i1zE7PDoQ6tTysfP7g9WLQ3Q=;
	h=To:Subject:From:Date:From;
	b=doh0vnBXwlsrBr5xDnqqeg98SDrLL90MEqQ1polLmKDFZ24/xEle/8mUpt9G7PyFV
	 PMlAD7S3NB3Aqft2KcFJV0vpWTbFGzB/lTnoDkAp7aqiFUmmlyvtCXitG+o97k/RgU
	 wUx0PW+Q2taDQE3g9F4ElIYv7B4kC5DwzUejRW1GEnCYrhIrr4fEjYwjhZ8tS2GqVN
	 6lL0N80nut1W0c5TdCvNa7mcWlAg8/j45puGpHDQGokYq3fA8Dzcs+xhNl0XDPrFmU
	 6RsXiZan1vnP4xBJZ8hgLw81RElflbFT9SmKJ4Dnmqtoq9mRSpP0IUYJIO+GhLVg1A
	 SGclYFZblMtCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01BECD5BB1
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 21:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177974535368.24242.3165078522134126775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 688165c3840a898b000e79d9e105834864b529b17c11ccf84509e1c6ebefc58e
Date: Mon, 25 May 2026 21:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779745353
