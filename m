Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303C91547CD
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727002554; cv=none; b=nuP9qfeKOw4eJLsJ+RQaowY7WqNGoOAnOdIACrLHlq1DbFY6YBC4RS/WYFx3anCJlu6QJydalGvjixwW07XzJmnOB/SbjdGdiQ7LSPb1j0H54ygxWxmeBUJxvkjc3Lt2qCOXKS3k1JIYEBOfMGwQtdiJNViy5xO4492iHz3Z/RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727002554; c=relaxed/simple;
	bh=kWpywUr2X6/32NNuT1bAydLNOZqOcPY0RCsI/hkbVzA=;
	h=To:Subject:From:Message-Id:Date; b=sKBdHxTlgM100+Ov232YDSKjg8gYHROm9gWSA2o2P9en2PAJZKBT7lvJY1F96O6cXumNLeKNPmOy7xK96qbLtui+ThApZUI8lIHW0Uc0Un1dor8WsKZbtu1okE+5+9d683mbcWdK61qoYrBvdrToJeU0WTGC7ZsHLe3/5rm53XU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pq8zV2mx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pq8zV2mx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB580C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727002553;
	bh=kWpywUr2X6/32NNuT1bAydLNOZqOcPY0RCsI/hkbVzA=;
	h=To:Subject:From:Date:From;
	b=pq8zV2mxtsaLnf5LJcdE9f+LDp5nsGkuN+zVpIk18SyWZRUdel3CK0jK4xjNCxu/D
	 HzngigDCQEG+2zEX1QzmeJbOJ8I1e/aW3dm2U8LLqp5gP5yYcubjVMv/pP76QIyhNu
	 DSefAjgfj8+tGV9qjThrH8+NMuN72f4n1WX6/T5VkMIHmICy/sxYyWJM4zmDZdKxvK
	 QRbyNKXLYZ1QL2DE+M1u9LaIfD0LiAfjS/+Fa/YubWdx31jcvx7t6NSzXBQUL2M6oo
	 nD24dBaPLOiCjr2TUmdT9wQTSvrKeU4PgGxdbW0S6gyKx+9fx6Ez4dcKbaxNFdEdV1
	 sH+u0DPV40uOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B17CCF9C6C
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172700255360.31691.16403667591887043821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4f7087457c778995dedeabc34241c518c306282045c7c758c3731b7cdb3fe49
Date: Sun, 22 Sep 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727002553
