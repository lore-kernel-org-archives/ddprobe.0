Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6F71B218D
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730730354; cv=none; b=aM7uFsXEesUrfrYvmtQeymQniLFxGrE9GQPer8o1oizkNeO7Wh+zOGEfNwqw4ZtoGdokIXC0eoJBppMi2a9yk9/QdaObr1PXQ7FHxCXPZkWs9FGDXduOi9dJBUuXIZZQ4EJ4/iKPALzm4rUjPP7C1bxzd9+cS5AMNohLVaivvGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730730354; c=relaxed/simple;
	bh=EYzbMAL4bj0sju5+rZZ001oDCcKyAtJ5BMMly0hS8Oo=;
	h=To:Subject:From:Message-Id:Date; b=b7woa0KWs1nJTi6jW0+OD2MjambmUgxgQjXRLp7GQLoyfdUs8pTCU+QBa8Qc6jHeW3plDe/IS4ulg6WSZFbwXp40AOWKgLKBT0QdOEKS4eLBkPlGQ1u8kA4zFQ9e7QgP5nc13QfIAmjQNW+1xMKgNKTF9HSW1NpNz+pGIGPtuqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D5AG3ioU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D5AG3ioU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9E49C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730730353;
	bh=EYzbMAL4bj0sju5+rZZ001oDCcKyAtJ5BMMly0hS8Oo=;
	h=To:Subject:From:Date:From;
	b=D5AG3ioUidwkWtv10Aq0fWoKmR+1rAH0yupfR+lM3IXywTTj8tL7HsvOItXueOlU/
	 1yh4tY0aUn11mcC5TsR8BWuwk3cFlj5NSjDQcpJ1Hns2cKfn2RgoT7O5QGoh65tbdU
	 +yQulxFSNMayUnHjF+rvQASfnwpYKky4GhdguHWSDqPF+GCfOPT67lh7pcRUtzKXy0
	 LRrAEsFtSJDNaiXkt8UOV3KWGYvbqKl0TjHRU70Sp9LR6Rb2DtJsFK8DrBPi1SjcEU
	 d3g61B2D9ZXwfmsPv3Syz3BCh6p3QR9H+a30KNhOy9qHpJiaLP9ihS9mSIuWplHaQx
	 HMXAlAZzHXHag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A708CD132D2
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173073035367.32444.2744648363569866847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9f3090891893e97e5bb3d71405ed4ead4c20b71e198084ffa363af6ba5e87af
Date: Mon, 04 Nov 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730730353
