Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C21345ED8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789856434; cv=none; b=Wut0qeiVwCvcWBV8gN5anKm73CUDsS+uanVf7Olm5R7FX3kj3IMrBuewGB/SYrhc1NErRNKZDRr3tRlnlJ1qDw+9FdvpNqb7iIiEM5oRXyrXOSgcoblhBs2EDNqESEDw13NbHe3NIkJoc96am2+nVA0JbCw3NCi0/lNCTrZowaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789856434; c=relaxed/simple;
	bh=CkMZgqsFv+vnjJoXrTH4OLuP3Hgp7s9n3bSxkO/VVF8=;
	h=To:Subject:From:Message-Id:Date; b=CitVjsPsTyR6L30pYOaIfH1OQaMk583Q8kC619nXWa7sozVFYvUqfTDXCVt0Ucy28mu10N5cV03V9RJr6jIc0Y2FbWqmjCDkv0qWfypsHe7UG5zlpOYmfiduMnhqWRfOxQNN3weCxk8FE8ts5+UACtik+w1mFlqDzTr3bKRPRjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q6hPAjlP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q6hPAjlP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4020C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789856433;
	bh=CkMZgqsFv+vnjJoXrTH4OLuP3Hgp7s9n3bSxkO/VVF8=;
	h=To:Subject:From:Date:From;
	b=q6hPAjlP7JXSlrwTOR8ikvFBhl6K0bI8XlKli+aFuF+zPLTTr7uUp+/8wgFTudWwb
	 JrElnT0Ln45vUsiuqH6TA9Bfms/jYCyjnwuRC9KtEySibImk55cenWIkYVZo/Q7BMs
	 d+n4o9iEKiJzoDrPl6T9OYiKYqQ7il5KS0hZqMG76ooQpaseD4aRV/C6im/wBGcPDT
	 6rvXptiqkqpKxM5EYlWKQOcAyOxZorszuHSlRgu+Z0rO8leX/vVk1kZRlR843d+9M3
	 NzsQzyhZvOO3zMdzv1MNQqHQkgEqXT/jAXydN34VzsY+bd6Xxf71sGhFugci7XOZ5t
	 X8ZWzZ2qrf5eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE28C982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178985643368.30864.18114175778174565949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a70ea0e15a52dace0823ab2f61f4def8624a88646c3290d26717b70d968e7e9
Date: Sat, 19 Sep 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789856433
