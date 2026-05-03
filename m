Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEF33A6B63
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 19:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777837054; cv=none; b=dmjCIp2LgZac0s2OX3IuK8Uu5dstAblUlXpZfYTG8he2BOClmcIR+ynfML2CqVZdcHxsKP7/wAGZ0SLnf4mhBMlUSJhYmMzyzJqYjms6C2wOS7SLJhLxsHhIzaHy4MkhdyJw9SOvZQqPCcRW0vUmpo3ngdmKSAh8U668iZYcnX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777837054; c=relaxed/simple;
	bh=2zzIJkE0vsgAYVe/7AVBw8RM51/hGEuoatkJjWhbXLw=;
	h=To:Subject:From:Message-Id:Date; b=diUMpmnoQXkLM3JwJrEvTVosn/xjD2rnIAbtovlgNTghC7WSmCkuIEUAYJyqb6iQgUS/mnRnsPYNw35FGN5RV+xPuB2vKzYoP8RhHjF6GMvkPxtChu7ja+pXuLtbRMPIrKJeDZzKrz6Wr9QbPzK7/mX/TkXNr0yvnnXBRy3IyVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hL4Bk/I4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hL4Bk/I4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA668C2BCC9
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 19:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777837053;
	bh=2zzIJkE0vsgAYVe/7AVBw8RM51/hGEuoatkJjWhbXLw=;
	h=To:Subject:From:Date:From;
	b=hL4Bk/I4JJu26UD9b1OkrFp8Q/IqCIR2TkDVwLK+pIxyr9rMJd1jneZpS0XS16k1G
	 FA5i/8fxBaqQzvmVWJ8ys2ajQlN0gJG/CsrI3W1A39z/VTOiAgFnOfGC1yQVBrAoEo
	 od5Q6q/KkZ0QLOPOuDkQvYk/6w5OE8aCfc5Uz7YFQh0/AiDzkYUHy4AHsDc3utmk8x
	 eVmmbc6CMiPYZLPqhu0C9N7Mep781fx6dFjYtTfVsePuuq5ga/m4HjUGP/FdDX75cZ
	 BGl+YqPFSHlktP3SQSkEhl1SZ0CqBnLlDztycySGEwvUUvOxsa2SIEV/2FxaDFwlYe
	 aQLWHu/7qVmow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A979ACD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 19:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177783705368.29062.3452203458133694489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 491f546ad5a6a4b84f83b89a22b2d6196c076db445266ccc0c9ba90fe566e4e7
Date: Sun, 03 May 2026 19:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777837053
