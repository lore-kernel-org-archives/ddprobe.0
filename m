Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F39011F0E3E
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753408794; cv=none; b=hpO1N0H/oI/TBzOFFLASjFRZ88xkNghn2LUDUskCywBHJmSFlNFYxqBs+S0kxUshD7eBf9pbRsub1NxTBEifJbYE+RSy2agTtGRWtkZx9WoB5yyxqGwFwycy/AvQAWQS5BDlQ4JJZ5izCFlHtZ5lUVKaAFPXHeLHqTw0h/lt4Ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753408794; c=relaxed/simple;
	bh=OGmHF5KOeKWsFwRned1OGlHlMraBYbVbdBjwzCQsty4=;
	h=To:Subject:From:Message-Id:Date; b=UjIWFF1YD9ju4JV+azeUJYVLDCRXsGE5VbH/gzV+wEesKw3JimTOi+ivLJ8o71dr8f/7lih6sGz9ww2LHKQEKeXU5/e5idiWsVU5zSXDXgUxW+nhwrjF6z7vtKjcoCWNRyK75YwUOry48Uz8CwyKqa2FFNQXGVNJtEVaGDtghKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jWHwcomY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jWHwcomY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07D9C4CEF6
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753408793;
	bh=OGmHF5KOeKWsFwRned1OGlHlMraBYbVbdBjwzCQsty4=;
	h=To:Subject:From:Date:From;
	b=jWHwcomY+ABYsLKAK1b5Dm5c6dGYNsR4gEkcbjpc8mTcHycbN1KUrrt+VG5XPqVUC
	 HTrnY9BAt3sY1TVeDTjhdPiQubTPCk4qPjl2cmvSc9unJLgrDgbF+UF4LMyXhzWH0Y
	 cQjZ18aGoU6b8RX+RVNkItqoVJRp66J3Vbkc+gv7SWZOsHcvAbkkQNRDlS8KU6f4IV
	 555+8kMw32gSURggdmt0q9PA90Nzg/o26a/yjdIRmkAUhQAHbKRlqpxy4ckFNkYvZt
	 LtErmrFVsAzpEjNmerco74C9MuBwrj/xFhvjFIbG+r8jD1Sn7SXV29v9LcgWAlvI4L
	 smJj4Wwojg0qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9180FC83F26
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175340879357.31073.16537756262923111427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccc6f806b229e8dd8cbddeeb95e411e500a1d8a603f9e097eebfde0ab84ad683
Date: Fri, 25 Jul 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753408793
