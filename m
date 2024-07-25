Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FFB216DC1B
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721891154; cv=none; b=nLlw4f3gpsN1rs0Ka+O0YkvO2En3oht3yEZLHwkgBUqjY0/QzhmVqRenVOnQuzO1h5QGW4swb/KGtibQBoDXTXgWpRxDcaBxLWoLiJgVRYGyikHu2LGaSzPcOp4YjIjQztm780xKj7v7jm/tc20xnQ3iY2xTa6hP2M3cbABhxbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721891154; c=relaxed/simple;
	bh=GNc3kO5KqenQRbAK6pqhvHTQyWuzF2BJAHYOHpHoJpo=;
	h=To:Subject:From:Message-Id:Date; b=JR/Gim0AnSsjbbwJ5/0O/eSkKtD6DUla5CaBx6RETBjRoIx1jOF3rB7cmprBRLPI5CBQ+8jE2qHS56ceoq9zy6SP0WApyi/sdAQax1XeFVu+SsWA8vcMBZpis5EL8vaLzDOMEZW/HznCBL2jgzKEaIqqjNJrc+N/jXVM/BCccio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6laCVZE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6laCVZE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB56BC4AF10
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721891153;
	bh=GNc3kO5KqenQRbAK6pqhvHTQyWuzF2BJAHYOHpHoJpo=;
	h=To:Subject:From:Date:From;
	b=B6laCVZElPURf1q33H8u6ZGahXQfgbZuA5OifAdReW4asCroV8eLVLNi/Yjg+CFeL
	 xFNZd9//yLpeqkII9xOi1mt35RXgCqp8w03gzk0fIF2z2fenpQ4QJk7K7uOEnMOMkv
	 5Glu99rXRzUCwgGWjkK94cyPS1N2I6cvkk1NURJY7v0ePAYktRKGnXQRb/2qnkY2Mz
	 1pi0cMNlM2033U1rwecuRHku6ojIwZnCmFM24mPA7ugByLTuPPBvqfrue4uKev87AZ
	 IejHDx+P5RbFBLspBAB+zX5OWBGX4HG1gyhybHdk9cJNpuuNBiI5RZf+GmWQE4VmSj
	 M9WyAz7Uw7JWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F13C3DA5D
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172189115361.32555.430494097782751351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4da84417f8a50d74b27530ea9b998c163a2aeb9f821334d97e135ec884168aef
Date: Thu, 25 Jul 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721891153
