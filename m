Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539A32C11E5
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 21:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771191294; cv=none; b=rwH+BmRfILni5ZdgDJ3MbKQm6nUnh4NhBu+1GSpaHwV7flcG9PPwlukX+jwmHN+Uf6hSRK4ntDm2CFeOC/M0GuqQY/7HDD3Fm7Ekp5eoYVcIDFDugzsESl4BrPsrE1gYpKjy3IdkQqJkuV+UZHdvkcWGpuxnzMqF/WXOPDoVcgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771191294; c=relaxed/simple;
	bh=0x4HIdKm/T5DfXJYPNpk+wwjSP1Z8GLnYCTVcuxQhOM=;
	h=To:Subject:From:Message-Id:Date; b=CmFTf2spi2Kv0fFvN007NIz9ra+9AkoWSBXau2UdQ5EHtWAOTzIWFxkccqxzduLtCC/JUfga+IDCkUnDVHuKNOOEXnTw6CpQQb/Cb1HFWAAz1NlYNDm2jM+yvWciKJbgZzl6RYC4EqJBeOPsz5T98BMp2vqXrzo7/hZW4sejcs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UaGn94BA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UaGn94BA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB4A5C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771191293;
	bh=0x4HIdKm/T5DfXJYPNpk+wwjSP1Z8GLnYCTVcuxQhOM=;
	h=To:Subject:From:Date:From;
	b=UaGn94BAGbvDCnl/uqz0/Nn/RUWQsmTDm8q5FDLXWc23H7gnzpcvOoXLcHtMQXeyT
	 IoawYEFGZLS0YF7nD4R2i9fBv7neHnywAZrjsO5FkYl+7YV/yyLn34yIelSt2xvs3d
	 aBRC0DjvgJ4SiHq+ykZYv+TwPk7m0A1VOzuzkWDcGcbbMpc50MviOwHnzUoF7ISbLF
	 4AOV0CL0eXoJQ3L3nH0KOBaU+rODwaJvQCVcpmpycJ+Y2wBdUw6YhjSTLVQJmhrTc/
	 ci9CD40rXid/8B852tK2gkNuZ2AG5S0lIQqpfu4TQKJBdqLVmJzHqKIg5/el5EJcle
	 rTR795YAAcLuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6765E63F12
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177119129360.31166.16155390244718363481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17f8c9e1fbde105b49fc93fd2a20ab7f085f6e4b8422d02b9aac87d34825c0f7
Date: Sun, 15 Feb 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771191293
