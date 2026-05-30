Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2682E261B9E
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 17:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780163614; cv=none; b=h35uhfYESFR00PSYpKZkbybptqaM60QRC/eBsD7DkH6SPbJOQBsh4TvlmQKPyz/6C9/JUMj8+Ql+McmtxRRVvy2fJD1IeJsc7GF3eHMN2xRpafRjo3AvIPYjFoGoqoSd/uJDatdE9qXawNjyBpYbF/ryyeVMQ09lhaCFX8joEH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780163614; c=relaxed/simple;
	bh=AkfespOu5Avsu5OU4LaXMjAOgS2gKHBKX7YWMpyikuI=;
	h=To:Subject:From:Message-Id:Date; b=ly3r2q5wjILXlTsZvvX4wFokCmZQNyD2geJd7cLeX9t1a26yvvI+zwq9d4d/qi44ifIlmYISaj9w2VIsqqfXvZit0gebvXEqsLTKcxVcqNbk02bMhPpxaSkKO8JIPzHwTuiseGhJZa9Rxq8O4nxFOSPfvFYHNPW1vKhw0Tg9ouM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HAGmk0fE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HAGmk0fE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8F87C2BCC4
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 17:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780163613;
	bh=AkfespOu5Avsu5OU4LaXMjAOgS2gKHBKX7YWMpyikuI=;
	h=To:Subject:From:Date:From;
	b=HAGmk0fENY610BmTk6+XHKGzhcDeA6jms4P62K+FoWvZt7kK/j7bEdXpYUuYkJ5Db
	 95FpB9bXvTqAGAAlvH3VKqUF3VFR/Gm4KfM7HXm5HhhqZ2kcaFXJjVmK6Mne5B+xae
	 Fh5RK9nkJNMbd5AnhqbV9xjIN5kDksDvdUlfRleFXv2e154WxH6yk/UWbBZmrhUxA0
	 rPOChB7w7gnqtyw/aoBYMTsyXRBL9HcVxoFD0YUnw3ex7IST2iPyKV12XFrXKt9EVg
	 yQRHYU1cJoT3boOC29PAEXxuH4PbpppoQ7+YAckBGrSSPC46h0UfsgwrykY9jMojBX
	 Z84r3Wu0JZRdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF68CD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 17:53:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178016361371.28103.242558153636966242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d26f6aacf6c59613828894394e0c303a1d88a09cb2e31f127a9c7d7faae657f
Date: Sat, 30 May 2026 17:53:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780163613
