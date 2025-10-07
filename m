Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C93DA15B971
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759866593; cv=none; b=A+ClBljAetlsUSSerMu8rdY/D/4IBjn0CcojJlZdk1hIeONpknqH1u0eSkYT2ud6Z9whcx8c60WrWcNe81S38pvW+ZJ8MK/pWiR0+jxNaOTS4upn4nKpLVLuR0+BlzVPH605yQZSAgthzyP9mEioR1WV8epyR4ACeYXEhLoDw5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759866593; c=relaxed/simple;
	bh=ODHBD5/5PItmP5rVfCXPiiNmYmQc2IiuubTEKQF2GIo=;
	h=To:Subject:From:Message-Id:Date; b=JXfL3k2qSrHiWRxo3EmUbAZcbv+VeT183bmyZ4RN32bJnagPStNIKu9nxIRrEj+Q7IkUmGU8JPqkS0kSq04hIWvsicyAB48nroA+LIqJHyiaR+BHomTw6tgLkZWQPccRp2p9G5A29E+UdRISqKVCABMP9Wm7EJLYaTm0z4CmEYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kMNZ87JP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kMNZ87JP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B81C4CEFE
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759866593;
	bh=ODHBD5/5PItmP5rVfCXPiiNmYmQc2IiuubTEKQF2GIo=;
	h=To:Subject:From:Date:From;
	b=kMNZ87JPxtCgW1rdxkQrJEWCR+HdBc4/76ZPkc+YwnCUnFjsHq8glMthjukqdu5nM
	 yRZ6PYrwa+ieqK8FdQN/3g8lJCDFCXzAqH48l1iSLE0fgA2DaEHfwn8thrh5p9NjAK
	 dPQp+QZx0P00tM7WZN00t8s4uiea5LwWRf53qGpUJTFZa3pOGhvqthgKO6yXjPAhoM
	 IsKFvPhL8aEvtTajxs9CAY1xjPCXWo8isQI677a1+dFbXa9JH6PDl7C4uTsHPrzcyW
	 KgBUaA9tBmeBLPchhpsTv8XEeRli+sguJwpdxDp5bPCbiZX6Yhm7ALrN5dkIkRcJWM
	 5AZgKTnL+QL0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9D8CCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175986659357.18625.10108194834606551934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5faae4ec13d626d29a92423fb8a2c8a2ae0431c9acab1c33a95f4b5efebf2e4
Date: Tue, 07 Oct 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759866593
