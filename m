Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05F94374729
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769631234; cv=none; b=QcOaBXftNXFsybXNKf+z4mp0tN8JX6MOxwLwUc4M2e0u+8P9x7rPe2H1jzxC4+ZOXUEimUqDp+ystYcHCi+3qSTp3VNhNdIosCXJG5ZxvxYA4YhSClrQY1AwoUlwYkaUp1CB77KTaZsQHspuZYWtlf12wLAy6KPssHadjCGum28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769631234; c=relaxed/simple;
	bh=s73bH2saqQQVsLWuIU2y9eQFAmICGYhqAO6xNGrXdEo=;
	h=To:Subject:From:Message-Id:Date; b=fUjZuDm+fhUQa6cOC/smCeO2Babk+7GMlP+Va1Uu4tTYH3pTlv+Rveg6BbUoqJxmzOVaM+i/Lh7IbIWUDDhK4FZtOwXYaWtE0wkQGFfwL8x1bIT14BvrE6CUs/PUvTMVsXURTUI1ZG4EcIhGKRgZQtsClVXu3cKL3hlp2BU3pDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYlnOVH/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYlnOVH/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2298C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769631233;
	bh=s73bH2saqQQVsLWuIU2y9eQFAmICGYhqAO6xNGrXdEo=;
	h=To:Subject:From:Date:From;
	b=NYlnOVH/x27qa3V2jM58sb/s2IEjG5uuTxqlCzGjl14j1txG2SBHsAVUrj11H1Owu
	 YTTx6a7XBCsXrM6VHl46V3NN5lb2VOZLICJoyLx0PWctN1GluEMRBaN1neF0EMDgRe
	 74O+A419/mIFLcL2J7j8Rui0YxmKWxovt25UDk1FH1nV+EKLlUVZaW8an8lpSv0BIB
	 V0T131uY1y9S2unO4Y/rSlij0GhIzOl9W64oxWaJmj1jBIojfwZ/8SAd+buB54dnsL
	 pnESlrvlrrbyGkLjpttpGhxTjgikWzkOy4bwWUnELkTa42Lt6hpwc8/pFzd0H/XdK1
	 HSmngIoS/HX6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BD9D46BF9
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176963123359.32333.8677152461634231902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 645ee77f92ea6de2a434bfcb5a6bf065370af870e43ca8dabb9598eb2fced730
Date: Wed, 28 Jan 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769631233
