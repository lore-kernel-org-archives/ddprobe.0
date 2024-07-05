Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520DE61FEA
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 19:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720209323; cv=none; b=WDfXUZ1zLDHATc+DpkNAAk4u2QhgcriIFHbgNiAN18mSupHGmXF4eZpUw9wby35l7StgRIK8dCOv+28gqQYSeufytIooPNTMjx7v8sVKdw2T+isQv13Ur4BnZNFm9W9xoVqwET93sFrqOmMpQe+QI4z+AY4jU+0K/zw9wPsYFno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720209323; c=relaxed/simple;
	bh=jeJh3hNVFzUjsJH0su6I0zlZABT629uqooUzKT2D9sY=;
	h=To:Subject:From:Message-Id:Date; b=fTaVufblgpdPZ65hkqWSfdEo8p6wb3VjOErER5oXOK3bFlirC96YkXMpkDSg148+MIg3Mux7JPCXBEYGrVdBCDEVVeA5ZA0AFAndaWwomSKAMY6SNMTcij32TQf2IJthwAmVxFqyPZaxbHOmGBZOImhUsC4722EOgPqCkiQ2Mgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hs1kltAK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hs1kltAK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D5DC116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 19:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720209322;
	bh=jeJh3hNVFzUjsJH0su6I0zlZABT629uqooUzKT2D9sY=;
	h=To:Subject:From:Date:From;
	b=hs1kltAK9iWCMQ3tQ+tAP/hFjNMiktQbPRJGpFaxFjmyG143KPtFWFNloTv3VfDI3
	 z9c9sTNkVbMAoqEnkxKGMafSCbBtptsfyaYEK3x8EJRPn7FzyBV2/53iOr35PPt0bd
	 QWZHHa1ue50qa95JqEHOjAnlmdWK9rDzqM9LsJ357YO/LYN3VUxbKjdCCp352J+hrh
	 /Fq2r0WwBtEbV+zZJaCvkq0BALxomBFU4K6eHPYQ4BieIqHR01xIcdVsfxQGiWFTbl
	 5CCXeBErIpvSTvP10YmUzW8rjhiKXMm88YCauYq2qnwhPnltGFpLm1jfcgbszlh2Ay
	 33Xra5fG4KOng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF78CC3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 19:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172020932277.28247.1355107544130668898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 697211e85e73049f2479dda43a9ec50ea4204d1236df9961fc458e91f62cbaa2
Date: Fri, 05 Jul 2024 19:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720209322
