Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D7A2F8EB4
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 18:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779127234; cv=none; b=A1vWXej6Z+jyiBc/D/erFRiKvV+n4S+zOVBtvSbuj0/8xtAtVIzFEkLmQM2pdGJkSbbFwvPjygHDhxW7YKZDppuea9yKodFkNt2wBbKdX4m6aQcpM/RFzftTr0cALn5lZqJbJs2J8niLtnUqsbMpBfpD8OrSbVtJnD4IUrw/qjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779127234; c=relaxed/simple;
	bh=G4GUGs97wcaTM7Zucb5V6te2+o4nVF5FkKPP8vGb3rg=;
	h=To:Subject:From:Message-Id:Date; b=R/NyMDveeWlsTpAP8c0hjex1KXsRbmoMT0YiwNmVoZ8bSk+2mMwYVlX4CufHLsKphaHCwdMqO75YoARqZsP21NG+qIPxFTlLwL+XOFLom7uYfva+rlnz+xuXjDTBv5Ed6WZH75Wy9lH/UR94nBbj86pQAUnV3QqGNPljG9MHSHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=krRcbxoQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="krRcbxoQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC7AC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779127233;
	bh=G4GUGs97wcaTM7Zucb5V6te2+o4nVF5FkKPP8vGb3rg=;
	h=To:Subject:From:Date:From;
	b=krRcbxoQ3aJJJs7ASaEUOdwwzAX3KGz4m3h2fGDw1oXrgny0K56uf6DQeR/PSMIDY
	 RddV6DgfROqieyG8Zjwi2DIfQVxteh+9CTH6lpG0opHmfowVvN8ANuviIHhkDy+Fm9
	 V2ubWc6RsnlX4I/X7tTf2WKcjcUbwAKtxxqR2INMHIZ0ILaYUYIsN3O9ouLEhqx5vD
	 QV1yFLyGuMJVNFiWSZoq9kO9PE447tiB605a6Lv0yaVM88Zp+yLdi2hHIvjxl/z8oM
	 cZ4JzhSE91s+uVPnUf4NkEu8V29i8LmhP8XtKoB0v5kIjkipVB3qpRQglVcO60VH63
	 EWoEtNDdxsBxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC64FCD4F4A
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177912723369.6954.1232241169216860431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd7e926d9b43b8f85575d3032905c7e24372960c0616598e31c7bf403b8c8391
Date: Mon, 18 May 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779127233
