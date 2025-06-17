Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B70E2DE204
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750162794; cv=none; b=bG/oSqGJrJuI2idnB2T9CeqZgU55Wvw90g8X8i0LVXopp50K8lNDX1eJUMDfDfFrottmjZKQEk3w37PJtpcBBQcv7r+movo9VExDotqHgPxVHKVLDG1zBfbVXr6wG4hi9TCMO4koVK0AIW7SgFva8oqbnj5Q4DKCcKpD3WhWO0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750162794; c=relaxed/simple;
	bh=a7780cw6FkbOwoTfWvSYz8+zLP+FuVU+IvulIfhMYm8=;
	h=To:Subject:From:Message-Id:Date; b=TcQjAGrIGHGasz1EYxzUuIXwGKS5WJKgBg0cr2Df9fadhOVJdCplF4OLGLgNZ7157Y5g4dXru3aC9kiOUS4QDIHeV5ei20mTB6VWNN6fSzw9scRaqUkkeK12iELnQ20Cl0/1j+cdU3ZLKH0NdtUc+HW9tJM1NPSG3PYZOAyOBSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HyEztx5V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HyEztx5V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3534C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750162793;
	bh=a7780cw6FkbOwoTfWvSYz8+zLP+FuVU+IvulIfhMYm8=;
	h=To:Subject:From:Date:From;
	b=HyEztx5VoOZQiDJjBN5hWkdqt0egy5JCIDGzLq1FZ1im7A7yYjLmKBZ0DGjeBV6MS
	 1P2xTz95wLmrA43L3mfCnY/m3pj2lkuHEU2aNmmAWylt2mG9TOuOdRHO6bkmWYVH0q
	 sF8hSeUdvfo7wvXzeQ4krkOex0gFdRx6yblT+5lfwyLBNEB1FOfztODQiBsG7QDmee
	 oeOSBKkbgZZLC+zRnlsM0zLK5GSCM1wLQMukXzGEKNeTn4+jUO4SgncvK5HA5o++v9
	 oqYEnzq0HHnZ5sAfBenEJEwE32UJQpGuSM5MCOx0GvXE+4mQT1XKsKWnxx5D4Fvq9N
	 GgQeJbqZe5dIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F41BC71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175016279357.28747.14698574720334156644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3c223fcaaa993d08de3c3663bcc8bc01db7786f1241b3f1ec0c8f5f4eb505f1
Date: Tue, 17 Jun 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750162793
