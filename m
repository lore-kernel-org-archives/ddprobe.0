Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459931ACEBB
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746270595; cv=none; b=MpIqNnXAHa/qCuDtUsTOEZBZbd0uS6f8vwFUk69sJrAWU8fR/c+RXUJ0wZ+2naTSflM6jxkY9KnUzyO8kLo4Ct9+TdAFWG+HNK1wuPf1QqQAjDAdUrlIqZLRuTkHKBZi0p4I8Svy7EeA9+OaUmzDMqo+Zi97Ybd78TPPU5Oy5H0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746270595; c=relaxed/simple;
	bh=zKBnRci3rHz4aXEdo7q7BfYHX+ZTpLzzT2rg5/bnOKE=;
	h=To:Subject:From:Message-Id:Date; b=cTBtlk0DhnPLqyMPBRLLzDTrJnji80FXpmbVhcfMcMkX6E4sI41ZDgYbOMhMqox8sBRYGuZFmWfbJg8BXAMaPG4u0TvEmKDZE7PRdGb5R7i/HscGOShgfFebUwnrzRUXak4ulgVtJLwL5svYtt+wQg/S6zDE/3nUhTdVqWCyyu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E+2ojOUP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E+2ojOUP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E34C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746270593;
	bh=zKBnRci3rHz4aXEdo7q7BfYHX+ZTpLzzT2rg5/bnOKE=;
	h=To:Subject:From:Date:From;
	b=E+2ojOUPbeSc2VS4aX3EyjokHltpmeFw7STjb4voDMeW0aIlc9pjfiSy+DS4QEqQF
	 +2NqmghrIIIS6Nd4AYpYNcf1Z7iU2C2dCjlimx2OWXO5SS2+h+D7DPZg4WHzcXN3a6
	 Wzp0ciCViVaS80Y8tBt16OfcQjDzO5IMPWWv1cgmsamPjhB2DTYLnRoZs8JfzWgsp/
	 Reey+tg6mEdsMb0AmtOS8JGJzM9Fc50JkmV4dCQwnwfEIu6l1qUHH9XRXCTGNULj4P
	 Zgc6PLYxieIWVzrxdcSySnyJ57GGFdQjpYpc3vdpqkyveISZ++vpQlB54KgyfS0c3P
	 VAvnaOQXnl83A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B1AC369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174627059357.19917.14686779952873729447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a103a3d1c52a0b659bc2d3a1a7d463dc9c95d34f6c25b257e919d59b98ecfdfc
Date: Sat, 03 May 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746270593
