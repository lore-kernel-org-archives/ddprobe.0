Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9739B3F86E1
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791354034; cv=none; b=rvHafYUy/f93cEd7RA1Sm+QQJOksaywqHGFWrsNVG3bOjVObjY7eVeSHXoW4sPTZWsWk0Toz/tynbJM95h+Kdtv24TGJiwp9A6cbdwMDZyVoMWAwauhvt9h0EjuiQNQWG6T1WK0R6002fQdAkAt+8sTIXsfj+bwLPG3T8XZnnX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791354034; c=relaxed/simple;
	bh=UM7C6PBWTnPy3arvej3M3QGGLXix/Q1Q+8SUFv/SELk=;
	h=To:Subject:From:Message-Id:Date; b=NArj0PWHZhD5gZ5kwrbeoqhECl1uMTg91X7JvJr1r1OpxdzziI1m2TlIuSKDXAAtIXqbILBvFzoSxX6Fh6LaJVTV3zp+GdTMbwdVDLcx8iPJqgzwVNaERSUukvMcs8PqupjbZyks9DcL3YQGI2B93V/li6mG2iCLa3FExK4E+3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V4IkPZqr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4IkPZqr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8A4C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791354033;
	bh=UM7C6PBWTnPy3arvej3M3QGGLXix/Q1Q+8SUFv/SELk=;
	h=To:Subject:From:Date:From;
	b=V4IkPZqr15q0b7wmOvWz9d4D9MtVjBCKIrcxYC74CF+yiz3t7q5RlIndDrpdxs0XT
	 zF5S+bwF7LkoxzYWSrwssBl5Z029oxH59MPuBT8jef+mFAekj6LbZzMR1y76qv3mr1
	 70bftiX+6JIDrymc2zznjFe9CrLmXsPZqRKXk5n9MDz+0S9XqjryXVA0cQeAfMRvgl
	 BgXHMj+ruS18FVMJGrMBLqIs/2ChK/8CbHYgX8ByZ8sPNtskwNdkR6MamxoahdfsfW
	 USNDRkMbTNKfahbrTriA9kCZwYh24fjmzIB2VBjhXWytEXkmTGFnbda1VMMhDWaNad
	 sikuE4huaIsJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE07ECA5FFF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179135403369.5761.10826207520914709150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fade53675fa35b13ef902ff89307b6b471b967d623355c5e93f428a79c4622e
Date: Wed, 07 Oct 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791354033
