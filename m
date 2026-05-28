Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391E7309F1D
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 22:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780005754; cv=none; b=dFOYozYDBlDiqA4Iz5a9Lx//85Yi1qHwVJf6NfC2gh77yl/gbf1rPaH4blMkWxAiYPmg64BbZ971U1igUChZ7GyYjOrt8NRLD7G+dosoH7M0NpNXn9BztDGFKmPLwHWIMakX6eKcjiBXjbkrAUr8G6XDR3PmRMTzD2/3JYxkQFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780005754; c=relaxed/simple;
	bh=EAr1AqIjOYzlYSdtnWelVsZ/Z256vO6KJyPV5js9eCw=;
	h=To:Subject:From:Message-Id:Date; b=BO9Z74N0zI96tfzExw7s+7zM4GJf7NmlqpXgfiWCa06YOjmB/y4p/3uZanHGuLE5ArqWMgM3Nk03A5aXglJN1hljpJYQcsGfMtG5kSJ9AmB5EASG5+FTSR7qflN8xYQIkwU7b+UhQlYKEvxsZTsShh3j80SE8VzkQ6HPfl8wP6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bCq89CYK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bCq89CYK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1AE7C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 22:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780005753;
	bh=EAr1AqIjOYzlYSdtnWelVsZ/Z256vO6KJyPV5js9eCw=;
	h=To:Subject:From:Date:From;
	b=bCq89CYKfxBwXvUlDX8FwgGWPRDuAYRG9mzjQHasrbUpJhMkFUByvVFDe0CD3hiqh
	 lAfkbM+yTe4MkN4aIjyu0EhcS/rD4TZRQKpWjKVX34k7yABBwNtUOFd7y4UFw/xJZq
	 TDgSjDen6O5dbkF7UYGKi4Rj2AVjYJL7spqpvboKs1XEIwb09vnd+NdCC3lDyHY/QL
	 WUN4VMqMi8ZATaruoOAF7WetbxMvGkcwbZEoJu4dv0rjxsfSdF8T/kVt650ZZ5mzdF
	 RegluOSUi51TtbqSqlcP89v5VL6X+CF1drmKF7VfQErvE6Hf5Vsa6dgQeRGwxb/U7p
	 0D71WqIr7cNkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93B2CD5BD5
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 22:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178000575368.27399.2145227349078270416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a57cbf471d26559436adaebbc49162775aa8b9558da5bc84b639c0ac43675611
Date: Thu, 28 May 2026 22:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780005753
