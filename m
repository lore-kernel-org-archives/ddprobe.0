Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6733B1EE2
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785323434; cv=none; b=NgqIyVbV2m1/hv4tG+MGWq4ad7HMMmsbyShNqVoVBMdsIIwHfegtPLtALWls0zQkjZKdD9t+WRrwgH2ulRRouJKZm+vkLaSVCG5okaPN8l3RQXfbSk8ZvTRQJwcnCLi4MHQyq0nwDeWK3LCtxJGOH6wvNtMAWu5jGB0LhZDLybU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785323434; c=relaxed/simple;
	bh=E5z8DQ/ftmE+uSxA3onPonFVA8i791Ixx4srd+Js6kY=;
	h=To:Subject:From:Message-Id:Date; b=PisY1huzUOiz262/gIrieXqyZpY5/haAOTVjI0J//ArAaMoWo4PwZuiN92xQb4nDCb9/wpx/WGNb6zb8BGbbI57lJfHaliP9xPKzWZx7g8rCc+cXT/Si1Z/ETyloFZdzQkSBCjp7fUlR6D+70wq+ogt5DX5ZU++rkfrLaT/paLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KvxK321a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KvxK321a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C955BC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785323433;
	bh=E5z8DQ/ftmE+uSxA3onPonFVA8i791Ixx4srd+Js6kY=;
	h=To:Subject:From:Date:From;
	b=KvxK321aciG/rfqkPMbjbKmMyKmnWbw9x0THDpANB7mZJilHP6IuzljiKFhtPXExH
	 joJKlSCQyNC9F2WrvaSeVrQxU2Y+MmGyQrFc/UjH8AqxPrh+UnUbKb1ms+mFANutX3
	 yCtFgxkDHK2kaI1JTQxP3P8Bf5NhGfCQoUQViORiFxnWkq0ZGeXEtbnagvGYM9DqP8
	 Dyixjy8omgzQ6yuzl1gjAKPNeFD+IpgLFkMurVUAQ036w1i3lJmlOyAhuGeRl1zLqv
	 eSeZeTAZOfcVrOCYNf2CPO0Jm4z2mo2qCJIKwh4D3YqC57Sve987iVNki0HUwiCQK8
	 g0wClUcH4D14A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F32C54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178532343368.29729.853575972948848982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8ff53617175aae1617274f61b7d3bd5e9e597093de6453adc0a1c3fca310ef8
Date: Wed, 29 Jul 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785323433
