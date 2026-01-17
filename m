Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE4A13AA2F
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768613634; cv=none; b=XpAvskXk5pWDH9TivpQZv5w5mUIUyQybxnoTckrt71+Fxn4n07ozwY8ctOpnRrC3gn6Orjdddg95DH0y15Fk72zcJvM/S/nD4ayiWo7/1sRWsnixGN7pKaPLaYC/IQp89TSV8L4Wu5IXaUnsf5CrSDU/VD6I3bwkKOTxYr6fu44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768613634; c=relaxed/simple;
	bh=CfgPbCOvUNAipPzniijBp9ItL/d6tuxIzdREQWzlW9g=;
	h=To:Subject:From:Message-Id:Date; b=TiLra0IuRx87eDr2+e1tFoCghiU05QAgfBHf99qy77rEtxmuJ8vd2j7+8WxM8epKVngMeoJuiE2M+/lgDhH/X8yODXEPVgFDDaQqpH91wpKLfYm1w7hqCBbhXlD6eN28lwTxksNuUyl8uFxtM9VDmr4tDuW5X/k+IqCbOUfE0A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E35OIJA+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E35OIJA+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80ECC116C6
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768613633;
	bh=CfgPbCOvUNAipPzniijBp9ItL/d6tuxIzdREQWzlW9g=;
	h=To:Subject:From:Date:From;
	b=E35OIJA+AoyPcWNTwy1BKIGSTIc0Ng7QEYFc4OVgirQoksAvxJ1wo60s8IgLuTXD5
	 R2U/4plXuYldeebvvWEQP9mq5BN0cxM88dvsgwQJ+O9Hn7dZcVq3RVork0QrjSgNbN
	 QcyFGSp9oOj4hAxwW+dyhpMw4Te5l4sSX+9uLKUBEVGTK83i4agra5O1Zle9qiuJhn
	 bWV6QB+LVK9D2rb58Ngal0GpafDg2RoDxLuJt4RUJMWwdbpoh7qDQqsvyzAfhLOPVK
	 GuP9fGFQlTMBZWcrI00K/cLFd9c0Sy+6VzJM6NnGhSfsgmTA3TtyKzF4+qm0gW2q1C
	 mV4Ub3HLHjPyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963A5C9830E
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176861363358.25252.7872195248609879846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddb419f3e7cd597dbfba6cf527e2cb537e23159c5dad670d367af4d0cb2fa2b7
Date: Sat, 17 Jan 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768613633
