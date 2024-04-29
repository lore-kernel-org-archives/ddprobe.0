Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3BB953E17
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 14:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714401143; cv=none; b=rGdeqGZpvu768zeQ0iZYADNZQJFtKOi6M18K3BqSeMQodPEYKqJ2eBaD/v+c68HKV4hCQgAkRMa40bTJTh8VyWgco5eg7UnQmLtPHkwu/zZ8rktpDJews1YsRf+aadt7CZSq4k09nA3RL7SrX4iSRsJSng3CL0BhixGLZnJSGII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714401143; c=relaxed/simple;
	bh=+T7GAXlQGWRnSYA3QWUj7G62N6LZ4fgP5lQM6CZ/1hY=;
	h=To:Subject:From:Message-Id:Date; b=TSFRhTM6l2s8lIrPpGvonOBETBZsAfohbscis/wO9E3AZKPkkuqdGnKm4amzWNANY4a42o1MJwFI/hzNVduNZNckb0uJ5+qrhQwSHQnIRosn1+atJHoDZcaIvwoYKyiBvhYsgUZYu8srEeRiLc08ZhBo9GJkC7bk9m0OixEzmhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yj3cBRtC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yj3cBRtC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D51D3C4AF48
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 14:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714401142;
	bh=+T7GAXlQGWRnSYA3QWUj7G62N6LZ4fgP5lQM6CZ/1hY=;
	h=To:Subject:From:Date:From;
	b=Yj3cBRtCxwnFuVEZwaknWSsJ5dw3IECxx5zKxvFgQ1h7Rd9cdcmy1v+JGSpPr7zla
	 IUAIi/DIuA/nmvD8/BXgtVO1wegcmZchsgAhbpEbuRLs6Zjf0uw+WhJNPd7KVmFgNP
	 RNxxqf5s54pvqmtETPQELBROu4m6wE2P+vHlQSPttt4HN33ux8BUEDAoAr26fdXsMo
	 EjGvKa4BVdrpN1WgWGDLIh+PHk4JyZ0OIFDQyOe8J3X9+p9EWryf6KIBDcRZXF2UPV
	 fkVzUV0NHYt6LXxdIdsr8LkN/1P0zFakNIdcYmXPp1Ok/7ydyFYSBeyqqP+vijdfxM
	 vZd7cz19KluNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3770C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 14:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171440114279.5832.17643119407230822479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd4707d0c091f09253c6319a1a904d20d5027b2b4e5ee055925bc4cad04cc790
Date: Mon, 29 Apr 2024 14:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714401142
