Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1E028640D
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752706794; cv=none; b=fapG0UQmhsx29OT+Mz+mvCtieXA3k2buKnimwFGQQHi8KsHSdGLVyDmzynhq5fbupfV9BnS7RdSEbCNM+y0Iyaw8b4vnQxrzRQBFogMEXUryC8khtgrCCS1TaR+9r7En4RTB/ScmZXPdl3Fggc1QUeRhjtdhSyMqbO+oKaBD+5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752706794; c=relaxed/simple;
	bh=gm8kv8rAksadsvto9TySk+u5vJx73cx100P8bn7ncgU=;
	h=To:Subject:From:Message-Id:Date; b=idcYI0OU5MIp//g+uvm+/4z9Dy7voBQ+AcjVmT1xAxoNXPrleNyb9vsxLT+KILODgVKLD87QEaZb9fEiQkE6PpRZY/R32cVS+Cc5lAnU4nRV2oBv6DSqPO9r6yskhwPHMu+wW1YER7iG3Xi6k7L/0DDUXAfm45SOe/4KvpSREmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qnm86xqV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qnm86xqV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A145DC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752706793;
	bh=gm8kv8rAksadsvto9TySk+u5vJx73cx100P8bn7ncgU=;
	h=To:Subject:From:Date:From;
	b=qnm86xqVw8nght7y7NFtbBBf14qJYjo3DHqsnzoC0SRpJtZ5jnCyGQYHvxvZIA6bQ
	 ABhq29BkOxqSnzbPEtWcRKGgUlRe6L4gFcryY6PsTO9zdiRYuR+sowZv8ibg58ey31
	 xgkNPjHCxTNNQlNIQe6BVWEjOPq3+i/nIfK4hTkc2N1LEc4hXo1ryvdXKLIopnvIbI
	 wuqJjTnoSjE02qc5zbUMhJFCicL2x6MCbgWFZ/jepNy3butHPY0l4o4cngsvfj8KLc
	 4czUExv04/DqoCyONKEuBFcaTuosnSKmigMaKINfOM2GrctRLw4S5mpxMn53XJuzkG
	 JZCDaU92mqSzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FF4C83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175270679357.21317.6063701634945274049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abf8bb12fafb1b0329e79320f76c3359d3d3dd55d4603604cc0213e8590a3652
Date: Wed, 16 Jul 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752706793
