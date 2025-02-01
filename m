Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EBB7146593
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738407954; cv=none; b=B7bLDNfKEp2kDzsScjWBYZ5vheFKVS7kzgV60Cm5vS+jdeRQtqsJ4U7FDfGhNNzyjjG/fsUcG8qf5TZzGu23dC70l8WVTs0JDhGm2hTkt3q7kZQjqegTlItSxVbvuVzrjcLmqwCMSZ87zOEN1ZgCm1baEjSPy6EZO5VCfWSMOBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738407954; c=relaxed/simple;
	bh=cxcT4g2Xlh/2vl33xTckIJn5kgmTndW6Xn2Cfmqa1Lw=;
	h=To:Subject:From:Message-Id:Date; b=PfEu4ffW+YYgslOlfrvnDdq7usBmkdg+FHPCeIRWapwfEYEYc67iK+ZCn3sptSDzdcjE/Ptv9kMLn1HHHRO72rEKzsFE1YTOHcuOVusUEuYFdwEmru8zlcZGiaKIl/V3WmdNsQky60Z4kwVF/cyBMxaXOoy+hrCv5PGX1elHYFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qsXPD7qD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qsXPD7qD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6D68C4CEE1
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738407953;
	bh=cxcT4g2Xlh/2vl33xTckIJn5kgmTndW6Xn2Cfmqa1Lw=;
	h=To:Subject:From:Date:From;
	b=qsXPD7qD1cdJKNHpokz09MboaCNs73D36u82WHWNgTgmZ4w/Ew+HJQmFINsN769kX
	 CqOLg3JTPZQhlRlI7ZOKluhJXT3rlN9JnFJ8JNwjVkCD23RGTdTZiD2uTw60YksXEH
	 PiTTJom3HE9iP/2adCrl02M1GHiUrCxEjvkWiOknQbQ/tzhvOPmhi18nvT+f8lpG6O
	 sbTiH3+78LyghlaGH4X2nyFc9WRNKJgkuJPsG7g0QKxL03LkwRk/ihyDq/2k/wfUDO
	 IPkbpf68BKUUO51kEyy2jhr798M3+SKQbEQolkHrWQXwtLWHwycxQIGm21zdS/k+56
	 lA0CJvC9RGlLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1190C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173840795361.17581.490639209504906871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a16be496549a58a4e703ec375ba7b4e2bf64d10363931e7f9cc2628ba53a556
Date: Sat, 01 Feb 2025 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738407953
