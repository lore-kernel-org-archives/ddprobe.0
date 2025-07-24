Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B843A265CBD
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753343393; cv=none; b=PlyiuaPUoMUdkVC29SYuqyaLnuxIRCZer2lc0Yp4j8qdhpSZ1gqG4Z5jaLeUyU/bHHaB8awjfHR4aRZnIkyV58bNBqnahUYz3ecH4XktCe9lYnvnSXDxJxX3GRaA4mcthy5aBto9+UNlTbSEZREk77DtqtfoH/jaULc25uq3p4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753343393; c=relaxed/simple;
	bh=I7GVhhi0jeoEDuicvtdTxCFqsUWuudWnq2EfIJrzMz4=;
	h=To:Subject:From:Message-Id:Date; b=HuY9rOvjTdem4u/f9dQLBkH19jZvswTwSBUgaCdGnV43vCN10FdllPdfSygmGgrgIRpTc4mV3ueOeS/nNWqm7TMT4JRvLQslW7s3noq6IFjvhD7TxhmcjsP7qj0CjP64wgl76fniNBEnH8U5A5VgC8mVg5QR0j3j8074QG6dhlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R3Iw/pQk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R3Iw/pQk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 959FBC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753343393;
	bh=I7GVhhi0jeoEDuicvtdTxCFqsUWuudWnq2EfIJrzMz4=;
	h=To:Subject:From:Date:From;
	b=R3Iw/pQkj8uKUt5v6820FkG9icVsnohkrTOoq75AZPu8GEC7x2J/qCQv82WNoche/
	 wDQSpI/U+6seM7Mx46SyU1687C2CDCdRiMDUUovMUSDiAYmMiVaQfCmwvWFpd3L4an
	 BnNC4QFQC5UJ5oF0Y9p0M2L0nBDVHC7srt+QLcXx5ukJwRnBm9rs0nxqYBJEkKi66S
	 xg9MRQUcieC8mekbK0owAuDv+lR3/EHzKt6CKo/JPmE+PTGaIB9N7/DxfgAm2YQT2O
	 IDV/rnSv2jhNCQ2gUvFNY/GEejE1UNG/OBpvk5vcB9RisluI28Ay9aRrav04/jWlCT
	 aygJ9RULDQRiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5DCC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175334339357.9049.10812877343454579666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b211ae383de593c956b4a6a02a0f905e00b14a34cb9fe54584c7bff1d5c4ebbb
Date: Thu, 24 Jul 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753343393
