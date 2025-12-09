Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA672DF133
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 14:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765288974; cv=none; b=IaP9lHQ14Y8sJCKWSszfLu0VuRRX8snjNo7K8G5YgGCvAx68gI0Yxb7wOijAPu4XN7CV91C02CnRMsa6/HaBpP5Zdf7pOdsLbVGRgKc0cXmKmNOQwpvnsQJ3t4IsWlsr/xt2bDPQ0yJPecbrndPu6K4h7KTQFeTTV8J9/2BAPA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765288974; c=relaxed/simple;
	bh=uHAzHTwNJAOoE0OIzQRbgNArIrOIIyol99so/G6Hg+M=;
	h=To:Subject:From:Message-Id:Date; b=FpCFD7G4WxQuAY3AfWU4SjtSxMMlX6xFyQXT0G50T8YO1KlSvdKKcXudkWxep0ye1KBXFrmLQHYo/NVO2UKkiLo+u1fV4TSlHR+ZeEotgOMsv01ld6n1rTTu9u84zT5ZXR320yc0oPBP/43SMDBTVvMbrSF7NsFbH9cQbpWlRj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AfyG578R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AfyG578R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E76C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 14:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765288973;
	bh=uHAzHTwNJAOoE0OIzQRbgNArIrOIIyol99so/G6Hg+M=;
	h=To:Subject:From:Date:From;
	b=AfyG578R3FQldGJSWTZoEpexzjrTZYEBJTk2t/bx4qwhTluANqg9jCTtveFRYBiKT
	 fb0jkGoiw2XouIjahCfYak4kzTHi6y+tEw5gXcJPpyRyth7GYlOWJX3Mbuntw3JR6f
	 cJAC2n6pDbgQFbKYFmhINohenMvZ7W6QnOEOYItnDc2flMNDj29tObax4bsBt1fWc4
	 4D3t8Oh7qW60R8KNZu4EEuOOlMy7SlTl+c1zWD66TOkWmU5hTGtoveCSmYNUzWCAqR
	 4YMSfcJvHTk2k9TSNbiCN+Grz7YbjvWPdeHpjg3xhr3XlWgO94O0Y0M53WSBjzkpeF
	 s5IMjXYQFZ/WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AABD3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 14:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176528897359.25879.16839246733561650811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 227ec9480067e86f567a1aaee4f3b3e07a18521c9988bce4f406ebf3225096d6
Date: Tue, 09 Dec 2025 14:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765288973
