Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B98AD23
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749025794; cv=none; b=c5sSODEgBEHrx/ohFKRCcTPdP/gS95Z1BaeipS+3MkTUfkN8WorwXp1b8IbVNBYDVfzB4Jox8U4voPET/BBqP9jub3qikJXYKAtbaHuQobzoARD3XlNY6XroODbGyUPa7z3tDzvqquX57UI3VH80osyRAWz4WYl+dIKWcsa0cWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749025794; c=relaxed/simple;
	bh=tOc8Bk38GyukmnNYE/rw+jd4wX0FAIpOIZs+ik2ssyI=;
	h=To:Subject:From:Message-Id:Date; b=ja/nyW+/3O+0lFlE5a8B+l7aljI0hKH8U/5k1dlLZkX0SI1VD33KXMiMY/go0ub9+dXkGCtZ5Cg9NXXOnWTIJ8LyFcIrHl0OqsH1YzHi5vDji8rCAALqLVhJ+eDoKKx6vrOppq3VfL323/c8cyiCD/pSVlaXzZBSq0NtL8WozAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uvl/X3GP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uvl/X3GP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0D1C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749025793;
	bh=tOc8Bk38GyukmnNYE/rw+jd4wX0FAIpOIZs+ik2ssyI=;
	h=To:Subject:From:Date:From;
	b=Uvl/X3GP7UFpYo42iQAZH5vH4kkaEv7aH5WPX+LOAB/PxxHh2A2DATItkfsMFNsDJ
	 Hc4EpaHNnse1wJTTzMuHcXC+VDU74h6I9e/4m1E9aEPewYx0GyWY/ScFqULVrqts7E
	 YNgDtNbnv3c9ld43+4qDjMTrEvaXf5pHyWTMHgGmXNc78zUECAl+Zn0e8NFg6x4c+k
	 ojLmqpUWcqyo1RxRWzU1ZTmOvSyxwYTsDqH4vNorbXLri51yTnCX2n/qjR3S6ICzPw
	 qKY91l+voNWOlUSfsXgi5gHU+YyA/UNZHZd690loVNbpJV8jIjPUJoYD8HVIsH2D5l
	 SKo18FGq60JFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C394C5B552
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174902579362.24430.5870277319462101965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53223ae1efd26eeecaf34a24de2d8ded04686063f45b23f98d9101eec8b3b553
Date: Wed, 04 Jun 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749025793
