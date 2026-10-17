Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552DB38C2C3
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792205434; cv=none; b=QYPBNf4smMgZGaibULtZEEhHq/mQHxsMx8PO0bzUT32z4FC7V6LID+UHsu/2SQPFpmIDdfxob1qmbRriuz9PrNUjoVnYcekb+1pZV9JMrTntsdTqHGAb0JuvmNcmOxysmqtRIpiD19KyWjv9PD5vBvdrmZYj/myihgIxz5SyskM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792205434; c=relaxed/simple;
	bh=HcRLPnZIHGAfoVp6an0ioRp2oql/f1qOYsi3EhClqHA=;
	h=To:Subject:From:Message-Id:Date; b=UpCLjmZTIOnFrViGtPyftnYgojKl2+3HqNZBz2cDZzTBCZwfDM/xAtrhPwgmo/QgjuooN0gzDg2IZ1Mtexoj4z4aqm1JtiLjfODtJml3ubZh5wUBS2j1rDeekA1bQ1UaJFZpBQzZsuuQ8w5BDvY3inpg8nVh4eKh0rJfl/39S7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YWrsXj3Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YWrsXj3Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C85E4C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792205433;
	bh=HcRLPnZIHGAfoVp6an0ioRp2oql/f1qOYsi3EhClqHA=;
	h=To:Subject:From:Date:From;
	b=YWrsXj3ZW02iRzmRu1HvHzKPbRVJDbwUrJ5+6d91So8aX9u7cNuwW7KbDI7njlswY
	 nxd8Shmelt0bWeyUOcCOsrIm9CkHnvFI8PTQiFpZ2Y7kAHaSAJ5edeWhWxZ6H4bx2K
	 hI1CJ0S4hLeDDBmtR96n8ih7dKkygvqIE09aAJSp8I7PFtaEy5QMc4L54O85CwyG4S
	 HFurDorh1kTwm1qok4uNC9u8/jyrucDKJ+S4g22aJIiE31zf3VIw8UemLF85XQrAyX
	 s3/vKTFOTnnIi1wB3SwjhPSmqDzS/uKS0Csm4vXNa/QISd6ifr/JCblAFf437YY1lr
	 mQsYQwuKHFU7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC95CCA490
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179220543368.11002.6317015040621750296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26263c25cbb701aa10c7051875433b0f5b12ccfc57af86e1957d355bf7dbe536
Date: Sat, 17 Oct 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792205433
