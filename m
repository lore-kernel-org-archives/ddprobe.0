Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FC8C3B2FE4
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788498634; cv=none; b=OzJEnZ03kxnfWiY+ASixhDt9B3lmtWnYe9xfCio5aspYNy+/Gg0Ld9G+SY9yiAjZpVQjc/rm/Tg7fkafgjDvVa2n/vSaikqcAjO/fWRbQbKajXkIlWL2Z/1jcjNdTOTT3RWjtCuX2LFLOPATmeJXxh3HkiuQOnlC4bxhIZHrwQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788498634; c=relaxed/simple;
	bh=nJUkRmMTr8L+duKEX9Th2rrxlobBSMxnwKLmQ7cpHl0=;
	h=To:Subject:From:Message-Id:Date; b=ozFJ+HcV2/nO3bLOVg6tsBeTQdhiKUHWZX6POrM8XZ11vbqyOWf2obw8zm0iKfY9FDSJfCJsCyal0FdKm/uwJtYMADt97P+hIYhj9ltH9NqHotXALssHYlPqh7cHVWLVthBhdlJDqPrUXTgqNpn/esKz34sA0WLF0PP9YxT+zm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HJs4/Bv9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HJs4/Bv9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5631C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788498633;
	bh=nJUkRmMTr8L+duKEX9Th2rrxlobBSMxnwKLmQ7cpHl0=;
	h=To:Subject:From:Date:From;
	b=HJs4/Bv99fVCXAAu5AU9GfVisxQ5a2qgp3DdaSmL6vdq3ddxVMKtXCd5mz6r5xHUk
	 3rLwbBjGtmP3YBn4utwipDxlS2O6kITg4WKQHNHqLrL+Yic9OtXmZQGVqsU1ZjKXm7
	 PHl3YD/CsMfldk44UsO088eD30giAOnPmxQx1ZUCJLnYU7eKrr7MBTElr+UeOX2vom
	 bdpd4+7Ou3lOA4lnKi/FYDvOQ85zlrn90NLFvgbNB/7puZI+8mC+Sx8/pgUCFs10o5
	 SAM+J7MeLjzOjj0FS2EJXT+S0qO4ivJmGYsijsS3t/3wmF65BUZUDjdGkD/EDtkWwN
	 DvaDA9xtSxKyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE464C79F80
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178849863368.24086.13231995768444820755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 503a57f47018dff49494ad990459f70de5ccfcdbae9493c80260bacadc5284b1
Date: Fri, 04 Sep 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788498633
