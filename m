Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4182A28B509
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752055794; cv=none; b=Pnf2Qg8gQwLIQ9bIxJFI2ovwjxU2l/uyw9oZPKE251HM1VcpuUqkoUlzfNDCyZyEboYd3S4OzbCgCw4j20dS48OvltMyd+gSgcBoDlENE0p2ptfO/LYm8LtPbwzh/pkwbEO8kSAasvyKolSP3kYxzbZQo1KFF56ylQtMpg6To5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752055794; c=relaxed/simple;
	bh=g6jvb8+qAIc4HoFRwl70JXtnB+uaQYV7Jv/KNip5FSE=;
	h=To:Subject:From:Message-Id:Date; b=XGzyu4b3u7UMd/1ko7apajsRztL3ye1Z7qY/dQboSlLTlPivtslfvt7bLcx+MS3ggUQCa3y3YvJf8NWzs0Zef5UiDvIpBJrN4SVHHzYnohaXmNCzZ1pZc78OwAjoSfmJK1bsbAwXmFfoxcwLdrc4XWX0ekwyDw3wxV9BbMkF4Sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a6lqI1qM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a6lqI1qM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A717AC116C6
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752055793;
	bh=g6jvb8+qAIc4HoFRwl70JXtnB+uaQYV7Jv/KNip5FSE=;
	h=To:Subject:From:Date:From;
	b=a6lqI1qMxy4Kr3vWokxgdDmfCHLE02vPjuNQ7MzFAPXsYaKvcRa/H9XDbU08jfQaw
	 lRBfGh0w8cSQEozV9SZNoanq1ZBFsZJuP/sTW5LcFO/rnkzjD3FZHANDxH71VhmR5G
	 Y2Y0T56OPBrsX8kK1sl0d5GQIDIQM4Dl9RbY2EHMxfq5v5M/+9aSQrMxOpxOnYAhIA
	 /LRT2neQkWeP+vhMCJiWBbuel31hWglhPR9YVqdyXREzo6Gezepe+CSk2fIyVOQRP4
	 rKnGj416dGIz/4SEwAY3zbaTBqNGQa/YMcTN1DzgsIx1CrU3U2kbNpXEY0Ju0f/uQL
	 Q+HWHEQtm2zOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4B4C83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175205579357.11468.11497962470685994784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2a09f03dadb24a4ccd8c150083b3febdd74300bcf8ea7219e507e3bdedc25b5
Date: Wed, 09 Jul 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752055793
