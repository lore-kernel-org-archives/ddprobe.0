Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4891B31326F
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785302434; cv=none; b=azwDTWkybE/a96Km68Q1zC6OBNTezviA+UNx2Rki3kYuuSTDVg1ULK7dg5OxwpbbLeuyp3tILwclBR7IkOiF7KhS8hF2xxOoDdzwEU+NLBVYPlyUWtozq/oMBBuI8MzoLCmOVHvI9i3kTGpWTYNXwdqmVY8tOPZ+QzRK8t9OAHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785302434; c=relaxed/simple;
	bh=S66KzPFa2P2kLgkgXHT2SpjejROfKctAtpDyKWRYgrw=;
	h=To:Subject:From:Message-Id:Date; b=Llu/WjaZ33L5uVu9G5MKerUflqXUdUqonqqnLAQicbtIdBewk7DwVdt5NCfH9WW7YkGuHZ9MCCcaB/9vfEQXownnb+SSQVyfkcCXXr/OZe5/PwPfVFl+zhiXWIPZH/+lOzZWxQhgQWnCN2QjO7VKAG0AFY2/Ib5dPMEFqx+7Ses=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RS3knJYa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RS3knJYa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE6BAC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785302433;
	bh=S66KzPFa2P2kLgkgXHT2SpjejROfKctAtpDyKWRYgrw=;
	h=To:Subject:From:Date:From;
	b=RS3knJYaEUCH2p+xQQIczBazZhH9Ao1XqyTJmi1JzYb/Kmy74m5fui+86Xa9YXLeI
	 f7om5CkPFBcp5RcWZ12S6GtDBnsMM1j1SCupinv0UoNUJUbXss57w1CR7Yul0iwdOp
	 qNiQ7bgsOel/deKjiUAVysj6rLHMaxQCkgNmYBTLWHtyeAqFSJqsGTeXpgvOWAgsAe
	 iQrobAgMogFrA8bgHUcLI7m7ubQV9/mT6sII3N8jqbxF9DidaXQVZYwNek4NeSpT3L
	 oyTWwQlTldJ0xaS7p2jf4zhwIb7+O86l4NgiZfuHZu0RT+rLHtmR9QFGoyzPJUCysU
	 MzXyxIu36K0eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD69AC53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178530243368.18705.6179813302156762165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e1f81bcf579964cae9e56bf4108e50aad29eb698ba0c991902a47f18c3b5154
Date: Wed, 29 Jul 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785302433
