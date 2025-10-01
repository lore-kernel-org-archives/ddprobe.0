Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264242D660D
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759344594; cv=none; b=G6pC4yOjW+iTEq64UWihFWzXQEt13M//3F7Uav+PpaTdFkGBF1x2PhONjWuoKUstJfX70jLoLU3FMvK1moQnGVBPlqS/UHTTG9bbFLMNUKK/uO5IMjsZh68IgBC2utVdJw3M/eTnJSngZObNhzeN2mAyZWnQQoBXogV+sVlqz20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759344594; c=relaxed/simple;
	bh=BPbej4iSpKuFZaDx7glMRwBaBt4AXMnY0aZCCgfkeEU=;
	h=To:Subject:From:Message-Id:Date; b=kfhtapvi1557DBbuRi0dNTr33lxBtdUUINUrr67yHyiIWqYh035RUSE+pcxkNxzDa3B0VxN7TIzEE9wrRH0xRsaJc8hX3bBI3Nl3e5uYtZo8MFThro/HThd/q6E+D3y6WCwPebk/njok0jk0EgwLcRbfQjcixp7oN4Wz0aJ6DFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K5f8MIJz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K5f8MIJz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E04C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759344593;
	bh=BPbej4iSpKuFZaDx7glMRwBaBt4AXMnY0aZCCgfkeEU=;
	h=To:Subject:From:Date:From;
	b=K5f8MIJz+DQFUoMfmHZTbsMT+ZBCYdkkS388wxzaPIcxQiofXxcDTBMdQnzxoqQRL
	 hJafa/Nh9rfVyarKIbHNoLyxZ0MZEbzE7HIMmrg5CIBm88dU7mRsaLo+qlnAmmv5BU
	 IFtVJMNI2OP/7zHr4mMe3nOLSuHOdbu3cSUvpWIP20j3yAIYiZj8za+H5I5tsBAFNb
	 sLEF1EgMZUvg5Gh+VEZaXYmvZ0y4v3L08XtGh3RxYKFq4IdhX720CLDzpFWXHO0vVH
	 KHzDYe/uDehSH5UbIsV1m66LuNuUgBKqYz+zvbpJu6LkS3XxwnGMAFdNv6sMOp48Q6
	 n2DPDSDZotcng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96610CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175934459358.15211.17525856883632432455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49751d8d3655cec50a4759638efc903b4063fefdb3ee7b9277a66698744ea8db
Date: Wed, 01 Oct 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759344593
