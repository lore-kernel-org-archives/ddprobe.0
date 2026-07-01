Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E68E36D9F8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 16:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782923314; cv=none; b=Xbag4QvkpjaSOg7Qg+Edqh7v3Sy06HdcnC5VciqlKO17bi/b//+YgfwWKUaoVwqbtpbmxydZ6s8MZ5mwq8lydSVKyPr5oh2muOj41hXgoftmarnNowyTmfhwV3OORzRspQu5UHhX1nHlkthnx5ECEhdsDqsdicPNSpz/IsLxM6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782923314; c=relaxed/simple;
	bh=D0KSGy1k6s3SSU/tg6MDfnx4A/tKi68+NBNowW/JQQs=;
	h=To:Subject:From:Message-Id:Date; b=QncYrFbmB42Ko5BcBOGtwLq2azac5fcu/89Z07D1K35tBq4aGJQ66hKQdbIle+dVvIsFqnQun3vOv3RF890Sd2hcRIwDFx3YOWqjyWf6qGrjtjGAZoyjxU4VjpxAwO+j8bhpj9vWkvaIPHAHfG4P5G9PeGF/XoJPHYbn5o46fmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fcuRmejA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fcuRmejA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C389DC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 16:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782923313;
	bh=D0KSGy1k6s3SSU/tg6MDfnx4A/tKi68+NBNowW/JQQs=;
	h=To:Subject:From:Date:From;
	b=fcuRmejAPASaiCXKdJL+R+eDEBpfPjKpIJPaYipMCbIEmebdkp7tX8utr6QG7HOz2
	 VRdOIajC7BqXcO1fsZzzZf16NqcjB4qVxOpJ8h8QKU/XRMGwkOY6kN5G68o9vT8Dzo
	 oyx1CEvImZlStppuHGc3ssPexDotOkgs2V0Ge83Q5Bvu1VUc1fUePi5LPpPopEipqv
	 YF+P8thLrc2+80JD4asC8IxLYlXy+X3G/xBQYGLP/kYbctjRlLChLrnsVeQcYs386G
	 iBXkqrYkCn2wfF0esOaTxXbrjY2KpP1AY/TxT+YiU+hTnGvdCqYWrhXD3KsDb8O7+h
	 07Z8q0zk90wyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB136C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 16:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178292331369.6443.5261438545954628687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7729d4286bee4925885d8f45ddd9bc730e63c4d9b0c64bcb66a61c0e5edb481a
Date: Wed, 01 Jul 2026 16:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782923313
