Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FDE978F4E
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747592994; cv=none; b=qlJGvv5h7OYk2iAlVoibf27T+u8d4Prbw7XopJZUPUyt4AM7xoAXvHEfsoPo+mmGosxPSDisA3Irja4K3XJAMmPxU3Z9PnRuXcCwa5Sb2iYLXXDXG0hHHy1NtH/wf2eXB4n2fn9p60S/6xVcgno1T6+p/oxt8qdEDHaBQpYJFOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747592994; c=relaxed/simple;
	bh=/cfgNiOqr0eMl+TAYt6WeVrCECbcvghkArqEp7koiqk=;
	h=To:Subject:From:Message-Id:Date; b=IlrAUaRcI56K0xq0LI43w6XvzBIJO65KFwXPOZdFoU9vJu9DB30iSpVup+cw7kxAhIQum/wKk7ar1Q5oswomcWO07Zx+tlD0JTk35Cws8GK+ObpCzdts6NBggNOrbr4TFXwI+tW6d24LKObdS8900H+7N6RJn5opYwvhj8JUjKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HnV1YbeZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HnV1YbeZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A920FC4CEE9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747592993;
	bh=/cfgNiOqr0eMl+TAYt6WeVrCECbcvghkArqEp7koiqk=;
	h=To:Subject:From:Date:From;
	b=HnV1YbeZBcv8xNW1xsc5wwRiv/lHzH8gdQCBBo1CVI/AoW/rOY6TS9EK8MPAiosRg
	 +xT3xWivNIq+uegzlQWMUOsAnUhh7a1uQaqHZ5DeSLl0M4me0nAgF70StxjFsdHm8W
	 rJag0LYtzQSAQ9F/FIbrcYXZXcrbA57b0IqtKvB2nK/vHCa6iyg1pd9jDKZC5lZ+k1
	 2J4C+jyEbLQAeKsRVubGNVxjA9zxPU4jjQ18AOy2b1KTcO2CJYaxVeawwNddY6L2gO
	 GLNDps1FJhAXM0NBveQJSGbUP6Fz675DvoV0dxoe9x1D9qJ9bFv9T0FCyCs0iexG9/
	 FazQDT2KyYWYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E33C3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174759299359.11930.9352156943346171180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b321a833d4c41d72573475dda7b824a26ca9cf6d666d9e928a90e41845b51601
Date: Sun, 18 May 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747592993
