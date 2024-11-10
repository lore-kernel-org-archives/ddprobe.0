Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491F029CA
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731203754; cv=none; b=aosrMr/EcXzb/LrF9vUUX/lUJqUsuOooOqrSgBVaJ/eLVv405DW52T3R1odePwsTRUonwh2zu9b2YGb6MGlnIXzjb5igeAPLkstt4u7n4gNJnb4dX48f1ldzCkI9raBNXyfSYfEmyLmfVNZw98JQJVWQxF3NiHmy58TaG12qNbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731203754; c=relaxed/simple;
	bh=qnZTLobeEY/HOR29fT9By+s5HH7fQInXJJisg4n/UIc=;
	h=To:Subject:From:Message-Id:Date; b=RVqLWP6Zng2SwxkS8pGzen8CEl94gaKFS5RuH1UaQQtxH/JTUAMCJLdXXihWqpgJ635qZJjoJYuX4o0fLo+ZDDAa73gSi7/4RPEI7rZ1nSyjCS00UZs0aTONBRGVNHDbdKYMGX2BN2FSohWQksNUaOUKfy2SWtzHzPDnrfadFEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T6Hs2pNa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T6Hs2pNa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC903C4CECE
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731203753;
	bh=qnZTLobeEY/HOR29fT9By+s5HH7fQInXJJisg4n/UIc=;
	h=To:Subject:From:Date:From;
	b=T6Hs2pNaDNnH/RPTMKUjkB1emK5RRQg4y2ixsU8tAjZEeGC6TsINma+FU56dFruz+
	 EvbN9yV4rz7ZCQWqg2YLNstgTxUCeyrC/13P7U1qNwShEMsngrTH3xixSfSDma6yd8
	 37vXk5gJ7SUDZjAdY6d5KR1Jh4Sq6x6MSZ9ps1CPqi0YicFloPnSOc6pjnPJ+zRdLG
	 Hp5WfB4Ud4Zt4ivjo4mu+Gg7EDApR5qRQjRWF+iMOZp+1+4PlBHo4KowikLY3PM/UK
	 mA2/OjFVmKfztpjGeppQFJna/DOYdkSWpmgotGwCqNn8ztI5KxsNedkRxa2dja/Jkc
	 sYrUEjLXHavdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9796FD5E36A
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173120375358.11571.3336790399267036621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e9f543a061e0c9b1aab9bd862e9ea14a2bf08155adb2a5f76c6ce9be3e0d32d
Date: Sun, 10 Nov 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731203753
