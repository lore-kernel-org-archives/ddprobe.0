Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217832E06D2
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770159234; cv=none; b=LKkwHZTggPwe26zuKtOE9YmIioVel7o1mUBhQu4m9gf7cQ9PWQXUF3cYcVG58SPFz+gpKe0DI5PgWiJF7TCkcKYVmXHIKpnKOu7J2v8v534M0AwarmvmJBZBptMF20qE2o34ko/iDrLwtZ7pmIf2KU/P7CuHO59+XOkFzFY8arU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770159234; c=relaxed/simple;
	bh=7+jAVJ9lIjy9H5+whKlImI+GcwkKl0sn1irJWDCQ66g=;
	h=To:Subject:From:Message-Id:Date; b=N6usOi7Gf3bxp9jFGf3NPNqM5mJzQZ2vTlW3p23GFTczVn1kY6EDKoe3RvW1wVJluZxh39QgiqkpGCYYnBmQHwMlVtKopmE07DZMwPCvAJLYXbmu4an1G3c5AGTIiFjzHFt/p9P1mD06sGTtWOkHKsk5Id9ghRy6Yc+5jnJbCx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LgAMZfWP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LgAMZfWP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF7A3C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770159233;
	bh=7+jAVJ9lIjy9H5+whKlImI+GcwkKl0sn1irJWDCQ66g=;
	h=To:Subject:From:Date:From;
	b=LgAMZfWP2+tN22tk8WhMLQ0T+G9UY53S1I792IeMZEUwtqTafZFgCDhaoNXxe+fPN
	 jTmblNeXTudMCFgoQ0r/xy7proGvrQSkyZPzq4L8r8iFVzS8ObdvhQmMSmKFSAvjIG
	 psxe5gJ6dNOCPYfOcncodwA4bWeu31l1kw7UW8TyI8msbTTyywfMjUdESXzIcXnIZl
	 WcuPsaZUUdVBTWJ3Fj/s7dW41SwLHivtmYjRlqAV5nw2xtUwWSyJNhQk9Lu8f0DP98
	 2xywlx3UMAhAu6UD5QCQF5EX3ywm0Mq2V5p0HrYz6r9yrbCFcxBZ9aivjF8uUEJ9s7
	 d8qH3oBjlsAvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E7EFE8B377
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177015923363.6209.10884554319567604420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a7b977cf00a56b84c873f2732023ab9406a335b705cdc26c7153d58d98302cf
Date: Tue, 03 Feb 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770159233
