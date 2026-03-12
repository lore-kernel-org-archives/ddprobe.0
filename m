Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8E1382292
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773289494; cv=none; b=f05XB7ms0NbjhKHcfH/DhZYHfH7A6rrOZlwVfWLIe0RXuTAX1MBcHHrfOEW26fUvMNH1zYui8YGUxFKEIn57QZfwSKoM1NH1GsYOaYnflopvYoV1skd3RexXo2YUDrfkZHzJ+fM/dcoLjbEwn6Slf4StHwptS04gil+EJKRV4ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773289494; c=relaxed/simple;
	bh=3Qwmskf+CqZMJVKBtpaevt95hl0zKT6wFJfqHzPaOq4=;
	h=To:Subject:From:Message-Id:Date; b=l+81unXwXzQV3uj8IpUxo1qQ8b/1CmuVXgJb99ZMk8Lx1WgHcdQl/BsMcAPWCxPbGGdij0Rk7MeVr8LTQFS54q1zu6VzMas4XdVCODKJ11ezAOVqFQRAGABmTR/Iff45JJc221u2IcykpdlkulNOKLlgz7DyFt/RvzcdOV2ycDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rreQSo41; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rreQSo41"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B534EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773289493;
	bh=3Qwmskf+CqZMJVKBtpaevt95hl0zKT6wFJfqHzPaOq4=;
	h=To:Subject:From:Date:From;
	b=rreQSo41ZmyzZlOkQiuQ5XA3dltqSd+KXDMonLMycTlK9a42EIsY4XQhXBsm5/o5H
	 qmSWbrJKGE9tDX5p93wF5qlFlnceWQoc57Sq11kFWfLAGBe3xhWok6WKik+QlSbY4N
	 mGP2SvDz4xhO7vQbvPzyBDi2BY17saFwZmFiKpZvdRn+DUyp2hpFaFcC24VdhbsFiB
	 EbAY5gCwNS+MvdgD2N7isgoBz7+/qjSDsJxjN1isksSSzER3F9abTpzenXOgh465we
	 ok/KmJdFTl+ufCzMmtVLfz2I46IEdDf0vzxy/H4efSl0ij4H1gt1efJ0Y0QiqSzlMD
	 AzJVIcivSi1Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F007FED2C7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177328949363.15939.8247857844927434041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e9629945f66f03a9da4c1e21f1481dacdeaa5cab3f60d16d04b59a7104d813c
Date: Thu, 12 Mar 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773289493
