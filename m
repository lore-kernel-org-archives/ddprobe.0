Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15BF5347C7
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 17:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779731554; cv=none; b=QWRWXc3YFM6tnEo1BhSwVDAvi/caJ4yqtUjDuJQrrgOitfJXtBVYLumy3WFbfJ6W1A8BGroCfLPwKEqU7Or/tH0FBboOyWUDLCuZwseyTpi0eoVaZiHxYgZpecokdmtMJtWauInYz1j9WXCU/AdpFsPKwCG+PN4fQNqQqufZpcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779731554; c=relaxed/simple;
	bh=7F04pvD2cgAq+0aWlE+PueILmcV9j5//uyKm09BGGgA=;
	h=To:Subject:From:Message-Id:Date; b=CrWo0otx9sbFmac5gBWJisULYUEae2d3LOhBQ2pUml80r+GDkIE3jgW7moNtwLXzdBWBc48JfLhcHj5dwI6BcaXYkiDDV8ZE+oavVuSPVgleahv19HlNEkMoMVqoV2PgEAoMhpUq0pGSgzWezZryVyQ9aqMaB0c4qeviWFTgVnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tth1R7sI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tth1R7sI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6819C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 17:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779731553;
	bh=7F04pvD2cgAq+0aWlE+PueILmcV9j5//uyKm09BGGgA=;
	h=To:Subject:From:Date:From;
	b=Tth1R7sIfOxoRIiChM6LBXNJO/q539jjSHQYLG5Qv4n+1beZu9GkseyQQDDKroNRx
	 IZ9Q4/Ho8ZwS15EPn5FnDAfhqOy8842lOApa0kuO/xpEPl22e6wWIqn58kd9eQeeAx
	 aKavS8fSO60/qhyjacv3eIvSMcLTeO6YqlB237yyP5eWGNre1HWmJr9GNAuWAK9w6a
	 eZEsBYzhasF2HIeIHBbsiUs1WHzr98sLlLFu5EmyN9XB2JE+ktGqZdPDcAklKzCZTc
	 nJc+ArL3D5t2FXVvBRgMdlcJ/txSuKXPB5s4Dqlrl6BevKljKqm0itaSwm8h8MN9al
	 nd8WnW7KlEr7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7C8CD5BB1
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 17:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177973155368.14174.12197925871325714254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0875ea3e8c8db7a07632cf50ff5bfa829b531a9777eac15de04be930bf1062ec
Date: Mon, 25 May 2026 17:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779731553
