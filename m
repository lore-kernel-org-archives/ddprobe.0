Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59D1B2BAF7
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746949194; cv=none; b=CCHX+eU1UaASwY2s4MeNzyEFYMIcbWhvB+CEBjZyOBLHAnMZPvvNgexVYcB2zL3qj5Lo6wTf+LSU07rwG5E+T//RHE6yy03dYvVsm+FXb6FQUPhm02Gz2ups4BN/iWTpXIyfXoiVUE4tiVYY62xQoMOI3XNRSIfc84/vkcfnqcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746949194; c=relaxed/simple;
	bh=YGe4dBwazGAQAiMBCGJ4j9wl7lQMIbz1lKz3jxfFdyk=;
	h=To:Subject:From:Message-Id:Date; b=dunbcEQPTi67c1tjuHEgsMifGt3OUaqWlKE33pZkJI0ah73iHlWjdi8oTHsHsY11rUOo9QRaM3iCHJYPTYR0yq0Qw9ZCxf+H2GmqHI+OGGhR/6BcoSVp1BmpiWWDEVJsWIgXeZnRJG3KafqucNhcO4cYIH4zRiKJ9U5n3pmTqyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QYI5xRsb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QYI5xRsb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D62C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746949193;
	bh=YGe4dBwazGAQAiMBCGJ4j9wl7lQMIbz1lKz3jxfFdyk=;
	h=To:Subject:From:Date:From;
	b=QYI5xRsbq3OvA1if0ZQWF4w+HEoTDrkNO8l1XG79QkeRFLRg1eIwDcbKUp4wYQWX/
	 ApBN49agx+TP+z//OdlBeFwpF3vS4WBxwDT4S+RpeR6iq5dkLGlHgvaqbC+/bLtUw0
	 Jc5Iz0mXaYiTbX1MpI7p6kLOeiFlOeGRnTY1zoOw5KO9PVr+euNiXfafQC6+0ENwwx
	 DCdCMZ5s1nOTYTkcS/Gm7kQdaeiIkkBrGltyfrvjaAJ+vbongG1sh8QD89OZT99Vau
	 kp/KRLUKr/5+qe/nIH4qOHL/jMt9vvnAwZM6wjJ2916XeR4tvqVUJuErxB/3JXx5/V
	 eDbxbXduFjZZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F20AC3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174694919357.24795.11733693352637800734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a48cc1084e28eac59e40d4b9ea24aceb7f8946db93b08e028759015a335b59d5
Date: Sun, 11 May 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746949193
