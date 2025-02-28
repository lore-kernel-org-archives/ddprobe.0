Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39CEE1FE451
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 08:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740732534; cv=none; b=WTRh2gQ7k9LqxUwNff0NyfHVMFDnYvmqMFa+NJ3C08vtY5FL8lSAYKJcpYeOwLtplCGpIucwEFPsovn1IvtXDZtyN3RLF4BmHr7J8SE2DgJdpg/t85fSnmbm9NqJjebX5+bpzUWK+uZgztpLVksvBzTt4eWy8vsDTR4NR8VkB/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740732534; c=relaxed/simple;
	bh=m76Eg6TJJYSeSrDx2DS99QFAStCuEeDJkTNexcgdzPc=;
	h=To:Subject:From:Message-Id:Date; b=QTp9SWOHkBYJ92L0LdTFx3C/UfJs/qDJXjMyTpFQIyIP0te4dzEHX8+Cfe6mLxr3BhC25U2POuObC/GvRYX4UZcwo9wKNCIiaor8+PEy0wsDY6o55DBdiruJlQHC8gVANOGp5kWwMtOpXQMNgI1S6E+lleI7rTJEPhQWt1InAfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QD68knB4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QD68knB4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA981C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 08:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740732533;
	bh=m76Eg6TJJYSeSrDx2DS99QFAStCuEeDJkTNexcgdzPc=;
	h=To:Subject:From:Date:From;
	b=QD68knB4KWI80fTwpBY6Ak2MyGYxd1OPdDQ0gyh+ThpOucpKtcGQBDMZRFEExLspN
	 jJLeuudBclGn3e1lbI6CTSixiO2UPBFlyQ+NVNMiFHr8wk8oDJutS/6eItH3laNHnh
	 V9zfWvHw+CFdzjqoZk7Ndq2RND4a2N2DgpdpxNbvwWVba3Pv3PHoNljMEH+x9K1lQ2
	 VPn6uRYDy4FQLnYxOpvQp0F1Db4NMkCoHYhR/LuRB4alvcQ1KP88bdj2vu/oXtmMiS
	 Uf7AKjINi8WMeOrIqhhXpAD3P94UcNMcu7ZftUJc/8nNUpROW9aee20yQD1ri+Hq33
	 ncb/qj5AVgcSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8B5C282C5
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 08:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174073253362.32601.5247994254924517460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8311264cfd1f4c7fa48d08757dddd723ad5aeb884c9779d660ec7e6ec7f4600
Date: Fri, 28 Feb 2025 08:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740732533
