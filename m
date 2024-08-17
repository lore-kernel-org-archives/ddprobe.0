Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D63F28FF
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723902354; cv=none; b=OzYht3gWK1TsMN58NorCpNTe36aeQD4Z/f+JIGYZAVFQ8xdy8+3yulnPRdw8Eu9igr+noRoMIM49mQH5SbYRk01egXeAjSHfCqHJV/NsD6Lkk/uPCt1vv4hxfkBd6ED7x4JoosA/M/CpLwohmj/uXDMum67SP+LS+FNLALiZSXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723902354; c=relaxed/simple;
	bh=KeTy/S8QIPdon/XqQJuK6Sa3NKyZfrYNYZx3OmKmib0=;
	h=To:Subject:From:Message-Id:Date; b=sqJAR00nf7Fss8thlJ12PLlApJ61b15kMpFHbxdKMBOdqCTT745kb7vCSXjEQdRjPV6ITwLNet+WxjOiX6b+moPvSyKXkkL5ZfO5SNuemiX3BS1lrszz3QO4SFHUhu9KV0eJWkT6I1bcVBrkT06gTlDqXbKIzG00XTKCY2TikZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RJBqPevK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RJBqPevK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6E31C116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723902353;
	bh=KeTy/S8QIPdon/XqQJuK6Sa3NKyZfrYNYZx3OmKmib0=;
	h=To:Subject:From:Date:From;
	b=RJBqPevK4QnYhXSsf0n0aOXVQrDGhXkK0wy1P3c96NtQ/msWFiA8RH0XAa/o1FLEf
	 QKV+sUldCx8wA8Us+Ud8MFNSKGFtfJq/RTFl5KUtKGt02jxzyIWwWZUI+NJ18NGqv7
	 FyJRUxOMPJ6fgyJ8XpZCg8POoEFtcNXZ7fVnhIfB7UKLJQEdX0DDrQE5ZSs1h0iPQq
	 bgLOurARHVjTwxC5iM3uX0hS596DnnSO8uVylVvFHnaLvOF3upOH/Lo1w7vY90ZwK1
	 HtW2Gk1bQD5TPcfKAjKj7OlSreLgArQuKc7ZEp0a7eCKiEz5Wl3Z2hssld28NDolxa
	 DcQoS2yeIop6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEEEC52D7D
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172390235369.28718.9321361819422769887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdae003df4edbdee560af1e692d1494a7bef0557524821ab838f7689bb23e7f2
Date: Sat, 17 Aug 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723902353
