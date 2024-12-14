Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D96A18622
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734151554; cv=none; b=iOuRLUZQVZR95Js2Fv8Z3rSGSqYptl6fPoMW9R4YFbUhFPU2W52uLqDh2iHw95DPd6LZ4sO2S9aBaSFe6D4zrViSjhYouUkk7NhmXsOxkxhD44eQlW2S67nrMXN9KmulYcZhfPHn7IHzK/tBuDQS9IuSy6L6HY0J4SnWYMKbvBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734151554; c=relaxed/simple;
	bh=SUMXW/tvYk4yGyJb3X9Llr1UtH/eLL9osFZdxQZZ4Ic=;
	h=To:Subject:From:Message-Id:Date; b=OY/RMpZz9niTgMQT8nYnhNisVumAAkWJDF+QAiglC/K19sngvymFNHg7YtfiBtgdRpoFpL9K/ZyUkui2QAoxdyeqaIXXd7uSNd0k9eXSHPtuOLSHypeuQgIpYPrdplax29/dZKrR4udBThF80vgOgyTOwNlcRA+5634W2wVE72c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rq0CdTtq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rq0CdTtq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC58EC4CED3
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734151553;
	bh=SUMXW/tvYk4yGyJb3X9Llr1UtH/eLL9osFZdxQZZ4Ic=;
	h=To:Subject:From:Date:From;
	b=rq0CdTtqvxEV2nRIodg+QFLx1zuuCA5/PQ4XhXepzS9NgRuGv2kOUxvHWwhc0trtt
	 vEtcMr512x0usgP73zD94CDycVoxRIPOT7U1lllOaCyXH7CCBcpnDDCGrJunemyH52
	 i503NvEhd95C8LK7F0vuE6ovboebJk3YlmzWtfSXnxgXU56x+cBQivPd41Yzta+RRL
	 B/VEBoYal/yZaYbDoYU+FpD1XjKYwpajIhGD0HVfYQdlQ8rh4uz32+/Hk84w0M4ho9
	 X2n1CQZ9sNEkCxUC//IciBaTcpkH24NLyeKpAetfq+u63jJmXnDi4h4DNicLdCknqM
	 IUTNNvmgOMjiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA82E7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173415155360.18052.3848171921368432586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79434a0fdb35fe75d6907325f24281f39bdd40dae442cd58219118ce6c03ad4a
Date: Sat, 14 Dec 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734151553
