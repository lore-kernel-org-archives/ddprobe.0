Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209591E1C11
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771151094; cv=none; b=PzZSrb7j3/EQQixSH3w8P4OMGIqRB+1XDaRwYzOfw+JJHxADrugNsTFmQxXGt+6opoYyxHGA3hoj3W3IVGW2N5QD2S6MPBjvTyUVVUq+CJN0iKQj+5pCpx3REfpjHZgMpzMV8+wrQ9ld+dGwynT08wfiYgrhBVrEyDpvCCTtEk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771151094; c=relaxed/simple;
	bh=nxJOWo3uMiu7BnD18oU8FWpLlRqV7bTBB/s4PTrQwlc=;
	h=To:Subject:From:Message-Id:Date; b=bLtRfbWCQsVpkKyT5UBh1H9iajFySxmmJ6sPDWv3ZlFvzcXrraIPXLVMITQ2J54qlTmqmrKYLX2Oy7jVTPXgmO/PjXR8wjiZkslBufSX9Yl9HBPl/Izz7e2oit6pUmVUg+dbZV9WoCOuKewE/F3Z6nL0iecHkpGJL8D7S6d2adE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t0pE3/P3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t0pE3/P3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B29DCC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771151093;
	bh=nxJOWo3uMiu7BnD18oU8FWpLlRqV7bTBB/s4PTrQwlc=;
	h=To:Subject:From:Date:From;
	b=t0pE3/P3XjjiA2rmLdQ5LkNNMkNOA+aJsylsQGiD0i3nhX2ggOGywrHYauDOX3+Fy
	 +R3kAxWFAlH7LB96VVCAvFALLzhkX9G/kVI0iEH3yllBiL3cuexxgIGk5mWjc6WrCr
	 HsrEMbI6LQUTtmO4BhZ2dC/BBvaGVi/88ZJxvUX+jlhtsXViMxXkz/Mo88vzAi/q2u
	 If1RQhVJ8hvwmJv48aaP0Fga2ELHu8SIO+Tcmsh5kIzAd33T1fiiKs0PqjVyI+L203
	 GLmynTDGGbvkL/56slKidhJZfdI60ULDbvx+TtOPWU2I6J690T1hK82dVgfXPukWSr
	 9X2nZwBKxszzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A715EF5870
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177115109359.12548.1073025036472321827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20a54ae2a9112bf2f896ef0aa2a05bc3b965e2707c5b19d22b59ea09df35546b
Date: Sun, 15 Feb 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771151093
