Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E4CB15E5CE
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 18:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718734763; cv=none; b=rQEObA4uYIYOat41oWH8zpPGMRAt7Uu1ci8miIw0asJGHLBPS292QVZ+CgsbUvEfKqe2reiNq+n3Pw46VEWljhpb27ANkTpnxSDE+VOdYOMH8eay/3gKpHGxCgBqTGJ7JjYZlx8AiLUO1nU1ehTWnKJXBiaGt2AmAXUm0Lryf2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718734763; c=relaxed/simple;
	bh=Pr4fDiZPBy5SvVwGl8zriLJpijStVjaVnQXTajjFdz0=;
	h=To:Subject:From:Message-Id:Date; b=PjHD98EgTGnEqoi3JdCRVk8tZgEIkFL9bntb4JxMy4cI6Z5QSmbSxQeg1WrhIYk/IA5MfxgRQJ6XXb2GdXTlln+OojnWdb+tVzbe+vH2cSR1t9bptk+lY5J61t7/Toa6N9tZj7Eo4jMxxFXcV9uaC1c3NoP0amBYp6S2CX1a2w8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUo+0fh5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUo+0fh5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD12FC3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 18:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718734762;
	bh=Pr4fDiZPBy5SvVwGl8zriLJpijStVjaVnQXTajjFdz0=;
	h=To:Subject:From:Date:From;
	b=WUo+0fh5xWMVnpyIoAkTV32L5rRPZXN/Y49+TTJMbOotYaakr6rtVN/KeWwRm2G3g
	 c8WkIM6l9aBNVldn2+Xlpg9kkTPhev65/dIr7SnPP8o427dSf+qcLYagtybphlHzUC
	 2otueEFzU1th4o1R9NbESWTt5dKOO/lC/1bp3TnT1yR2ONlSSuJiC2Ft7WdPjOe08B
	 rEe3y1t2cftHv+Efcqsh3G8rFpcGxq8daNHsQ8QJ33SJ9Lzh8jJsyzxHSefFkxXY59
	 +W2Gq2zeR37zgYLvjTLSX9KkOA3hy5rPX7WlsQHaFUyuNu/TpeNxBnerpJQ5MhzZEV
	 AaJudqYoQ4v5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6034C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 18:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171873476279.27354.5439546284412506202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcb18995241e38e63bec310c22ff50752b1463fe1c21c20b3e016108e6a1ac7a
Date: Tue, 18 Jun 2024 18:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718734762
