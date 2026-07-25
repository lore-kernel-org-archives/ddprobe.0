Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB4828D8D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784995834; cv=none; b=OEF1wA8/8rMWjm5Xs4cqZc2TUXKowz7jx2DbPPhTVWtwNk3UiNXfxZuOgGaiGzXMaegkTwY0kFWOWvjR1+lr8R+H+JMocYNCboh5CEl6djRdhl4xrAi/ql0D1PUw6eI04J5ioCYjDWdO7xLjLkonpMTRN6Eod6CdpWhF6gUqfPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784995834; c=relaxed/simple;
	bh=Q/o4veIEC79eE4NnuhdPlOjli9t4tTMJhjfA4GTh/Us=;
	h=To:Subject:From:Message-Id:Date; b=uBj+DeDXT00d1KH8FbqOX55pogJ/S9gLSRb9Ml75AhVQwVStb3001aTOC5J3MO0kTF6r/iwD5rQSXYzv9cK3o4xPYflIbeFZu8NkZW5BC5Qi5mdFqyfocYI6eRWdiYmhcvr5KMe0xMzHWtBRPhujiGT0DW3gvMpCUW/ctRZD+Xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MVuTk/HD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MVuTk/HD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F29C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784995833;
	bh=Q/o4veIEC79eE4NnuhdPlOjli9t4tTMJhjfA4GTh/Us=;
	h=To:Subject:From:Date:From;
	b=MVuTk/HDXZl8d0vWvmJmPvbsWK6wrifBy91yXNJJML2MF6y5ksWi6IcZFxMkH4sAR
	 Z1F8lmzg11o6cY6sWLQLmNsCQw9OAEqKYllfZb63pzgGY8lF1+fsN0Kmk2lEQHLFP4
	 OP2rpdZdeOFFVK+M0ZoGSdaCrBdsZ6NOSbhPWsjoSyVpb7B5F8YIGB4f+jMdPRkn+r
	 NmRla/Ghg4Z3F5ftWU8M+AyPmbY+nvJ/dt+t+mLRKpLUwtaEo/yUGbKuS/yfpNoUUS
	 fMCsqVVgoNXKdfcom/ZzZx1a3Jo8DdCu7vGUP/EfXQnlHvd29dYeZGrU6kvsG7fL0x
	 swNNe9y2M1vkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF43AC531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178499583368.14341.12824032747978749956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 113b3d9db0f7d5370f738f0fb6f24f26fc430a46339d04605e09772d825529ef
Date: Sat, 25 Jul 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784995833
