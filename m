Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF132DC782
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746264594; cv=none; b=MTvFoI+jWNQQ5ArAVSosc1eRRcYTw/AxqaKZCYhow1AccJ3o6mUzciUKkMvhdJ5X4T3xeprIT0j9VHoBXh0Z38e1gbBp7YYRsqi3IC36JUEEH6e+aWJryfO49cjvYj7w6aCZYLqth6/XMDJ7+85qhBwowj6JtdD1er5H8+DfrBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746264594; c=relaxed/simple;
	bh=l9kHqj4OfK+wU+QDZ5AY0EwAm+Psj7QMwKho//KFT+A=;
	h=To:Subject:From:Message-Id:Date; b=H5aKF0/Z65v5gjrOSDCwOQgx6tsLez9LODKMYn261TZShkXnEVF90S4ISeSvLu2o2+2fq816fF/BtjMs4lFVGyO6PfTT8eMmMBTov2+2kghvCjEK0IsNfPOw9CKOyQohn8php77V7yK/JiD5oxsQPoaRdt30ksOw2bFWWPk4B8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bcuWoipm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bcuWoipm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46B2C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746264593;
	bh=l9kHqj4OfK+wU+QDZ5AY0EwAm+Psj7QMwKho//KFT+A=;
	h=To:Subject:From:Date:From;
	b=bcuWoipmZ1k4ZZpNBOQeTw4NDzbblKG8MyVQZZwE+Oon3b99nSahu9L6UtppJfZpm
	 MyqSBnkoh/eKWprlDg/wr9cXryBqTDQ7BNQrkyNWpmltJllYXquHacEDyR1e6EJru8
	 9vJtq2gnDIFTcelS/iQe880yXZ/CO+RQMw5iHeTp/q0H+p5NdAUuaewULQuNdbKtTQ
	 KQ0sQgsG72YGoOHY44K8u506zyqxbthWJj5KxAkOrjh+5LDXinfNZq6h5ujYGUPfY8
	 oDNsuTqNCOEdwQXkmJes0VGn23PN8DDDTwD4pJZiSV2rAhH33DKLPGgdFeE/YsrWcs
	 6u5sI5rtqEQTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907A5C369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174626459357.30076.3683170681705572668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64116e5dad4c8ce3023e1e861fe10e2c0d697d3d564f4daa07fe74086b1afd6e
Date: Sat, 03 May 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746264593
