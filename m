Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C20E23D280
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752509395; cv=none; b=T9Nf36LslUWMSkpadJm3l2KUkdeGujTbhZcoVHw0bygw6e+wqBcb4AGUosQVGhvxRDgEP+Ybj7EIm54imZ43fC60F6xjTZp44HmaxO1NemjE44C5V6IipnE7SrEppL3cqew28B42VWOjy49V0VqF9Fi7HyXMgFXI0B16BJvH5CM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752509395; c=relaxed/simple;
	bh=gt41VJoa5xVcRlmiO0nRYHx1gjlaD+6e5xAk0c2VCsM=;
	h=To:Subject:From:Message-Id:Date; b=Vxg86KacOnhC9Scqseqc6B7AmX3XXac4jlPExodQ5s6UFa9lnuqhljEXYNERmrk8XCppfxRyv8fYNpR7pZRrSEg/WPe+t9PAFWHK+wB9OtTSI6Y+QdSdkCUd9U4n+y5oHVyJvF9rPW6J4txgm+Gtpae0yvBchtWormvpnFNv+pA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oRoAraeA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oRoAraeA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B39C2C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752509393;
	bh=gt41VJoa5xVcRlmiO0nRYHx1gjlaD+6e5xAk0c2VCsM=;
	h=To:Subject:From:Date:From;
	b=oRoAraeAs7x27U+uJUYvvC0cVsg7HYC37qo4ElDTo8ffPp2ycHd/eoUqZBjca9qRw
	 JyXZGab/vgOOIcsZDk1Obx0c1z0WwXyCr+m678rOZnlfxN4EXJUeg03CYDnpccvjyM
	 gQl36Goc4xHmkXJKtYcyDWHNFmQdh+vG0AYsQc1Md8yXjlC+JSjLeXXZQzyZp2768H
	 o/IPMS2dTja8TqFCCTB7zm5u1jJS9zhFTJ3dHG6mNB5va/xkHPzuFB1u01U8hzb52s
	 EL6YybEXH2eygey+ZLJUhNrBGqms8WY160ZkHWkpA9qRBQrpqnhBzz25LO5xBaERqC
	 w084RyRSF1MBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DEFBC83F1B
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175250939363.16824.11842798378333931742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78da681ed78b447408f79ee0e6fcf407b42b920c278021f7c8d2bc598f04b2f3
Date: Mon, 14 Jul 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752509393
