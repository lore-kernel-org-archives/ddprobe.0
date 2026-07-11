Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59D694499B8
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 10:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783767514; cv=none; b=RRoC3akLwX5xFncdmc6DYPAskeKUxkCYRO6+AC+By10WkDoGPz+k3iu75BteWXYH/a3MFmBPTyx9CrLtPrvJFQ7KxKgLpPSlA45pE4+B3JmGFU255sNMVoF9sFcy/IHjv8acL8sIBfX8Zbr7oPo/fee22GLTzqDXHA3dPTs/p1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783767514; c=relaxed/simple;
	bh=HovriYeCUHQrZYj/ejuWxWPoDw+qtLweRFIbE7qIAs4=;
	h=To:Subject:From:Message-Id:Date; b=ndXHySvn/IfqAGicJViBq3zSJBq7hFHTclxyNQSQv6xpgAbboz7/61Q0A3dzW6P+eNZTrNV7swbQGlpYzoC1T1rgEJv+f8ck1QWDuy4qKSnjfTeOzawBUurWAhWbrhU2Q2LPpJ8R5u9ZivWHUj6hAu+o9eEW6WWCeHu6bNCCpBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AnNJcI9n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AnNJcI9n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D044BC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 10:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783767513;
	bh=HovriYeCUHQrZYj/ejuWxWPoDw+qtLweRFIbE7qIAs4=;
	h=To:Subject:From:Date:From;
	b=AnNJcI9nuhej0yGX92nC4t0T+c6fCgkPIuvF1No2kxwLF00S1S7buooURcSACq569
	 wuamPPLVSlRKQKAJEb+csNnohPdnQS8/UtODB9KlY7tqmVNsgmJcqndHLw2cvCMOaf
	 IXF1wMw/VkDlNWkJPmffW5ofDIohDW+aIIh78P+hjOmLE28iWdVMTKO031+ryFLKro
	 5g4vlgSePQfzaOg0AblyMXA+kYQh5xe5pPJAQxQ3KnKC+dY2HqpntZijc+yuBOFgCL
	 d4kPbA3fqsNmeV8uW7aA30pAPgzkmGsE4MdNNPcRYZ6eTTPTraCtonAimxaRKhlFSQ
	 /Ps4H9EKuQRng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEFFC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 10:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178376751368.12584.3512567360252392258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 262e05e29176037ff3449a1924180025398962b49f50335f37dced9efd0c55f8
Date: Sat, 11 Jul 2026 10:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783767513
