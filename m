Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E0210F9
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735625754; cv=none; b=plDT4LqcZUwy03U1KnqPH3l+E9Z4aBcuVCFQJuD7B82O7PYn5eR4BPU94AV1E3tWJgvOSbAIuX+/Bp5OnhO2KkCj/1dzDsBPCUewPz9E7yuw4TQLOYqURgth18d0I3hgdwAh9kJksrT+6qRIlefOm+uZI+IHCTPsdw+vyZa+UxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735625754; c=relaxed/simple;
	bh=xIoO5i1oxNIloc4Rpinc0SujsbdgLsocmAX2hdUIM1s=;
	h=To:Subject:From:Message-Id:Date; b=NMvJJLsPRp4LhosKQaosSuL+rsvp7vZ7UoxDhUJgQxc4aU+6lKwz8GBnl2i6Dxt46u1/rucxxzVAw7g8wYN0HMIp+KD8X51gmI4hqahs7oNt6Qi+Ock7rx8jm6/S6XJH7XegG7zEiGNt4Eakrg1SMwTwsRjUjQ1duhC3vVzLndY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvP1fy5D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvP1fy5D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA98C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735625753;
	bh=xIoO5i1oxNIloc4Rpinc0SujsbdgLsocmAX2hdUIM1s=;
	h=To:Subject:From:Date:From;
	b=pvP1fy5DtqsDHHgusqK2fdXvciUB3K3fMZUU5gl89UJQtbQUUoJ3SnfASAruk2bxP
	 UuFpaK5kCtykD6kLmWOpU0gUcAHdwK5xd3sstXWLzUT0CJhSCCa8l3lP09/Nhb9E8Q
	 /AAC9o/Etc1Ph6ZuulTt7rWI5Ai3ZiYUSxSl1DJnz1Zd86hqJxMow92w2IKLlgRO0H
	 kNw0losNgJPXUvB/QTw4lFN7FpEOyzLyrR1jtCeAUlYzVcoJi+mFD4dsyh2oqRkW5r
	 QgXP89w5bX531fQIn6BjvOHNMeDXGXcyg87p20nXJIbWOnPR7nzN9VtGn0ojFlc9ot
	 mExb+zXP+LCZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B504E77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173562575360.8836.6574547228283362876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0af34b42fcc72327f34979d32c4f5ba76166efcaaa0a45fbe71921d5cf011329
Date: Tue, 31 Dec 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735625753
