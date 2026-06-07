Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4239E1A317D
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 00:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780792474; cv=none; b=nF//iISZkmm9qhj7JCLLy2QA8E/28AMIEqgQb8kuaXaU9+C/0MYlFQM+QqDtUvtbi6VBODtz5AppBVsDXOQZkzKGayvWSQuBiQ8d78zFOiHBCyxtPv7fFV191olqsHYJN24WxGXeMhTqS5DGfELGV+Yr09pVj6mNGIfWpCRXD5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780792474; c=relaxed/simple;
	bh=b6dgicLhjDJioucmNqufsGoahtTzK8ywwkBlhNRIKHg=;
	h=To:Subject:From:Message-Id:Date; b=m8XU9vAte4/V6iWZrB6dCQ82gO8EGHYZ+LCH59kSERwSxNg3lZTHMdXqnzq/9CMOkQHWCdxU/JRPNIep6bEcO5cy3bxm2IGCLcnFzuA/Eo4r75TVNYn+JBePMYdFduJJdI7uTbhnzSQyZf6akuDv7Qqiq7V/fp4Qi8QHBzZcNNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dLGQ2cIN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dLGQ2cIN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB342C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 00:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780792473;
	bh=b6dgicLhjDJioucmNqufsGoahtTzK8ywwkBlhNRIKHg=;
	h=To:Subject:From:Date:From;
	b=dLGQ2cIN1wUp0fCSqrfJLqnu5EvYMUjQ3IO5JFzT/iZUvS9q2hDWaHIUIQuyb5F/m
	 eu1Qyxfw695FYUZf4vgncMliv3ROyRehvlqxMeDZf8tc79XQDogz1znziUavgB/y6K
	 7JrNLmjjiW1jY11xTlG8H7eS5QBJ5DzFfqmZb1c65Q85ZOQnUlcYnkLQ99V/MrnhjH
	 TOKYGUspLQeeVzCneSjSWHk0pHVLIwLBmHJxh/TnZ5kfrAvYnshFXNxBYmZQ9V7beN
	 I65NsiUvjOVk8a9/W0eUr6+aYpIPh6BByWbeOFtnVuf11PXB2hp2u73buDGj0cJ8+C
	 +EDy77Jch5Kvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B15C4CD8C85
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 00:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178079247370.3406.16477419751351406819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbc94bca461834adbcad0c8f515a416051dd62993f36036636bfa0064655c40d
Date: Sun, 07 Jun 2026 00:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780792473
