Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262EF24B29
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754558394; cv=none; b=f3SIyKt/bjGSMXDcjNjTCc+ySSk6vR+A9P0iSICt0ISZ7af9hshP9A06GUmjqWm8QbQ/5M86Z7bpnuG0ErCSjPics6qPEgDrONYSzq4jUT3JcvWgQHYfA/ZAcW0VyXBJh/SyG5Ce7u2m47te2VxxyTAJ8mibMnYYfzPFlMQM700=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754558394; c=relaxed/simple;
	bh=6iZZScv9NlFTw+Ou1nvszx3SOlzIJIl3MDeBeDCLMCo=;
	h=To:Subject:From:Message-Id:Date; b=E3+TXm0ciuwdit6aPi9QLcK/vtd5rfItkmN+g/AylKPSOhrWmtCgXw4SkGiMNrQ3OQaI99mAscbDWgmjeMgGY8OGFhg1mFUtYc8GbzLDx+crZeo5Pqdb+iZ8qBcx5DMTquCAD0yVPJI2Dx7vJQdKQQ7gaG23rGcRP3G/rBDCZRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNGSSiXJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNGSSiXJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A271AC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754558393;
	bh=6iZZScv9NlFTw+Ou1nvszx3SOlzIJIl3MDeBeDCLMCo=;
	h=To:Subject:From:Date:From;
	b=GNGSSiXJYmddS4qe+pADQvYfy7Ttch1M/vvjCn4/6F1ewiLL8RfSaaNbmrAixNgsS
	 +vWRICYfZQpsKhFOzzqxHLGn9pAsIC3F7Qs9wF6cBIjp3iWw88wTgXJ7swMtiEAv8b
	 qw47tjzfrNubEPfSS8FPlJ8d39wR8Kj+FUPDLSBYE/kFLW9JQyjRd7YNRG2nFCptBn
	 Ckcq+uMqALOSPsgmpPpJKjuHiaX2ZQkdh0FkwBXbwNF3UExKWJURRnk9lcHxJp0Yy9
	 2cRPOREjjWb41H5VChMmmFjhg5+s5PDuUgVQEiufuGxlqWkYlfVkiBqwagb4pgqOPn
	 woR0TQ/90QW0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFE3C87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175455839358.17065.14545754536112802556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c24d86cd434abeed4402e8a02f05344a123e96a502894076313dfa7e57f479b
Date: Thu, 07 Aug 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754558393
