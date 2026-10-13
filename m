Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF1E391E52
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791863434; cv=none; b=Za1yWU0nsTF2mE9YVcEM9tnSZnwa1/tapyWxv8519EHa5Q2R/rt+aU3uAgRJTm0cHtCKhQRRQHWN2zd2rvWy+dFb5Mt5FO2/lZtBzXiOdtcW5LdqZIqnnKBIZ2lvPcy5npS2JIK+AXHssqTDEub0oCXf98YKdj/4P1MD7r+DAvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791863434; c=relaxed/simple;
	bh=S10Tu87EoEut9jOO6nA2qfdgiTcE7YWIKcdXkFlOZIM=;
	h=To:Subject:From:Message-Id:Date; b=ZQ5bwTC+MbUq2EvmJkrjU0GQZ6juan+BK55RZrsyaMoKxf+2aLlNhEDvoIxD0y+9MRZ6NnL7GbCRlN+N7uybpTJKOI71L5ngE2zM7bRFNN6UHXb1eQAxnxngP2I/ElmU0sRY3jOoPeoBOtnGm/bPT+BYhKJ5+y7rADksZdRvZg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iA7tLjUX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iA7tLjUX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCCF1C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791863433;
	bh=S10Tu87EoEut9jOO6nA2qfdgiTcE7YWIKcdXkFlOZIM=;
	h=To:Subject:From:Date:From;
	b=iA7tLjUXuxVMN0NyOkZYsVCU4Ha41zT/q1+dDGd/kT3jLhMDrUTXKIfWZlIMb0PST
	 BOmyUx07txQR3yPO+ZLfTgEpoTQc8K76Dh0mIXdWyRz7zY/VFRm2RYhXkrt4UyNskC
	 M9kfcQSyhmfEHLoR0jK8xkTTbGUZZrkaFmseSTszlB7Agq7X5QghEfjR648fkXhP+c
	 cNkhBj8Y0g3wW0OuBH79/j9chNuinz9+bRa8HPfIMNCGKgabFoO4kkNLB9otPJUf6Z
	 d96B5f9HZYK3TUvQaKIgtijGXwQ1PuU3T6/N+rCIq1IeH6m3jMvAse8LW4ZUN1v5to
	 p4Nf3Ptht338Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E0ECC6B03
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179186343368.31240.5199103809450507719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04de9297da7895830f2330cc96891c66e626cee796de809fa754c2c3e12d1e9f
Date: Tue, 13 Oct 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791863433
