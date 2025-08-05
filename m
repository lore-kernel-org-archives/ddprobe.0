Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D76B652
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754371794; cv=none; b=XNswddfn2+YTYWF6d+bCE7rOgESXypzway0mEXeVF4wQyb+ABjc928iePGFiQ/KvT1SBJ6adfMP2SfoSFY5pKxvU+L6yBXXsVHyfoCBqbKGIa389v2MS0DQf8riOCISEi9a5GpRuYXi8ipo6tJeceNo1vlxig9EEMgmlMK7TY1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754371794; c=relaxed/simple;
	bh=AYqOmuBHF/GJD6OXAxVrsHRvaq2qEeylXpknwnIz9RE=;
	h=To:Subject:From:Message-Id:Date; b=rodg8vwoDCkNkQP90EqpD1QAwGKD7Tullb6MAEa9KJvRyPK6SmmSIZPWvfIvSqRsiVCA4Ee7YOnNL0bKYNedH9WiDh/nu9VSFCi0vXrkPpya7VG4WIdUsxg9qazeUjTNp12fZ+BYmjnm6JAFmFlceLzeD5yp/k/gkcrcjexhuU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gtcS1Yxg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gtcS1Yxg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A454AC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754371793;
	bh=AYqOmuBHF/GJD6OXAxVrsHRvaq2qEeylXpknwnIz9RE=;
	h=To:Subject:From:Date:From;
	b=gtcS1Yxgf5079Yhdbpichw75+Yjj+vLN7IcnoLbcCvWh4fr5WQn2/0/OtJBy3wyYk
	 0GQTICpJ9UdK/0PpgmIYcaWgsWm/+b3oEUayUM5gYuHYyXJ35HfIvaWmBVo0sJpEsh
	 CstG09Z0zVr0WaAa5B6NaRM8tpVzpJWJQvDG3hGOx+iB/Vb0N5W8ffZDlaulVcx+KR
	 /GudGNthiDotfvgnjWSU++nmMQ89sqqzIX6qWyjXuFLh5uKLKI/ULmHh663tLvpt9w
	 KxT9HNINWuOQ2ZAUQYijrLAMFFbds/Ns7URdikEzj/G2IhQJcIv6sdAavYc6NIMU4Z
	 O3vXWiMyeGFhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9228EC87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175437179357.27283.587524318184234944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33f90967bdafc21bf6d47efd8ab28271d5917fdac864660fcfb2d3bba9f144c2
Date: Tue, 05 Aug 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754371793
