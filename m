Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E192F2F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734029154; cv=none; b=XREx8ITq4JCDkOio7IBwwOIrozAI5g3mCCwWmQEUeGcz4XaTgrhbne9qncPLxH3XAZypXrStAdggZ6C7ZYXE34t2G0colZkEB4/HlJbUJRJs2WUbjO+4zzOI+xa9AZ+0pDDcJwZT5uR6sZa2S7tybmacBaXkkkwUpQLHtfINjA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734029154; c=relaxed/simple;
	bh=/Q+ZmcmmbJzIIRfALoQYZBhnN1551dJUs5m0vO4Tki0=;
	h=To:Subject:From:Message-Id:Date; b=nGz9H3qAKo9g4yOKaZ+LX6/JE5r77bUJz6G7D7soJTTyHZyim/785OZ7EOLAnUNDFmU1TmhCBZeo1URltES6KVKyJxBvmsSdUGZIH0uPlG+o/aowWVSCLOhBo4MJJPs+HC6RKoyECEW3eXeZYO4/MgXuPyhl22mlA/3FL0CBFr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mep61xaX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mep61xaX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B68AFC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734029153;
	bh=/Q+ZmcmmbJzIIRfALoQYZBhnN1551dJUs5m0vO4Tki0=;
	h=To:Subject:From:Date:From;
	b=mep61xaXOXxT6wmieUliWsL8hRALL8WKI+Qnz49VE8qr60y90dNAuqrCVcDjc33Q6
	 aGG0ueaJ0dlSxV0CG9WyXffQvmFKZ7qKFL7HzbxnQ7SFX/JlXO46YtqB8BQegQI0BJ
	 4zt5JvBmMGn7nmxZmICs60ocBObZrZUT42Qp1Ci3EOF5lua/SS1wqaCe9IbEcvB1vU
	 JKM8KTbwk1hGA5bWui1gUF9ftc3mNCIwqmfZZizpQ+TbFr32GnVGVUX5l8ZypUgzV+
	 s6DTRkkM+uIpvd3cHgdyIgcrGZKZ6iyHuaN4LaPV0W2cFHz7//ycGkoTKZRfrI5ona
	 NpepuQR2E3oVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBD5E77180
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173402915361.6533.16070274828434067035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28ea06ca2c0597b49a65a6307d26cca97a8d4c0fb035c98c14885db6a785375c
Date: Thu, 12 Dec 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734029153
