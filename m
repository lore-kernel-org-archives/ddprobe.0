Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B40410957
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758067795; cv=none; b=kcQQLkwuyHdN9hAZoYYeZlhMO3N1601h3DBATn/GKtN7w+SsFMsTBHQjooKd0A5Ywrkl5Fa8vAk/BZUaUlxWg9eESaGzxFTL9cK4lIY2buY4t11Kfxzy9X6Xz/R5W0ILUFklN8Uxlld6xn6heI12TFzZZaNTioLVtbCscK6YykU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758067795; c=relaxed/simple;
	bh=L+P6OXhzvMwHyGVg0SvciBnOqu+QYHLd/8aL+AO/Uvk=;
	h=To:Subject:From:Message-Id:Date; b=Jq1ccCte0SFIV5+4g90rBXpvvC5qrG0se3aSqpNhxUE8BpfGdMNb0yAyksaZt0BU7hHwMPLXALk19ZSrMjhqSjXmggEhUlnYk5/qCxi7+EjDLgRVjcEmYzwEn9WnTABXhJj0QER8g8akoR++AoM5DcNQzx2dRrccMLObWAfA4E0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tx2Hycoi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tx2Hycoi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A626DC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758067793;
	bh=L+P6OXhzvMwHyGVg0SvciBnOqu+QYHLd/8aL+AO/Uvk=;
	h=To:Subject:From:Date:From;
	b=Tx2HycoizkkVVhCYVHS5EHb8SgICjINeCCb1mKXHVScXDxWHbtZseGVknaxI/kG7E
	 CsAfyH4MXlRNmPMnvNiGQFffCZrKDtDr0jQNr68J/q5VwkOQpWVw2tzrecHNvjz334
	 MoMaXwYS0G45XKwRbq8qbikvXtWCfoC3G/Gz1ZLHccPcOCoNzdVHNSD2aUvCJZjudO
	 aFo2IJYzCUn1ApBPwbHvGlIOWN74J3Z9yT+Rq2GXxzTw8AVTpsjcz5UMaYiAXajmdj
	 JcOKejl2J2ppP6/VLURFRLdg5DY2Bbz23ngAvXvKv4OBC9zIwYDBOn/D/Cqssrg7sh
	 E6D4y9PKO3Utw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917B2CAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175806779357.31977.1835531113358826158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f36c44fec85f18a060071001f4e2b3ea5e4410713389bf38de78278299d42db4
Date: Wed, 17 Sep 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758067793
