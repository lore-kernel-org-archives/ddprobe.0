Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5617918AEA
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722016554; cv=none; b=Jq5ZP6lFFyQLxkDf+im0LgoEL2IZgMe5g1JZEWD4PJR2vfN1U1Na67gkAOfGVrC84yzTk6gUNWBh1GDWtn+smu/521iCd/4LBnUL2kX+t6mWmXMp7BJIFsHKoATe4JN2mCAF7thkjy+ufvYmnitUNgH5atpqxQy9JtrCzarU944=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722016554; c=relaxed/simple;
	bh=DXeUQ5sI3LtGtfflNBT6x3pXQlvQQE8Dm/Zn61nhcyo=;
	h=To:Subject:From:Message-Id:Date; b=tJ+NI/2Zrj6mrLYH5pXvL+TfMZcdnDgJV4iVZ+Rk2vbuH9E/dUNlYi4evGhP5q2xcJE5aCFyzR4P7ISyqOFgIl0UTbRMvblYhRC0dBUwWPaeUrReYuhwBSgxslcAgMLr+nnrYv56N2Omqf/rxCOPw8y2k+H4PBOejWNxYsrAvMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r1AgWXhe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r1AgWXhe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD148C4AF09
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722016553;
	bh=DXeUQ5sI3LtGtfflNBT6x3pXQlvQQE8Dm/Zn61nhcyo=;
	h=To:Subject:From:Date:From;
	b=r1AgWXheEffsusiUy2fKIVKGVyNlq8ffghvD0JWvLWmQEiDBEOT0xGici3zfnsQIW
	 hUdFo5FPWySkFj8buvPtl+oN0VePbgp2QO343HtS8Z+xh66aCJTN54VQc4a57Ri/Vp
	 bWMiam2MkgUc5JEhcv+NK/jsVJV/ql8BE7YC8vtxf9LP3+25YFXIWHazleJ5djA16M
	 hTugfFkmzMhCOMMuoVWCq06qwf3ZO1o9cixLlJTEszW1m3ngS/7UvFfqiX/IDwuBJ2
	 pXhh9rKN9amXgQ2X2/2Nn030fhgjLj2mxNnQrfhi9ILuMc25ZXKW7FBQvWbZOPkPys
	 5DMhKHVWzQofA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A41A1C3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172201655363.8319.1709223442281754281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d010fc26e2ab1d1fae54222d2bde43422f8261544fde83c88dc824bc7fbd85c
Date: Fri, 26 Jul 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722016553
