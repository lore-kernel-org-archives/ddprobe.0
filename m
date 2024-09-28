Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A8128EA
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727486154; cv=none; b=MY7oexDuxs1AaeQocKqxsC/V43rfN428XYf9SFkc5o4aBHkMNmYmHNBMv2EoW5bUUe9Chm8GrzdVfUKqNMCeEOItjxDdvy2i6BZ2t9/hspjCsPZFCsOBRwuY3RGDfxpa1nRcgHS6aZBIa/H1V07Cx7pBxn1KsAootbYi2EPC6qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727486154; c=relaxed/simple;
	bh=LGQwj+e76xbU7clCyMUZao0oy6hMuenwnZjunqsEj7M=;
	h=To:Subject:From:Message-Id:Date; b=vGIUTIlzcrfDR/ZOqY0dPArfE53UCBnZXu3aUEEMVMQ7OGitf5hq1z/ixlyvMF3fKYsuhhcuh/bdBfSkjxGjySMjOmCQdFhB1IDkl5nphq4JdOWnOY1Cmjdtk66VV2hnftkU610MhsDktEnmhndBeKbeme8pkhEiC6kzVyCzEJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wu+yHqrB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wu+yHqrB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A76C4CEC4
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727486153;
	bh=LGQwj+e76xbU7clCyMUZao0oy6hMuenwnZjunqsEj7M=;
	h=To:Subject:From:Date:From;
	b=Wu+yHqrBiTAMbG0FdEzLlDEwSKIBs93F1lWmJS2vczV37OqfNhdhBO+mKJpmFurzf
	 5pefB4Hggpo9arLU0QsRQRLzp4Kf+twopyzHsAa6/BE7m9cXRbsLozP6UJFxOP4mdV
	 YeKET4zih5pBvWgqVH9aqQhUr5K1DDqzR6w6Il88WMrocQWtsa2kktkGv1SZsCftNW
	 5M0GACJE2MYgm9l6AuxluSCqU3THXNPKxGT60Suc95qLbPQWTUR/TeRpq6Gi8u7jV2
	 n3EzXvBevlhNLk44ICXpo6buc8ht0QuaFsivDNLHstCv7oAdN9+4g1b4O9s4fns41f
	 lEtAz6FRaPo9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8EECF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172748615360.4117.12686884791113789185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 163a98b9a7109a1a791e4232e4b983861c4744a7472e50eeed99632e3c0a063c
Date: Sat, 28 Sep 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727486153
