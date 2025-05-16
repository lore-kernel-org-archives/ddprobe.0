Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AFEF17B425
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747387796; cv=none; b=UVz9IVtRdol+n01Emskn1zyyhWyiJVP6Xct8UNXctigE7q1CcHEUq/HrGEcgBewVmMC1J/BYeR1oqK3vXUqi/qnf70asKCN55/wh6Yk9/T6GcarF0pneEG2ciHiX/CxZshETEFGZbaTfHcRDZ/4czS9YrwPlQ80OTDsjxYhmXzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747387796; c=relaxed/simple;
	bh=r68n6c55YGGfjHIcG8yB8nbXjpqCwYTknW5aR4Lk87Q=;
	h=To:Subject:From:Message-Id:Date; b=mZsJeXEHYmViOStdi9kvV8vaj2IVukYbwnqp9oJCD4NH/jDJd8CrMxb1+DOH59rABWUb/lDoSEo57s+a3fmn5erjvq67hN9Y+YAbaHpJ9c9W8ZS+uTtfphI1+u38BoHIpMp6S4IwUpXvxBOiwKDtgAkv0xx+D+lT/jp2xs01NDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ubgKYUHg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ubgKYUHg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A287EC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747387793;
	bh=r68n6c55YGGfjHIcG8yB8nbXjpqCwYTknW5aR4Lk87Q=;
	h=To:Subject:From:Date:From;
	b=ubgKYUHg/5hazsec3QLjQBGr3capP8EPfQMqfrnx4oNhT2TWC4cyx7ZGuBpVwQlNg
	 IVDjBTmM59A7WNIwMfPaytCbPOzrAnRKxod62wbf7pRfhCnZv2s+G7WLHKuTH2DvsB
	 DhrGObYcn0uoH1bB5PJNN3K2hLkpywR5GQz7ydxva7DcEWEG02naEMB7VK3uvaXMhu
	 Po/JQ2U2ltgycrOG8zsyzJNdiqMrkQ/n+Y6UnC83waiBdUweCn4jcEzerrwZGTQNQg
	 sOK3qet2DpLsBI4LlqLkGXC/yqNC8jrxdEk4SWzWsrAowS+q3zOXEZuy0DzT1hN7KJ
	 n3o13fZ8JjKyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F93FC3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174738779357.11239.4914942595745552334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceacd67c1b78366e5379b118627956ea3c2ecec6e1418c075f78993979bd2fa4
Date: Fri, 16 May 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747387793
