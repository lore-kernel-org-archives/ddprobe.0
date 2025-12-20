Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BFDE189906
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766255634; cv=none; b=ogNxw1x7ip/jUW0UU3WYX2ZRRgyToyzMeBw1Ylnj54fwHyi0BvNcOzN9wjWDQt4OI/l44xdbW3uwYMOpdTXNFaHTE7km3ZYdgRk8xej15+rpWgb33e3/nM1T499VKsV7tGYt4re9wiKP5cu4XcGZGNv+up2XITBbqHQ8PdkPal0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766255634; c=relaxed/simple;
	bh=ZlNvp7gKFaNdnUfgRATJXXZaH+qTeAMjGqxks1B0Uoc=;
	h=To:Subject:From:Message-Id:Date; b=F6aHo/Ao7S93QcOl0NZ5v/JDDX5JWPgETGqJpY1SpUVwAtPVyYQeHkhhBAoIJYHX1iKIB0DQjeu/izsiBGoRpmuLH8XOBqXtnTTFoikLlC6CVRifno84wLFUr8Zx3tMutruiug+1TFp0ivpYLeYKlIoSxVt1xmVnXEchdwiObxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MXPnGA14; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MXPnGA14"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D98C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766255633;
	bh=ZlNvp7gKFaNdnUfgRATJXXZaH+qTeAMjGqxks1B0Uoc=;
	h=To:Subject:From:Date:From;
	b=MXPnGA14F+SMCDwmTeHUGzjbvEQtOK8JAexc6vjiJsfC46GQ177d5ZwXg2gdNWsY7
	 NaW7IO0cWsSwodAe23y0QO/9OdnDc7i4fOjglw96AYd736GEFy/bj5vDnsXuxJNvtp
	 MN2RTU0DsDKQpOFbt98CxuP4F8kjni1+t9Q+fYJ0AyBjk6cQBiciwHJLjS3JxztAia
	 bBp1X+Axk/Pjabn3jtCgb/bvQnVkS8QIXwVy4fLtk6qq/ru+NJaS7UBQAypRo95KhN
	 olel9+pX0Fta90CsoiBjEzVdr9dtkU++ZM6u6lcu3Tbk3tpnwFi/vZtZ9lmGZNt1K2
	 XP/g8WgNb9USA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDE1E668B4
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176625563357.10901.9834422005906387739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fde400cdb80c7628bea737b223c1861ebc0517165ce7920cb2b65dd8a6eeef1
Date: Sat, 20 Dec 2025 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766255633
