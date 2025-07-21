Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBD923D2B0
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753094994; cv=none; b=b/PRuJJ8uoM6WUTXXTxtFv/a5Cpr/cJ+lOHWVmZSITHmQZs54geRufXShvbmttaS/KhwrPKCe0zbFFeQsjnK0UkWXSfYeoyeDRnfLaobGYF1x9vzo8JbXopwEi1We1p6cB9RBLFO5Fzf5Arw2UPHZDYrN+ofEryjLxLlnAWQ71k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753094994; c=relaxed/simple;
	bh=uaB3+hDT7qAcw+JDlvI3QVdUWDILngf7XpBMb4xcc7I=;
	h=To:Subject:From:Message-Id:Date; b=hy3nW/ASoQnvyO/30tgpZcmq9nDMSREO4W3czqXDZqm3KGZczaNM34Lrqf09AE5ktompexMYaYq8tx9hPCR+Tr0BewLcfYF13qlQKANe7sGYtOawLwMiHFSKqyKB5jrjSLXgrVVOk4rxAU6kk1HBaN8BNgNfH1ujyMEefWFniRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FepOZy2c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FepOZy2c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE8CC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753094993;
	bh=uaB3+hDT7qAcw+JDlvI3QVdUWDILngf7XpBMb4xcc7I=;
	h=To:Subject:From:Date:From;
	b=FepOZy2c0SdxyqBct9zkgtgYlqANQSYeSFi0Hva16PrkkyoU1AOiNfzMgzZqhbskE
	 MB3+aqol/zzeTcwQ+xMTzkXrOoqfvV+ME5iMt6Q0x21Jy2/yuxp56CU28YSJWrUDih
	 qb7AcV9N0M7qy2RQtJzjlhH2gQtrOpkh+VpTqDzvOxRyWDBNJpQX1b75PbISzvZs9H
	 BFstYiCqqhD/B3wuWtK5kIxteXDWN5a+CuOjfCMNJ6JR3wsWhqbmCt+Qona/tCdDnd
	 zlBOzjPrYmmYgXl7mjZHChQ7wUE7Cuz+ClBpqUiE/zaDAgfXWWg7LCpmikKuZ9NWxO
	 eCfprJ8vgwUbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CF4C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175309499357.22443.10514273415689492840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0ca84d5b9e0d6c59048446a1e91648fe1a9db86695e762ff63875eb0b0737a4
Date: Mon, 21 Jul 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753094993
