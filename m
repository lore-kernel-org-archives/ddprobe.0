Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5422F2E2F1D
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756240194; cv=none; b=LCYFNuKVa8KVra0wPRuRrMIJawSEaUZKJ5P16tAfu/geNecus0gfm0bH/qQqec+0sRtCo3OAiceAuCzbYEtyPmbaMHbVU1oVnh2rvHc1yBXq/baWCuMHO5lVTbw/wfi+xvDRtnzA8H1CuKlnWurS1Ai9SYZe3BMlBBNLhlKUZP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756240194; c=relaxed/simple;
	bh=5sAF/F+Os2WNePcc+npVLBvV1pT/ADV2tEUYsP2414c=;
	h=To:Subject:From:Message-Id:Date; b=cHca0M0AP8Ed3ksVN7rTo3/24a0ZlaiwyC5HmwNY/xhS/DRF7nxp3pouOBWyzcmYjfEqPVGVsa8bn4tOZICq8I5Zfa3bB4vx4RJO1R0vEEw8k/TC+64KRvJkV936uaxcyPoyuKc3UpUiXTQpTregnFjN4d1X94SX7AY2bXm6C7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+LtCvBi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+LtCvBi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5002C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756240193;
	bh=5sAF/F+Os2WNePcc+npVLBvV1pT/ADV2tEUYsP2414c=;
	h=To:Subject:From:Date:From;
	b=i+LtCvBizABgO4aT+BQiA66EFqLLR2GDe5KtHkqmTidFM8NRqxm9HlII6brtFFKKg
	 Wui3QBYnbeo9yjQWYD49b0eGA2AajlWCDkLUMFLQa6CRHs0fYl0QB4KbASS/R4VBL2
	 Um+kePJDf1pu4HR6sD4Lvd5FOEsyN7ERYKEI5cg7dFyro5IB+1nRym6QKUSUb2/LTo
	 xCJLLjGwNPW+K3YbOTjrnzX5vdBxxcecYjOWM3yu/ogUxloptobO2KTYD9dv1DFu0P
	 OvIfbpItI3wGLCQvA4IQPm63hpE7s6YCug2BV6GfE7u/ZjC9KNXrrPXYFLPU/qQqpP
	 uFhqYa9AmEpZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955E1CA0FF0
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175624019357.12182.12123307390865519282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86a61ffe2c71a3fbd5cb034e14cca7ff0cb7382d84efb0302d808dc1aee88c8a
Date: Tue, 26 Aug 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756240193
