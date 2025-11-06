Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E8C254855
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762465794; cv=none; b=iGwIBm0ajIlRAaszM/aoniW1n2ZO6Kbb9N76ZXVHVfbuybnOSS6BQ6QWaPvZCXRCGOdDXq8wMfD20yP4Zxx1vnQ+/CnMwnYBjbPs2bePE3VCoamTI7jK3SCrSyGQR72fs6nsQAmotvIorpIBTO5IQnGnW1ZJs9w/lHH4ElLB4NI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762465794; c=relaxed/simple;
	bh=yxBntkFi0BkdkXEuR1cwulppGnMuGXCeY3zCbXeClow=;
	h=To:Subject:From:Message-Id:Date; b=cka+WjvFayhy+YX8csoltNOeeMeW7HdK2ueiQ7Naw67WnwcIwDaf7o23NFXNCdQs0UIokdvofbBm/f6YK0+Nn9DhtptPOS6CJuYvbgzm1oREyM4/FlQCoG4PSlmHxA0JGWYtrJUWPoPLWufwqr0nKrzFO1xy/oNQyS9L0XP5AK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i2Bnh79j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i2Bnh79j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1829C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762465793;
	bh=yxBntkFi0BkdkXEuR1cwulppGnMuGXCeY3zCbXeClow=;
	h=To:Subject:From:Date:From;
	b=i2Bnh79jPJUEpC+iQFCHiQs0pLXpIMDUIKaDHTtec7AiL8Bb2hgvmblQXRtDMYEUk
	 5DXCGOUF56CZfOFv+N/MME7pmVEIxYhuVsTBHemRRX3uP2tSAB0ye/x2jPTmm15MIg
	 Sh5sJtE5Jkj9HI1Gd5zVFZ/TEEoaPA2cbcjsPDs54iTjK+lErGjjT4pmzUS7/oNxB5
	 SLBRDpoN3czo8afOJeNARk7ynyxKlRN+lQn1eVa1jejhD6hAqscjOuDzwTBhbIU6eO
	 A3oFlNCKhvJPuhmFhX3886FLVSN0KrY7RW1wQNnv6Wrjuv92qJ2jSRPMqqyEevxEgV
	 HdrJ9fFuZe4sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906E5CCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176246579358.23895.2882185566423826924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aff78a846bfeae22a2d558092333d799665c3f727b7d1dbde7487c696fe330d
Date: Thu, 06 Nov 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762465793
