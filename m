Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E801CD1F
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752523794; cv=none; b=rUnmVggU8B/q994jYGBKWhIXemFE7WhBzEGvJTQcf5Zrypo0NJPnJeW/Fn7RmPF644jko9zMllCNNMVz+xo1v2T6abCCQGWDO/JQXr6MwygfAghBlbxtpB7UiaoEFeeIBIJ+atetf37f+Kf5nxIDXV45NYl0ZTNLYA8pNV1kvE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752523794; c=relaxed/simple;
	bh=nP6xbfHAS5aN7+sdgLtypHAHpdUGVjyUFyz75II73Yk=;
	h=To:Subject:From:Message-Id:Date; b=SEj53xUH9jRZUXr/MSbe7Wp6TmRdNyNKvlvTxLt4BRBMjd2CJLgcoHZNDZEv5h6CTbOm0yluvSyS/4ZF7AAdfjkefFCci+BxBfHi9G4t0+CJADoZ5HEJm+eMGcIrOON9GUKFHiZYDiJIPXj8FraxZontZwknz4uyV6evAcJijrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PpLBkHrZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PpLBkHrZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A265FC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752523793;
	bh=nP6xbfHAS5aN7+sdgLtypHAHpdUGVjyUFyz75II73Yk=;
	h=To:Subject:From:Date:From;
	b=PpLBkHrZwRncPeCH/zm/i3W6CEHh0xSuZ6yMbu4ADuNYjANp1u4+mI/w2A0r/0ctX
	 sCEZJtmrRqi92TkF2pIUlbKEoe2m0tI5jdV1xkoLeYPvrQMAPOUUBr/x+tiaRu3ycV
	 p2gsWnurE0olhrJ55hjY7Z3KH4tjZEZNzC+DGQHePawgYcVoxfosh2r34ijc19GiTw
	 p3fm1wKy90WCJaOV8mSgE104UNdDeYUbYMcjh5OpJHnEZuLSqVQ0FN4BjdLqN/giKS
	 rxGZ0TRNjG74OefePpqlVeDFAE++9Rh8gpe1IQwmI7W7XvPZEsaajr2Gpbe72etKNE
	 L2P/P5g1+cTmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAAEC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175252379358.14000.577903704613479199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cf9173eb730110fec65474ff467e1bcd42ab19a7c50202c3b7fda45b476a831
Date: Mon, 14 Jul 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752523793
