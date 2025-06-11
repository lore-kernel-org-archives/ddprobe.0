Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E102D5400
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749602394; cv=none; b=g1qZWU2KplDzXv8aY3VhDp47UtakmMLiok6mHzBptPIiOJyPU/Ntlp5NOQWcKig6hHJasLjjwPjbE/29crYIH8aPg7+hFAcCvhK9Y67PpCs8/L0DwjL1NlipAWAXxcpHaXItmkzMnYCSZ/fyImhNOgTWbc867FnAd9YvoIW8IdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749602394; c=relaxed/simple;
	bh=AOwaPTjKR6uxWtevAjzK1pQZFIXABP8hJuprsk36cVM=;
	h=To:Subject:From:Message-Id:Date; b=qKAFovSD7lN/eCJ3k6tkb8S7AT98CPNZFKceuMKBGwNlNN4TfvZvrJoanQKRRrJjBfAaxzu4HOt9cSGvdVpEsQlla5iYalAm1jdjBeYFyhTSMUp/iyX4SJAMB3hXlFsnPmMwxhvF3iW7djkeVw8VZFxgYDDquee3ROp8Cabqgjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X6neMxLc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X6neMxLc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE8AC4CEED
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749602393;
	bh=AOwaPTjKR6uxWtevAjzK1pQZFIXABP8hJuprsk36cVM=;
	h=To:Subject:From:Date:From;
	b=X6neMxLcq45CWtnsl1FAsAL2rzrS4ECYN4uMTO/DDTxb5P7XR1rF6mkcOpVVLv0z9
	 jm9o5JDkdQSMgyHGwAgg9oH6WnWy8LK8IHKhqjLV03wDzm25wBTS+nmjgiFxlgDedj
	 YgqGKGOtguQZEvGljD6MJChvsYtm3+Sdqdgj7sPfwjYFGTgezvkmRZUQCue79crwlX
	 Uliw18ruTBpn6bcTNLD7+ADqqBpmXO0vAKA6NEJ6NguMqb7Oy4eEOY1T43/gaUWTHS
	 sF1UPIUaUZaeQamSaTrafDRIiKe4bhCPN/VJSlh7xtLIXkNOA7DzrEBCXGXKYt27Kh
	 1jZFJgw0Z6E3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B0CC61DB2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174960239359.13886.16039830610709023509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 752fb4755a085f4e79570207ccd96af0720d39633d90c7f4066e011b1a8ef8b5
Date: Wed, 11 Jun 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749602393
