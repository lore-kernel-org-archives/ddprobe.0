Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE4923EA85
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768623834; cv=none; b=UDGgJLtKGq5OWKcNDo7XW2ESIzrKOpiDlkJ7AAN1QDpBPgGfwoJdSodkgpR3z5H5uJEhVeRa+nHX/sL2/cpEYfU60auRiZL3ZpXbhvV3KXSN/jGuyPBaZA4sAgtUbJGu7q9wA1lwhKExUyKGyWYBEe2IOc2Wv3+cx0jXrKhcNck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768623834; c=relaxed/simple;
	bh=qbQaArXpm4DuA2Ti7a+BsxXMt7zggSs3Ha2bUrOS2mU=;
	h=To:Subject:From:Message-Id:Date; b=fhlz6h5CnyP9Sb3KYoDQU84068kd/QKMwAJgNEs99G5BkPhHHoDcOzAy8lYk5dUpffvalWSBK2Pc1JJA5VQeJgmRMI894lGi4p1HL6DtlVF89I2b9LYxILCpUqZh/wAEwLwJ8Catj4CESS2YI0sAUgDdguyF2OoDbjlpWi/J6JI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ld8r0TWP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ld8r0TWP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C3EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768623833;
	bh=qbQaArXpm4DuA2Ti7a+BsxXMt7zggSs3Ha2bUrOS2mU=;
	h=To:Subject:From:Date:From;
	b=ld8r0TWPH21nPgZJ+dQzqX048MaLPnfRUOM8D3TN8u0gp8ehiPPrB2bAwFRsKfhNO
	 bDALCozv41gYUG9Vb8K0AnWLBywYycrk8QaYdw3ZFGsrhe4bb2Vo9ZNcnna7ATxz1b
	 BNO2SLTX6eJnymGF+tNYqjK8q6Rlur88zGXdXzf6JnID/SDDvaFXG1LYVkGy1e4UJ2
	 8t+ZoFXx3mlTJgHtEIq9lMT+/PqaQqxJEK1Oj6q6H4OXAaE8KN7g7QoriefSDZa64K
	 aL1v9Uh0AQTAq+YS6jB8X/4EJOQwGGCJLxvVtZOHNgA1g4vDnu775EBiOJCuhWYAAh
	 BInmblgA/4JUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92874D4A5F5
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176862383358.17119.3953967229131530136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c4dae11be4db35c6be6d06f5fba561cdc7c7014d12ca6ffb97c97b1e9de18a9
Date: Sat, 17 Jan 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768623833
