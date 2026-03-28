Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E3021E091
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774677894; cv=none; b=Cdiiy+5/Ni+0PjKq9CTQH+jiDtqmrs5a6iJghhWA2VZgktJPPF7bAY3YRcI2lUnJgso5dr5fHA6JG0F7D9H/SnEEJEP0n+cJLWL1xF5wI00Tc2LC/DhEtAySNvQ9mibRSd2EwLvw43CnyZWk6d1v2ZbezWeDCpyzGFjwEJ+hJsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774677894; c=relaxed/simple;
	bh=/PnUznqegxxYc0g3GX5I6UojxxwvSXO68VPrwq9qsdQ=;
	h=To:Subject:From:Message-Id:Date; b=MKeJFim8MiKf6EHRRUBPcYVwj3NrI0mpyba281gzHv7CR+cc7p/8c9P1v6bZ0XnY4mbDk1dackflGHSw18Gfhfcndh+vaEcF6sM8SU+1AJiU9nDg+cAODXl5FI0ejXyQZ8cLgCVOpPG2IKCIsVlz/TAvy6mO99egQoz7xZ8fZwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fX0qjhfE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fX0qjhfE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7935C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774677893;
	bh=/PnUznqegxxYc0g3GX5I6UojxxwvSXO68VPrwq9qsdQ=;
	h=To:Subject:From:Date:From;
	b=fX0qjhfE+WTntBbXTcm+3k2zeaoZiacEg5mronVvOzolkEASTH3cIcGsXudJWv1m8
	 pr+oKlwfyCcIakix4KRJN/iHBvWPvf7sjnbjXX9Zgw1fZRkE0RqVIGvXvE+XEEmO5V
	 jZpD8FGWYPYRA0xaIQcdSNep6d9RxAFGzCQyzAvk3mzEkjT5ei4p3kQZZSYaEZEx9M
	 UzxZnpxwOdWTdeESELLoK0SUE/MW4dND3HgRZfpt3i29l8IzZ1rDF7FFoI+ag93J6C
	 8xq8juXPctzwvir3j0jHcpJipToGwF0+B9oO3oxz1l7X/AhVUqGmf4js6IznXqpOTE
	 vMeMV//wfJs0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9383410BA421
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177467789359.27210.14886535369196702312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f761361e687de2efa59752060fbf5caaab3e946e60f43bb56737bc7358d69af6
Date: Sat, 28 Mar 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774677893
