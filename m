Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BEF83CD2
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732799754; cv=none; b=a49/UmEray2IrV1JypgpJADfdyS0OjBkQY3ZptZrITITZJwVNGQ6LvqHrtIYpsPLP40Z29igZrzWMXSxpHRHPGoI/g6ScwFObbfkTTbCwJaGRUAsScvkxJe/JUmN9AVP00DrdC/cFbfNJv9mZG7zg3O91QbG2CLK6KB0FxH+Ofk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732799754; c=relaxed/simple;
	bh=XkwSkFMbFwYcyC8G4Ri+UZKJXmlFLJJfCyvKEdwYan4=;
	h=To:Subject:From:Message-Id:Date; b=awxkMAVBV4PLQPj2urdXveu2CwDr/rxkQ7ZgQHfixVzRTOwv1pRCKtectAXtPXOlBvF168dCstdvHt/aEgWiR0P5KJQC3Zr+WO1RuU/KK2WGgzGyfD4AF7aZSVPL2DuY4IQ48QNS/f58znMv0MrI02DMorC6itfJ+1B1+ktddzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Idg9VOPN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Idg9VOPN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC60C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732799753;
	bh=XkwSkFMbFwYcyC8G4Ri+UZKJXmlFLJJfCyvKEdwYan4=;
	h=To:Subject:From:Date:From;
	b=Idg9VOPNbyYK1qJdinNCGIhwtA2K3j7yX0t4ANG4kwOWW1AuWJMRbjQhq6ezfnvaY
	 Tn2p7GoHsigvLGMqCz3fquYXxhYKLsXvn1EIrABu1nH6OzVPnUhbvgF0ItnFQ2zcm8
	 /L5uu6wHBnYUBBCeAvOlkw0uoYgNi73wgdqYVt/xOdTC3LE91wXhSaOEOJ0y58D7jp
	 3yRYNvfB77vWH3dhjYyRTd1q+mdYCHWzXT+IRE1kk5esM9VgYJfD48aBcAyqKfGEyA
	 UvMt2r5cTuFDH5mZr7FPKjAhrlOoTa5UuacRtRZ2R/Sr3dIOo1H7YYFgUnjoaUgj3K
	 0FKLATpiptPVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9585DD69107
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173279975358.10544.5217023522885520386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e2f8a8c1bd0066b316a634c9fc548159c2f9b1f21b2f92d003176c86b52d3d7
Date: Thu, 28 Nov 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732799753
