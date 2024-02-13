Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7E3137168
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 11:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707822496; cv=none; b=XTrX6L0qB61zM3NozgI856WnrESH+4Tcz4mYtUbUK10KlF1nhjHQxBR/WeJvR2OOsjNgSU//6mvMgpkneorKTk69F+ob0LXElPDoxT/65AwlCvzQn4OpiRauSVHu7wnmiINsQ/ohs7UWs0kYjB7rpiYzMAk0/RDT2DRd0TJBMw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707822496; c=relaxed/simple;
	bh=sj/wgByLwRa1TkYrK5KIApnRA2HFrNsK9ky2jCL/ieI=;
	h=To:Subject:From:Message-Id:Date; b=NuU62pGDcbcm1zT0OkOXB4Wbnhaoi3wtoLJyu8rjrHcwj01WbZQtxB+hzbrmdocKiQzHyOi9oTfG4LsDWOu8PkkRIwssgmzvkDvWAxVluNrO/TiSCGZjUZgMzlax30KLOXQhL+K8j78+AqpVclWvTnciPzGRw06LBvbw+nMgP4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U9koSAmO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U9koSAmO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73566C433F1
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 11:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707822496;
	bh=sj/wgByLwRa1TkYrK5KIApnRA2HFrNsK9ky2jCL/ieI=;
	h=To:Subject:From:Date:From;
	b=U9koSAmOuJnP5tVBQJ2kLn9COjENefpLLlKKabu3hw4pm9JEjXx90vf4HxUvbxTt9
	 JfmkqsIDXx0WKMmG61k1u7z/wNgOrNmk38okhmr1IQmLzbQ7boofsB3KKBPTRKb0sr
	 YnpbMZ9eSNhBAAGQDupRzsSFhswtA8tyuY1q0WQlR0mO52tuwN4uG/sGxDIDCB59g9
	 r9Z8sXBB/NXkJD5w+8CpGkBTB5dFAG1s8qYsd1qImIduQAt1i8DTT43XvaMaCdfFpt
	 iFaS27gPlI6qJ8R1Bwskn4aSD6Lw4TEsHh0JZHd41lFpZJUPLAZAHFMjqDCTeEE9f6
	 mybFL6qJQGJaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CE3DC4829A
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 11:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170782249637.10969.2273323659723341552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbdd5ce1a4b5ef22f54f07c14bde0d561696abddf6cedc8f8f61150cf8bf7a2f
Date: Tue, 13 Feb 2024 11:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707822496
