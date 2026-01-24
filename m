Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309723A1D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769222034; cv=none; b=FJMWO36IqUuC6ykDp1flHDavjIR0IZ/i1xT8FxmOTU52E0Sx32inwElAxwZSDR99LcSnM6tOko355Wv5AcQMquOZeebNa0kVwjaevLabCSRmEq6qPW0r2Jb73sbF3D/i0pFhA8YrSsp8Y0OML7etPhrjckl8Z1hBnddoJI6WrqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769222034; c=relaxed/simple;
	bh=D/ZCdSmAvqg0B/WAWKh99MKzXdf8PTGjiId2sTv4cp8=;
	h=To:Subject:From:Message-Id:Date; b=C6BiRKRLkz3Tb89T4LQgW7pet7+tKwvjm8nQivUJU7Q4Na3+Kr5WVAdpY84J48vt5PzUQvoCV+hkFyVbcGIFJ54eN/kwuFhEMJ8pieA2qY28dWAjomVkUCBcTsOPVxLnj/ADeytOkypAECSEiuZONM4Lkw+/glGa650FE3Ofr3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vIElGV1t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vIElGV1t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91A1C19421
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769222033;
	bh=D/ZCdSmAvqg0B/WAWKh99MKzXdf8PTGjiId2sTv4cp8=;
	h=To:Subject:From:Date:From;
	b=vIElGV1tzvDs9LOJpT4O5Ys0omrErqKfXULiXDQvtj1IiDOfFC8IggXAhJ/4FVuH5
	 dpaheWVbtZOjD1HPtDsqTIaBH7UoMRb74eNMuTJxn+tT5X6OIpbuskr8Dcf9y1BjrS
	 Vb+qQTgTxT2foWjV/xJiaVQf153TwYiHznP059p/hFTLPF3X/Qtrczoz7RZgRxC2ED
	 tHcyXaqAszwGuMdoY636SMgbQlostY1bbFmksD5oz0cqDQKKAi6nT4RzANSXmS+2MF
	 +sqRQO9KukuHu8HmFrRJ2V94jZcG4sY7FGQkVJYOaOZflDnB5owcjQE1GHEpQiiZQe
	 3KSXoX4OT18xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C0AD77898
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176922203358.30223.2596049458843629077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9b792fc4df459be9cf75e4e6bdc89688c59cdad5c6a98970a8638bde37eaf71
Date: Sat, 24 Jan 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769222033
