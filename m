Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36FA472625
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755651594; cv=none; b=XqLkjYH6IZruC4JjO88CLJ9+oO8wqAdnSHjt/LM63uIP8OYBuBSflYh3pyoYlchF9o/aHo0rUgtHNJiJuasbqamdIl5KUehcjus1CJ467EWZYLFoVabuEEAZQKyCITT7HL+3XrY4GotZgmtfJk4enoegFFz70Mt/mL+vd0vKiC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755651594; c=relaxed/simple;
	bh=12XztNUk4/8KGb1y6PAF7FZ6tgV2VsXm1aRPnN76MGw=;
	h=To:Subject:From:Message-Id:Date; b=e+BXhmwtZ4eMsBo+aNCXIGARbbUBLtx21Un0tRMvxYW/Nq4BTpjsXqFjentW38ep5uk9HERsYzmgytRMeB51R+UH/FS6J8+dpw5uiNuzBUAiB32rPpOX2gyY1IlGeuAMXFoMdY6VCde55bJSoydRE9j1WYraj93Gs8X536X12GE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S9Dn3RMd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S9Dn3RMd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E76EC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755651593;
	bh=12XztNUk4/8KGb1y6PAF7FZ6tgV2VsXm1aRPnN76MGw=;
	h=To:Subject:From:Date:From;
	b=S9Dn3RMdYE5JTQ6kkNGMRLcofE1G7FfAXNUVgBOqS076726FkezRolXU3WYFa9aOY
	 +syKtrsAnRV5b77XmkDG8Wwq4svuTC19G70dKzyZDBrKDn3VapHWmQOB+Anrp1vOrx
	 DlpI9MkIJUeJvPKKJne8tZfyLg++mJCK14gU7Lj3ZO4ejctSSTofL58tr6Bksaq9Rt
	 KZ1mFUqvCLIepoQRr//MDhGtYYqPJ/qtCsfvfydmhU7bRKrXkpYSTOCI5+9AvxLJuW
	 2Ig9bsuSfb7v81dLhQgcA9w5CcJ4NkVhvI48Gp5qrTSLppGv+eTzfBbYFXsG9XglTk
	 jmc6BHgh8SH3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC96CA0EE6
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175565159358.31398.14210101455884979592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97b545a0c66d69a845014b54d4359e5dca018541d61b0e198a62f3f0efdf92be
Date: Wed, 20 Aug 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755651593
