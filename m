Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC1A23D29A
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754846994; cv=none; b=hI9zeB/DhoxlA43GUkf0VCBO4SYvAGmmU/zMYvr/2pkZypxZZXiuefSbAhkVF0+nnWfoOEyZLQGT2/smB1hVtCKj5+I9fRRA3t6EWcboavfhFiOPUJbkjK7XGvn+mMp6xaX6kY6i1WB/O9SQcISHH6XZKO/iokSTZ02pl1WO1uA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754846994; c=relaxed/simple;
	bh=M1V+dPSWAYEijT7gk5JGiJT43P6WBXBD3DjjyCvUgqA=;
	h=To:Subject:From:Message-Id:Date; b=oqdJywDD94tdLZ0Hob2u4ctRzI2PAojsRSbaWuYJ1iFWiarMyxISSFZKcsFBCnf0joIf7Zxy7LTX/6zVORn2xzoFtO5foDeaLVQpNorx2Zo0eExbjQwEuli29E6B3IOnna9sAjedX9rjQHjq6p6oZQkfZuxYtW76YJvHtRWECCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mK7fGKoz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mK7fGKoz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76F8C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754846993;
	bh=M1V+dPSWAYEijT7gk5JGiJT43P6WBXBD3DjjyCvUgqA=;
	h=To:Subject:From:Date:From;
	b=mK7fGKoz6xM6MGuUmhJPB7ReKo3oUCCL2CCEpUiQkRJa+8qHykZApMWX5fr6sU6WS
	 UwdqbU4tewSWGzjSDEfyq4ljnansYfcOssjdCXCzfrW5NzjnXyBq7lMV6Jcd1FLYvy
	 ECzSW4gCA+DN1bk1aHIkvJsq15Gu/WWGu1ziUUr/aqc9pjwKRtx5m14UtxyC8c0cZD
	 LzKyFQoP8uLIfEE6lX6j4GxtZTZrVYbpEpfmsV3hk4ZXec5yX/bVwgeUb2D/8Mzl6K
	 TvEYUl6B6+S6sgQcDD7K2PKf4uNotSFlq5iiNwETc+fEaRekJSYQvT1f7nrnqlPKSj
	 Lr9cei6ewjGIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9664BC87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175484699359.5914.1255467461237466039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f3a1f1c3fe4af8b0886cf8e3ca1a0b64b13be49c02508bd40cad57518b5f3cb
Date: Sun, 10 Aug 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754846993
