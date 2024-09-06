Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F5E1CB153
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725651954; cv=none; b=EeApXP4WeEKQul5E9ft1Ff/rg0VOhoqCxBgs86knjWrTs1pQ3DyceX8YHBhOVH9gQifD5kRVdsvcCUtq30e9ig5sjY/OiuCBzKkmu8ISWsyWmW64V0OcJX81Rm5dujHS6bJSdpnoDfgIIC5AxTVTfvCyKSSQpk+zCexUT9nG2XU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725651954; c=relaxed/simple;
	bh=tYar2sZn1YLN3TlDVs7x7U8h6hXBhxecIL3+ud7xuBI=;
	h=To:Subject:From:Message-Id:Date; b=WU0/rQhWjNxvTUlPeTa48wjX96oDlaxmx0KWoT3BqHUZ0K17fBzCY4it4TYC9UlohmhOgXpN8xFj+LUa9TQaqoDg0GfoABMi0RdBRjPMQih4NF2Apj7inMSboyKoh3IQMpr0oxZBWFT3DUQNKUgK7ZYsH9jkk3s8Cez7qA0cUx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t+WSUgcv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+WSUgcv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0CEC4CEC4
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725651953;
	bh=tYar2sZn1YLN3TlDVs7x7U8h6hXBhxecIL3+ud7xuBI=;
	h=To:Subject:From:Date:From;
	b=t+WSUgcvsrko3g7wKe5N9+B7mKJtZbmojWL/3izxaFUQWiWAFKM8xMdyzg8F4f778
	 QRqZjbhQWM0LmgEmx3bUzXlZQMwPz9xh/tTUjvSOtD3QeZzb2W/xd7xQ/ahY5Hw/x2
	 5KDQNeBtJ0D7MTnppCiuM8XeWJBuzbpcgQ2kkbQLlJbIxOVbQ+rAE0mGzzpK+mrHJR
	 0epxvI2yOo8sXRHmA/aL5MUBaaybTnZMj1bmMODk4i3E2ABLaQhQOnBLX8sBGGSPdy
	 vbRGvbwM/ol5nvoFPvn5qLBvtqQtMmnBYzdoFFPLUkUI26HpT2qI4xxs/R2UWsJDlp
	 DXmuSeb/tvaNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B38E6FE46
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172565195361.22012.2867422882293322789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe0189162f1bbfbe09f0f14b19ff660faed6c75c87b3c149c5a2527be4fd5adf
Date: Fri, 06 Sep 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725651953
