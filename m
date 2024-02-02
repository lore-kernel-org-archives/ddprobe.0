Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14FB0468A
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706834897; cv=none; b=UqKHUQGe8yLe46OUAndXlEmJQdEb7t/IKjDHxntoBCa6rv1u9U2Inq4zcX15EEwEI3Uxww/oEz9+YZYinl8c7sMrL91aL75IGg0/8R8dasebxg5rpgLlM9nNvLzZ5FaAvWEH7F9efrlZYFexf9RCKdpwXL/qsqBPx6bhgBdl5uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706834897; c=relaxed/simple;
	bh=GbaXJt4EfV9cWUk7jRIniEbAowdHLV4z8+Iz1hLM5OQ=;
	h=To:Subject:From:Message-Id:Date; b=M3/Fbzjj0iligJHTfPjOls7WlNg5QoxHI595UKTB7W71R0RDEZJFnGWLnyGLYnF7X6VnpWNr0NAKIOh0qTKeGqa0wu9d2XI4jzI8kP7HPLAUmd1JljBITsNqcunGD18j8TxpB7kGmhF77bx3wv1mXE/Q6OoLixKQi1Fy6uXeoE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVobSBcP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVobSBcP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 827D5C433F1
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706834896;
	bh=GbaXJt4EfV9cWUk7jRIniEbAowdHLV4z8+Iz1hLM5OQ=;
	h=To:Subject:From:Date:From;
	b=CVobSBcP79qS9ICcn3Ou1hRwxbdoEwjTdIo849XyxLUM0r15XHzaU0Fiotc5H6xJT
	 txywdrf0RE67s1yn6iN0GKlYhN+tKnhktTEsKrgOu1JP/X4XnOz+Hoh330zCyXg6b5
	 ffls9mJAPN27yXZvistB11VHyvCSEq91qPdPeVlIvFb7v3/k7hebkTOUb2AtYO6DdW
	 fDy5269Oqo/B3NaaS8qz+ofkyMwju4elPSUwWFiTCur/UjA+IN2JOAIfs9tp/iOFiv
	 59dpSRZHAE6UyneOogCb8oeKzh379oen1C8fuxcAeqsRWR5dS/hltJsOSCoJcP+uXL
	 +NM3HSFkxPH1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61DD8C48286
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170683489639.31118.3503933234159766653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb136cef55b0d5c205ed29c26beabb16ceb735031f8f80979bc9f1be5d7c5f6e
Date: Fri, 02 Feb 2024 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706834896
