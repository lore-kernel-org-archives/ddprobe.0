Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE5292FB62D
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755866393; cv=none; b=LYlQruko4m3WeStXif5lXN/qhAOsV+W5dQF2/qC5AZ80/T9gjR5jIobwJ/rTlXDxQMzzq41XpdPYIxKB7UdWiSRDyJx+pPSlOSqC8wJoLmVZYkZhc3ztEp5vUKWvRpBgYof+XZBgzWhBFkdJdDse/Zo0o2N9Bg56LgbduOGYkDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755866393; c=relaxed/simple;
	bh=Ep6pJC16f6HdwKVU5cimpdJKiOJK4lQzM+Gjj1byV1c=;
	h=To:Subject:From:Message-Id:Date; b=l+1rB3zaSLQSbPkgnumGDcpvIB0IP0Qd32vU42wmSSzqDKrMjMG585dYjUKeX3vGo4mU9ID34V7pstzsjwNn62uTQaukLQuPxKKzk4K/IOuz/9jyf7sBVhlxoN/kfHb8j0HM+ySCd/QoUpGJIFTBoiAnCW7OK/c3pTUQoLygTlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cg3y71Ma; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cg3y71Ma"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF4AC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755866393;
	bh=Ep6pJC16f6HdwKVU5cimpdJKiOJK4lQzM+Gjj1byV1c=;
	h=To:Subject:From:Date:From;
	b=cg3y71MaWrhGP0UniYGUW+GB8S9d1iHboG0JASOTpVdsnnI2lZwXknnp1F3TDYlIT
	 p0UWW4tFyMn+v3vWSsEOj8oxV0TugRt/NJC5SuT0GbnBQ4vg0Gp6GYcimOzdOQYZhy
	 PykIiESJ7Con6deB2J2Ss7ttvmWmdOkZ2bxxa8tX2McCMuzGrdNIMCYEf7tBjClLDk
	 NLPHAhp9ciV4fL6/qgPTgGhRgpS+fQNxEpGlbWLgRY3YJ4RxgVhitAUF6bZvnGuOD/
	 yxPYYobn27QSfJTJQ+MMHMtqP70V2mMI7oKLl6Z7agtEMjjc92qNlLID6ey6Gvc6OP
	 /ZeOAEdVVSv6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB16CA0EFC
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175586639357.25654.9783642348605135351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63821eadf178a584758eaddcf8e6708100bb90c2aace3509a170df761d8db679
Date: Fri, 22 Aug 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755866393
