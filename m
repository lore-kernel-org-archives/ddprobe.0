Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BE4EFBEF
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 05:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716786263; cv=none; b=ei0P32Ma5ZS87AqW0OP7R7dWdKUG30scYeDWF1weXHKDpK7/XsqjBoqT/knziTZiSsDNA7uS7+1tVrxnZbRfOVuTW/yxz7P/XpiC/cujckFeENeuVPed92GKCpdUdR9iyAvd7L9ZSfKkW/BhtLgzUXoDkSc0vYvVfb4+AWNdNag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716786263; c=relaxed/simple;
	bh=vNoItgI4PaUxB3MAGFwE6NvyeS4z5viAmVDHD69c6hk=;
	h=To:Subject:From:Message-Id:Date; b=BrZLXhvtWUhUza8scB9UlJHNMoBFcRgSCmDPe98vQYyUbv5TyqsJCo9MFnxgn8FkEKo7X17PZeAAF+7llMxRXlQKdOx3kt3/+3DYf4LXHTPjjg0O/cTsSPzE2zvf0HhxZecEg+aXZC/Z6uY3LRFrHv9+ozTrtjCkO6+CzOyf/FE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WbgoaFXC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WbgoaFXC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D97D5C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 05:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716786262;
	bh=vNoItgI4PaUxB3MAGFwE6NvyeS4z5viAmVDHD69c6hk=;
	h=To:Subject:From:Date:From;
	b=WbgoaFXCy6mXCkt7nFDpZbJq4+bjY7qmRrh8jGKbm8D80n5GCgWOUiL4nDngQ6kCL
	 L6X+lA0byBzpDZLP+ZGXQ4TxV3ZInvrGnGQ6PRbcVDDcPkMuS5TCirk0IU37oBJs+z
	 nw1rkt43UAhaQm9YOi/LjkKTzUpPZP/SuHRpi9Bu9R0YKhnJUPPf6jA8TE2OpQGFTM
	 zCKgcp/92hp2lFyOJhqlViFgSfKJnNr5v/NHRDGwgVhj7sCClLplK7SPT8ZukgiNUO
	 XAPdWbjN/Ld72g00VPxQU5v2FLGOL7WOGyDx35Unx2klC1GTwpQaWMMF8v2XGcLyCn
	 U1rvoOm2THwxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0D29C25B79
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 05:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171678626277.32497.2367464397900026340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64fb883a28c2ec3b206df53c6f038ee07e91b9b308ab811baabb697d694a60a1
Date: Mon, 27 May 2024 05:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716786262
