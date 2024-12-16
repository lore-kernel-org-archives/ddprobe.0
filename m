Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283AD8BE8
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734312954; cv=none; b=DAHVs+bTj3gwhf7kCEzsfaxcGx1I0s9LKr05ubwSx5aTVCP7iQyivD0/JSmVloO4CMwD2nKje92rzk+tmxDHnNBBNhqTPLj5NWjOYqeViM44CqXabxWIMe2/xG7So5OQmONGCNvftO+LyNebxkKuSqVd0WRDWz1ZJ8D1rmpnkbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734312954; c=relaxed/simple;
	bh=UkbHIxSTi0EyiMu3AzJgPB9sX0Bm/GKRP5OGjnrywLc=;
	h=To:Subject:From:Message-Id:Date; b=reDjcv8mX/heV8c6xzob9de6zrkxkZ2/Y+UduVge9jk8yxZtKANzBJxDUsdSHQsbe2Z58FsifWnXm/8vv0Zaf+PeXw7t63HRyUuKtR29c8leD7/4llt+E+7Fw+apwK7g9dKfca5h0QZgeQbk0uE3uJQ2DO4H6ThUFbVi6833vLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qct6j6xJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qct6j6xJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC26EC4CECE
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734312953;
	bh=UkbHIxSTi0EyiMu3AzJgPB9sX0Bm/GKRP5OGjnrywLc=;
	h=To:Subject:From:Date:From;
	b=qct6j6xJ+KoIQXK+QhL2IhhM7qpE7kIh0uHbdR4JIwsM0lHRujs8ReUllTaD+tCSb
	 VUdg3o59wAta2iHa6663ravXMT2DuaAAZKYPfYDe7g5enYk1e5btLRSG37JCy5zx7D
	 bVg2XG+y8V7zwYEYnHS6co10Q1UXDc2T/PjdX7piKhxrgDusTk8t1xUI245ld6vo53
	 PCPId0kZjXqR06HYtzfU6umTjqt7JtgqWUxjF6a3LS9EfRtQ91b94uo9zcnkCrmPA1
	 lQukHewKq4bCDc3TuuB1xGNRQtpOz3S+Qjop9Vk20KtCzr6L8d8TKNxaLapCGKif5U
	 QLDbvOdTxSKqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E10E7716A
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173431295358.14677.17813870824886917836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24350518e90e8e6c7c225d633b4690bfcfaa17cd046365cd99296ad0eee07738
Date: Mon, 16 Dec 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734312953
