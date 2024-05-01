Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C2CD1BDC3
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 03:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714533144; cv=none; b=aIMbWhq4tsaUzEf9T98DzBiSFERbhpP/IvYRm+LgJa5l8+sYjtWVojm9y+YA9ydrxRLnINZk/sKRGNlo4C5DmxTHYQ4OXn36X90TFS26YQeiRAIZyfdj05LOCQMcII5QgJyeHb3FrUvJAkH+tcKpMa5zOsWZhrR/WcTQr5q7zos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714533144; c=relaxed/simple;
	bh=Nu2Ublz43BcmArVORCvWEte/KiloY8TmB9myo9Dp+2k=;
	h=To:Subject:From:Message-Id:Date; b=ucmciloR2xjpRJ8oF4qpapAyaiWwLT1pXpgT0DgGPBxQhIFvd1AgABCEKqyOJcWm6F2OCa/2AaeVMA4aBuKL4iNkeukpE72ok7Db3YDp5Gi1JMZm4LV3I6lNKAToIM1lutNs1E26FtHIVAS8B0BIBrNhIAg68v75dmMc9CUWL6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z1TdQb6w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z1TdQb6w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF6D2C113CC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 03:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714533142;
	bh=Nu2Ublz43BcmArVORCvWEte/KiloY8TmB9myo9Dp+2k=;
	h=To:Subject:From:Date:From;
	b=Z1TdQb6wlevE4jaOEknhfKWi0fZrbXTbVHNOPrCXV+YRlx3mtwYomr7/aDL85FkGK
	 nbgy0+L4h3JabHkM4QX7SxxefnLHKtmRRrsqXg/sKgZ2r4bIcTU0QTOw2GCoo7WytQ
	 aRUTkTXT/oC/wOnahrQRtnmInlomEVe19vKpvfOaF7g7kPlyZOZYmn1HbSsgQycV5Z
	 d5kdyVD6Ke3J4MBuCamRLT32xDO9xeWXB8E1CAsT+9eR+gn+QmJyVxdyXIKluvD14w
	 U1OQkfU4pFki9jqEyRncl+GiXofskWYZAQIFHb4nm8wVI4d5jn66zd2qsgXMfK0420
	 5rs/bh9fzhDXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C41E8C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 03:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171453314278.23372.11211948246811621516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a6d396221cd886a9b50492b06df3ce14c500e185916224381134acc52c2bd7e
Date: Wed, 01 May 2024 03:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714533142
