Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD0E2DC350
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757865595; cv=none; b=TpKInAfkHfNnVYYOPa352RIE4Q8kMf7CUmd9jMpiRCzMJLwAFyVwErENa7Rh40/nlI2bF/Zm7Rck9nK8BfjG4hF05LFRIQei+gNodmq5dirKud+2chhNTpGxrDovnMwO3CEUwdeByyz8ZK1ZVx8zgyZ0In9Kp8Mv+UbZsduHEyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757865595; c=relaxed/simple;
	bh=4+zjhmAzCoNRQK1w6gb47hDbe25zgjToG21U3D+eFXo=;
	h=To:Subject:From:Message-Id:Date; b=Al8+5fgvZc7sWka5pavnhJi595+eaShuCES2XMadFCJe4XwXo/bupYxtXZLnJCA+XDuen2uBoQP89a0uQP9fbqxAuAwMMJ4kCJnFr3S8+ulHtzhPzGHPhVd2H24QBTL7wD7MiPsb3ukKPOTfLrJCbxE5pWudhj6Ad6TgrlC1CGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJhozvIs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJhozvIs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC042C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757865593;
	bh=4+zjhmAzCoNRQK1w6gb47hDbe25zgjToG21U3D+eFXo=;
	h=To:Subject:From:Date:From;
	b=oJhozvIsQ0RaoKGs3raE3jDkkHz5hbLOQcG0dfNEQqsxgCNuvVTpcsJZBr6ezJ2OR
	 kMufGtQ+whwtMZp/vFP36Yxov0WBdsICV9wnJPBsGlmsK0ru3aZ7nlKSehg5mNn8q2
	 m968A8vhdhBKBIPlweXm8mko1Hzoro+2drDZBBNHABTV/g2oEgRCso8Erh9bBBUdcm
	 2gCaJ+21jCMOJvwQWwujGG5t2c49koHwsRA2NcgWXqrmM71364S6zSNGJzizLGKOAF
	 DzJlQa/YSrK7JR8AEEQzTawmfnGIcjOV21e70P6ofNxLA+76CQ9j4bPTmOGYNLqWd+
	 GmPPRfFQJRwxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926D8CA0EE8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175786559358.32207.1503279000534145104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50df47edc385c548abb4a0b79eee192a643c5cec1f08ff72b5d5304f0df86e84
Date: Sun, 14 Sep 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757865593
