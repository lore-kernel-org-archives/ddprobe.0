Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CD9E372EE6
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778473834; cv=none; b=Z4Ua2Zmly/PqInWarRdnP7fJhR+0ZKWFWahrQZGuBfTXTX6l0gzyjR7LcCAH7GFRE38L9+WV9z/rEi7NwDLg0JzpLCmYIlvm0nGMhFL2ZCAABrZIj/VOY5r0+ckrysvrzX2gUkUybLJW7/m2ouKE91JKBLkJUdS/jEQCD1OKOkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778473834; c=relaxed/simple;
	bh=l9KlOQ1oWU1+RkwFxQfK4Nr7IC17AS4mr2JWUt66u+g=;
	h=To:Subject:From:Message-Id:Date; b=ZNNAEPs7dcVK3F7oIyg2FnajRRKP1QnPHhCZMtfILxJly3SbjFtyiSvBRB9mxDLTMCa/o0BkbGmia5UgIB51Nx0ZqAcsNDssBiJ3nFSc/zvBTYkpHDDdGUI+OGs3XnA00sT29CSoMGHKyOMAMMGEZLg+p6kSAUZaUNlwF9y6c+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T77wM6DY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T77wM6DY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C31D7C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778473833;
	bh=l9KlOQ1oWU1+RkwFxQfK4Nr7IC17AS4mr2JWUt66u+g=;
	h=To:Subject:From:Date:From;
	b=T77wM6DYnK33S+iCmjbegh6ll3rnEVJJZ6y6Hdb1fe08jMnA5hEneEPPp91M9A0N9
	 ulxa/RIWchxab8QmAuWcLuRooefgaSG9UGI8h0I2qNXhgEQ59SYo4mOUp426+DF5K0
	 fUh0nZp45DbDXa68DxXdquCnt49B0jx3wnyAZKXLV2c1l7uHyA6w7mspgK6poIfqIM
	 wGo8rG83uyLrwQQ3axII3x6/j4EEcdPwwlSK2ILM6IpGGEUYZpub3DENtsu+BFXmW4
	 ERzrk3zGa4bPzb4v5WiI6AZ0H4rtcWOGFmg8xmKy7zOYG+uldk2+mpDxIxKWxDS0Eb
	 tzuOLjiwHUOog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD928CD3427
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177847383368.466.15918996343614564101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af164b91dc3fd05f0aed5a9293602481ec9ddeed06b86990e9f1f61438a0d8d7
Date: Mon, 11 May 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778473833
