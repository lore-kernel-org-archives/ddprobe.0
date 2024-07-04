Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2243FBAD
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 17:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720115123; cv=none; b=iWK54jZFDMGM/ooqB6BbIitE/4PDxq9q+W6OhmlJQ/uk47IAqHe76M+ngQrAlAmMfR/7D/Bsni82jNCtURvvd82FIhOLUPVDvuhAQlWi3dvZlKP2A1CNlOCywbmBKljAXuNbgG6UBsqzJXoOxl6F1G/dtpIzKrdUlxJeiH6HpS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720115123; c=relaxed/simple;
	bh=cFdLLCMUw/ntJ8ZR9RYMO/kKl6/gq6EQvx+ScrwRo+g=;
	h=To:Subject:From:Message-Id:Date; b=QtViEdhXkGHziBtgKCRjHQEevZw1fqFv7QEZsHjyTIyKMPB109jWL7BJxBCsjf/Ku5FIJq3KjcBOOPwnC6UTjv2+4kCLspHhi7e+hld26ePoLd0qskOHdLY1FYFsSWVszQcGbF6vZEo2lQN3W0wmc/b+8XjDwzRt61VBnv8VJSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TombVahK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TombVahK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0262C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 17:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720115122;
	bh=cFdLLCMUw/ntJ8ZR9RYMO/kKl6/gq6EQvx+ScrwRo+g=;
	h=To:Subject:From:Date:From;
	b=TombVahKEzDsYHPTnwO+I9LUDlD806L4kwQ6BMEz0coab8b4bt7yjmg4RaSTsnb8w
	 alDFGjK11TVg+E3ioehuWLAQEz56OOZGgPpo/CpD09/J/pKAG0SMDPBl7Rw6HAYwCd
	 Vu9XYEtfRjp6ZPqQumQcrWFdsh3FCAiCHD/m2Fby3J+IabvrrMfg+aKwVfG77SQpSL
	 2G7qRnulsLYBuq63DlYK5Kn1oJT+0+q0UrFhqc6ZUrpkMVOixOGpCBdyE3/lSwI3Jl
	 6mh1jzL34uOoEzo4KYug3MGNPj96zEhnzKt7LPa6crsnaVk4LBNfg9Xg5hxhPEOsnL
	 ypeIqI75fHqKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C029CC30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 17:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172011512277.29911.16200969463377976161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ceeecfe7375fd57f021466b0783d100ec6ef1a6ec0b04a024067992b1ebebfb
Date: Thu, 04 Jul 2024 17:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720115122
