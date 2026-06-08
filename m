Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325A63B6BEE
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 10:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780914274; cv=none; b=AsJjEGsdoB/YzWc2150ZsCKL+bn7SEBLLw0nllEc4EFicCDZ1GEd7YIBsKqWK+o5InOpqAZZvKsvCmBC9wQNNiSQmdDIdaApNUjqMzCMfF0IwsAtDvsszkbtfMYTGbU7L5ljfUZP+d2W/BF+qRBkscnbp2IGn/0RKSOCIue3jbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780914274; c=relaxed/simple;
	bh=aFUoIVu2S/5WvQb4NiJufDS3P+ddx1vhNFA/4zO/c74=;
	h=To:Subject:From:Message-Id:Date; b=ddyVhwCGZOJdKgNVyJ2wQ1gpgJrR8C/2n8djlDjQtzAXt5kAKBp/JOdCiyDTtZF0RT3za7NGDCyazhK5GYwUxQd2HB0yT4BgFS3xD4O9RJK9yUqkldrGzffqL4g0UN5HvfYmthgcerNKEGZHXWNEjsc4tcTzKdxP/R7ZxqiJ7Lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EXWu77mC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EXWu77mC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C58A5C4AF0D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 10:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780914273;
	bh=aFUoIVu2S/5WvQb4NiJufDS3P+ddx1vhNFA/4zO/c74=;
	h=To:Subject:From:Date:From;
	b=EXWu77mCdBsMnZthzLoazA6eSBRpUqi5539mao+ZGw95+arhl3GxMlk/Qm9+TOQL/
	 A1zvIKTwGEhZGbXC0YltnK9XLG3La5n8bixBXYutyO0aCxSDZw3Dn43zSKFI9olBci
	 tKmtpYllpwHSfThTZccaG6qNQAuyOvzQu8a1QOCnWThW/fuMUJQJb6GEf+J5s5jvLv
	 ILA3y8llK8cSEwiTxpMv4YIB2U9tla2JAh+029t7/7XrfpYrySutUAz7mV7azG3g1n
	 Rw3tLdqw/mhqMWtmwpJcWw//H1g91f8s0kbOxBiTC/MI1GFoXN9XIRkgx7QAWExg8H
	 9HvAUjpwGdGdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB5DCD8C92
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 10:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178091427369.14380.9915071225537977360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b840b2cab265a8263c09cce65437eef2af5d847d0a2176664f9274306972e1a3
Date: Mon, 08 Jun 2026 10:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780914273
