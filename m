Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7421C434E33
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786081234; cv=none; b=NkLZwsDdzCTvLrVAZ5XAaYNlo92cTKLA6J2WF46vCIMcHKvoCqOBaZU33SgrYq2AueDZrw6IA/GAky3RRzu7q2HHgmlalDmekTo/UbtyzC45bWWisWbasndSl0jgpqpfypTN0gn0KAq+ZdohiHtUfLRuV+c77iI0poW9wvKvEOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786081234; c=relaxed/simple;
	bh=lXktpQ7f4F12SL2KRIYysPgzHfsAI8C247l0IvfcZKk=;
	h=To:Subject:From:Message-Id:Date; b=OBC3dBYVy2rNPF4KQigHAVeOjt4vi6KH5H/Nba0LuNvblJA1hP/PjqaJawnr0Idry5NCiZxz01opy5sGwXbtlecoUZ5+Y13W6iHBa0nLddESfTLbZhHEF8hkY3scHYAzTH/TAtjAKT666oCBBoBnHspGsSWx6HTu05zl8zxULHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q6juhh+d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q6juhh+d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC304C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786081233;
	bh=lXktpQ7f4F12SL2KRIYysPgzHfsAI8C247l0IvfcZKk=;
	h=To:Subject:From:Date:From;
	b=q6juhh+duelJpqS1dZQnefqsJN5HK8kyhxWmtTLjplsWwPjL57U0FmmB73c2tOe/S
	 YrxPG/pWeaiPcP10OOno0LtDbxDen9J0XJHd5Rk49/3gwjml8xnNXrKCH49riChy7n
	 1iIfGuz801RAefUNDReF0Rx8TpziUppc5q/apsjbOO8cCXCwaF31L0iQzXQxmrt1DO
	 xofwbZjNpe+7BZayKrGY30MyBKDZIQGoyZZo4rcpn9G4ZEvLyyB+iNaqb0unRfEf+l
	 cwXmknsFU+z7j3RKbiR6UijFiA8IxKKutP0ZHyvgYhO1dfjAc2twc4yR5MyP5BfymP
	 VVz/9Lz+phrLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBFEC5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178608123370.7644.11744685528858713611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba83c215b5d14367f8b3c14bf8f90374e266cfc088710846d3643ce4892f77d4
Date: Fri, 07 Aug 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786081233
