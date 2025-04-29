Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDBFB25F7B2
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745966393; cv=none; b=A0GtQxOSwu43Z2qs/xh4Aa8T5DZPOAH4/VvfAJQCpsisFv/ydGttK1QJDv086ju0aJMwy3Sol7V6Zu8rchm+32huSMgqXnGo+kNpWrmF4XDwblm8SAWQ+UjWO9zefs4mphMJZPv7H9qXDWnWrtiTcJ9FZI1UGMNBKRwtjCMccps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745966393; c=relaxed/simple;
	bh=CVLx714wrCHQc4n5ZewKx9zfIqCSVI2CAgUPUGRNJps=;
	h=To:Subject:From:Message-Id:Date; b=mcbfZScunBFaRWrsI3Kv5wkOaKe3/I4tee9MTMtaELMUfoXmDeKxHtw5MY0aWw3MoC6g95sBwF/eZkCo8SkMJwLAxhlcdeyNF/qTUY8Toljq6L9c2fLNtLl3KaCnSydsv9dcHDBowI1LrPyEHwQCC0DznwLgWDDeqDrQteVVLiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bm9yN+qq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bm9yN+qq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CD5C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745966393;
	bh=CVLx714wrCHQc4n5ZewKx9zfIqCSVI2CAgUPUGRNJps=;
	h=To:Subject:From:Date:From;
	b=bm9yN+qqB000baN8k769U5/EYWpUKXyf3andvBL4bgMK67LzNOeGiqLB7BpvvSvNx
	 Fh0HtM8U8rkt2eAMjtAk3X9IWbFeWOzq3Us7oCGPG8KgpVEwnYOOhLWNKWQsefyhws
	 YgC8Vu7s9Y1qucWIV2jdmvK/zH2ZdEPedaERQqRBl84bcBkVNTVbGGhOg3Iq13XIxt
	 NLLZzWUzH9GGHw3vGJqcP7rLkD5Kx5a08GuI9Z3/SzU/oYMpzJwFSX5XD0rs7QHgMP
	 zvbpvxKO/ku6rhczXLrB93IRJcUBr5a+ges4VuZL4fakfEnIr3LpnKNWYhMSOWJWMb
	 DRDi44axn3Nvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944C6C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174596639357.9025.4591924017729153468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 875530fd3d6c58898f1d13cea6f31d165fc0afc5bc149c5ff3a234f1e67af924
Date: Tue, 29 Apr 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745966393
