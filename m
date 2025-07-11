Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF592253F9
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752278394; cv=none; b=ABVaRQNxujbWL7qLGVoDPldOP3dY0wx54Afmqzb+xf40bpcImRyLTwMBvqpwxT5NkoW8iqkrgo+eNt9k0dvduV89Aepn26iMoag5Lkt5ASSWciBbVf/Jk4aQ9hgq2jNf/SmwI9zZEhvaGPYzq8xRvUIt7cScrH1GNyMU0dvUneA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752278394; c=relaxed/simple;
	bh=WjBNIkAqscXa16R0ZEs9tvuH1KtEWVsJ/MiBs2ZUALY=;
	h=To:Subject:From:Message-Id:Date; b=geEX9fHt1li4y+bEdWeJgT8WB8KTBD6+LU7jnSevJs3SB0ME/3eYScE/GFv0ink75KaQF6O5lBxnlJ5/X6atTEXR/5xRkSbV5D6enVcua+5c04SoDff1Fc3CVjqtqLAoyrh9lQCseHX1oe9kYGTvBTD9QdVMsHw273a48su3ydI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BWCUxtI+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BWCUxtI+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B29EC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752278393;
	bh=WjBNIkAqscXa16R0ZEs9tvuH1KtEWVsJ/MiBs2ZUALY=;
	h=To:Subject:From:Date:From;
	b=BWCUxtI+UcaMMdtVvHOHX/zJ9Uf46FievR6+iCofmmQgP73GflZSRUhz7NiKzwLO5
	 OT3+DPg00alT+oAtfVK1PbBKSXXj10HhzxSDqdWtQy1bla0G0oA0SB/ZxE5j9BsgMk
	 y99k8no4mOts+H2Glvgw8mwh53NPVPhYkREPcAn6U9c8+lByNkc+hYBBXUENipQKEb
	 4Utb6NWMwMB/tvFHCFf8sYuoksFrTHRZHWzd8HyynSZ+hL6JzXK3/AHpr5G0cWT4Zs
	 C+1abdVJ0ForC5YpsW+6+dGTRZVIdbpULC45SHsRlsEFYaEp+KJLGYgnBYehL/jjm0
	 X1QZblbQdf90g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDBAC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175227839357.17397.16582941246233213957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87cda35a8ab41df6852cc5e6301e8debd554e880d6010af8284281a8609e5731
Date: Fri, 11 Jul 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752278393
