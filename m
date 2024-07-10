Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1911922C0
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 16:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720627583; cv=none; b=TQZfIXblS1UJWput1q/lhGRV1/tCeVFEXBlJxWtQr+93C99aCja5iNjx6nN3vCw8J3yWHJyZlSuP8rgp9tKJEVMVYKxSsNfy2gsuY+gnl8NSINSgIFZTLNgS8GFUjpvj0+Hh3PKbtrvsJxKbvfdqUme+zEtiS4uoOnNBJvZHOg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720627583; c=relaxed/simple;
	bh=+4xSnKsyXb5Zze3zw2KSw5fcujmZxf+o2zFzAR8uUhM=;
	h=To:Subject:From:Message-Id:Date; b=oV+4LyKAHFaTssWeOaQ4NRJCDOAff0dTLJ3MT1g6GJDWqbuGE4pOuh5eYxnWkM5R04elKqqMneXGP6g7llQUohVmSvlytgbRuHdWnRWtTDf3qJuocttbgOl6mdPIKHj5D62fz6I8sJo6H6heGdpILzQvyphdD7dc4cU1doPHXmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hLC5jZym; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hLC5jZym"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8040C32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 16:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720627582;
	bh=+4xSnKsyXb5Zze3zw2KSw5fcujmZxf+o2zFzAR8uUhM=;
	h=To:Subject:From:Date:From;
	b=hLC5jZymbCB+nC3VgCx93slxulHWDAmm1njRBBVPwm7yFAsEVkMdwVPIWa8GijttJ
	 9GuomcU4Yk9uXNq26igKVJe36UNn1Lh9/R3OEAGMBSdw2CHxiYyU07CPCT/lTrFkN1
	 XNGEyHdW3pRLjmvaIHlHFwGwh6+bWMMkHZKuhoQGdNcO8KQc45+x/DT3Kn+Fk4ICdx
	 J8jYd2jU9zTlCFUSTrQpf+5D867nLqoYh4fC8ds/feOkdNBr2liL+X+YK2rTyzLn1y
	 qkdXIWclYp9ESmDjTL0XQtrtqRX4eOLdJR4n+Y7GQaNc2ock5+FhfEALo1PLK1A2yC
	 JIlv1LyOda2/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4AF5C3DA41
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 16:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172062758279.25366.9336707668111286671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4f5d3cb8b0bfc7fe1d7c96c5a719d405d1bceda54923ad5806958711461cce3
Date: Wed, 10 Jul 2024 16:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720627582
