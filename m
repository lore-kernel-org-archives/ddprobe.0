Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E51F389472
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 22:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783982914; cv=none; b=Qn0A0QcZw9wSGqZzPJxCuCPkeqm3pHSgpqeR7b55AEaaHCwikndTwVRwSJhtICEiiDjoCBJR8kjxQ04e+sCplUEeWybUZBdCb2KCL07IL7M2xBQ4eA5I5UCvw8Gwp4Z1+h3XP5zLCS3yAZNO/BMZuGnYShbhW8mati+MTGnWEFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783982914; c=relaxed/simple;
	bh=bv8eXSfr8lclItCpfvQ7dHh2PBdH8QxdfQ6u3gZMKzs=;
	h=To:Subject:From:Message-Id:Date; b=TB1hak17G2i9LlSrfZnydHaPxsjIKhagz8c9bA/m0SXoQDY+/32PHp3ZvCwv/glD6CWOaX2VSwNQXUjmyyk6UPXWDEe1bv6KYl/GLxxpIImJkT8/AkD3L3OSsKQrhPqjD9LKb19/qZTG78vkGfHsDNNNTHrajeeKsiQJI8Tw0R8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TpFeYqHN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TpFeYqHN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0729C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 22:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783982913;
	bh=bv8eXSfr8lclItCpfvQ7dHh2PBdH8QxdfQ6u3gZMKzs=;
	h=To:Subject:From:Date:From;
	b=TpFeYqHNzFcUIUFD9D0AdkrzQ3uiid9TTeDE3nZ1D5T72g2ipeCVronIKZrpAGtD2
	 KiLAgGGmhQAs2pDi2SScLBA8ifeuG/NQRKe9m6/5pnvoAg9PlYJsD5N1eyodIcMkj3
	 EXr/HpayRhBsawnRhQCgkLsEudsCe9aE35BIddG5gQ/NIVljKiqb8MP+hXz4Zk6Idx
	 Fj3i0amB4QB+a7AV6eSsHgsc/Ye3qcBtxY6P+MQImIC6C9yZu7u2XuDX3LSoWm9uSS
	 PlIYMjEtPgv7+5Yk0ZCRqzAGjZxZvddq1Kg+D0abJQ7SKYinpDz1hQC9b97CHjzCw6
	 DHN2vhHXhtSBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAABC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 22:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178398291368.25248.15941876917217361394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b53c9523c12f7a4583f91691f0fa1fa4d574256c71af3ce707e59fc614fccaa8
Date: Mon, 13 Jul 2026 22:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783982913
