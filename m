Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D7942AA5
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745641194; cv=none; b=khlQlaXhIOKQxP39c/EsguCdmHvOze9H6PCPaK4gceFjTQQKRguDPXlAu6hT3hHuf06ewJEEoLBnf3I6AxdIRpwmjFa8id52PcgoH21BDR8nD7DMGm4CmeIwGm3TSi7IilBVVcBbTZO0CGFc6Gir0IMyc0/VC7osAfQNnwp4abE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745641194; c=relaxed/simple;
	bh=ki5XWWJl4Vgfu1rD2isGZgk172IzSHSTH9C13VEh8tI=;
	h=To:Subject:From:Message-Id:Date; b=B/a2qXuau79ZM7jQj23+JPRq/RSMgn8jK4BnG9mKKRc8hcfqPXWQHEIbDN7PTmZ+6CWZa4kqrV5XPlubsC0S1RCq7h3SvRHAY7fGVIyEMfRjnr6L7hKhaE5peTBizZxt5lGLkN6mIeUOCgokssVuMpIVhGYWDS1Jd7sxubwdowI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YlSQs+02; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YlSQs+02"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFEF4C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745641193;
	bh=ki5XWWJl4Vgfu1rD2isGZgk172IzSHSTH9C13VEh8tI=;
	h=To:Subject:From:Date:From;
	b=YlSQs+02UN4t1KWnkpib3CBDpY8Ed1zewINTzn1eRNhv0Xhjuko3V9oITkIbjsohz
	 E9HmYQD/zPfFQSVkQHZfILHen6T1MFfoCIus1K0kb/Rd24bvY/0I1wi5Y23siWo1aS
	 Kj8vDF/EOMWS2Mxa/UwXl+j2gGluT/+tsOOICCgyKAYKb124LWLQ8XqwyTv/nV5QT2
	 xxWIZ2lcOMaqzghCxsEKPj0+HQWtXpnpvD/E0PmPkS6CV81TBXkHH8aFdQfbB6LgT6
	 KLnJC1gUKqYepKmt+z3oXwb2gOR6q5l+rAhA4JLU2P6E5eT2QSGbwckBOlRM4UGr5N
	 pP8RuTN5xKNjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B487C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174564119359.24910.16476762084705107812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fac280310466c144510c6467fa3ae7190db7e573eeac5868bcd4d58061d97198
Date: Sat, 26 Apr 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745641193
