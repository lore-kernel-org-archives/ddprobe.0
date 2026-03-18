Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FAF13F9FB
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773792294; cv=none; b=Q40YfB0cO4fi2O+QjPRAi1cx86DnYPBFbS5gJmylHsjhnExudsRfh8UgV2Xe0krtv6Ggk3DU2OrU5xzhlmJZXafiSQCuQKilPv9m1SsRSgrzniLYVGmj4IBd1IRI9hlfOoz+USVUxV3yIR5ozHWEQw/UbPh4ipkgDX6RPnTZj8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773792294; c=relaxed/simple;
	bh=WJyQnWxjTyH8ABWMfF/wO0EjxJ8Mi2r7DiHnpi938Xg=;
	h=To:Subject:From:Message-Id:Date; b=GOIVoZuPnS27XMPjXNA3JG0Sim81y2rCYCF7AXa6y/xR+9qVaICG9lXfswUdFABWE7UPW9L0opCgvXwHgJpY/eZZqX53S0GQe3mcYVjNYahPBj/v2Y0cL8csfdbnCTf23FLc/OvvVLkxvF0V8M1nSKetrndXXxXRYi/Z/v2GZkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q7EvLr5R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7EvLr5R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FCEC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773792293;
	bh=WJyQnWxjTyH8ABWMfF/wO0EjxJ8Mi2r7DiHnpi938Xg=;
	h=To:Subject:From:Date:From;
	b=Q7EvLr5RXI9zc0e/HP+1+h0LToPQhzjETikAVl5scxutj+eQGnRL9yvnnImdfFw5L
	 jwN/mZ/ueIkwEl/JKmldHMUKII5gw7ZoJXn8AUrSblMwsmbvReMpMczU7kA6PClDV6
	 YclZ5+WzagQlKgJ+kWFTr2xNGY45r+TaBI0WwXd9MpTywtgakEZhEBee/tQPYrry/Y
	 HUgTi0yWESBZAY1xMs6lW3zLUD/y2xEo5QXggNE2Z98hLeuLHZcVDOI+0+gR8e8c7p
	 KmjjMS6F6z66GIW+9b5kIWB55KJsiT9TpdQ0IrNvcMO+kqISTJ9e1ac6kklYt9l7qh
	 tA4TDKiTauFfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F069FD8779
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177379229357.30820.14383321165978010881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a253ecbf17ed3b823b47fd34558b37779d350e81c8373d90baba8879cad1d7f
Date: Wed, 18 Mar 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773792293
