Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67B163A5E78
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 05:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784785174; cv=none; b=cT7ek/77AynbvYJjxVZcdpWUbrq45ckm2CVyb+3MCXzrp67qeU1mhk47BdBunNY+fgi93utR1mNxIKc5E23rNcagXMFKUSraCEE6B6RT6YKSpneXesxOIjtwNWRO9SswHKLot+cpPTpDrgQ4JCTacBiQL2GSjmeeS6sTCW08I7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784785174; c=relaxed/simple;
	bh=uJrj1RYgs/ultHe8uKjpHGFene6gKLnaRYMVgP/d3xM=;
	h=To:Subject:From:Message-Id:Date; b=I2+WNEG7YIHbzUAUOyhxSzg/1f+ydEjo1DhiNxhNEfsjqR5/4sFoBfdcKxXVefStkx8n4zx3qjjNDCYlhEM28kqjBEpZYWwb5QUCprzvSa9Y3cSwPtDK8h5fR3DodJ0L8BD+Arby35Ikqvn3CjNHZOLSJcWpuS/imcjjQ5BSm1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQHXOT/D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQHXOT/D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0B502C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 05:39:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784785174;
	bh=uJrj1RYgs/ultHe8uKjpHGFene6gKLnaRYMVgP/d3xM=;
	h=To:Subject:From:Date:From;
	b=bQHXOT/DorioucdcL2rvXP1TczXn9ESFWfJ5n2gLbmsE+iEBAyLifg4te6d/jiL4G
	 9Oh1xbCn/ORmcICR8tmnMQKFHvYTtla7DoEp4sh1/5zFG7EO4AFUZj6u5CkGvShqzX
	 4aa0liU9+zOAcGI54660mokYoFDE6jo2CDVaefyR/mC307Mb27lNoCdWh985D0Q4XA
	 nrSaPkw74qveScK9bWv84Z0BF7VhvwfU15dLGJ8TiX22skbnWkwNGRGKT7WHThsqYu
	 hSxHhYcQNFqn0W5tZ6X9SxFOnm9nShn6TOhay3+edL87Fw7sL+TUOvls2+JA4nQxgq
	 XWrvlm5WQm1XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDD33C4453C
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 05:39:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178478517372.31367.1587913750874788905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 857e3c7261dae2849a9e64fdcebc7a628ad88040dc32f8daf44e6c79903969d6
Date: Thu, 23 Jul 2026 05:39:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784785173
