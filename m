Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A628194A76
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766881434; cv=none; b=gmPbi/wuRaUhQ2l2Sxhumw+4I9eSy+U81VpcxnyA7fHgacZ2GYhvy5mNfx4yPSjpXac9E4BOyv6aWZuRFqA9wkbCyH57x03Omp0yztdOo5ukAzbakzNPsfyYJuhg8APNW0pOCp0fH6YyIDAsyv7ZVDlLmxpABTY/YWN3XWW3KJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766881434; c=relaxed/simple;
	bh=6warizLJhHXBfiN2tp11GkB/eHK1Wje+n0h0K/R6N7E=;
	h=To:Subject:From:Message-Id:Date; b=kP6J74htSCJwAWXoHO4U9cVVUe4f11aT2TFMf/u1fT8uzO75l6pJMQlZVCZRGxqSd/jLqGGksHFngtyyG4NQylbl77WGhC8RVMFjexJaiC9LUoCNexhlxNrfMHUGLvDP2ioiStApaeFlW/GFQmUp0ZnzVse+/su5vby1So9vud0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SP+4pCt7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SP+4pCt7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B41A9C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766881433;
	bh=6warizLJhHXBfiN2tp11GkB/eHK1Wje+n0h0K/R6N7E=;
	h=To:Subject:From:Date:From;
	b=SP+4pCt7tS56j8CqrmYu8eKGzHJJsxGod+ksNzFf5sUTgQ/67b1urb1/zVi9wB7Bl
	 nddpFq5lODeAZaqaINwxMVrbGSa5D/NUC9NUop3w18d8K8DmLA9Gb6XSIezU9/lL7o
	 ntI1yCOzjbEYrSwUIe11axUuQmu27MnhVBMgsATPKrXZvhYqsH/sN+QG9Rr8BfJhfX
	 qJOpBNh6rqOP1sD9n+4boKAsJuckJ/D2yxkegImhBT3jPMmHa4SIBWygj+HM1b15RL
	 G+Oiyi5bG2QPosugCysmMyyhXdCvoI5HmTEMjrbZOD93yDKqVa4mxHOcNimIl6Je6L
	 hue3Q/Q8TIo/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D28E9271F
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176688143359.31099.8421424772215202502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb53e3039dded393513b6c470c78b5232443a3a97b8d5d0deacd58865641da46
Date: Sun, 28 Dec 2025 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766881433
