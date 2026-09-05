Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B97A30DD10
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788608434; cv=none; b=ttQaYpHClZA8P/Tz5ZbUs/J4KCqou+BGd2ZpVMSAdXbCKl8rKCYtenmD2z9j8h3GZpo/247B01zHZ3cM74KuPIJPcQGLIyGToo0pgHbzTO0tlyACqUMB/u24BbrsU3hoMF5UZYFAxjE/Xgl7uQ5lvEG/VxB/KwT5/PGCh0MBDgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788608434; c=relaxed/simple;
	bh=InFaZuPKcK9RfoMfstVuCH2bhSvKRExFzpIU1hH29J4=;
	h=To:Subject:From:Message-Id:Date; b=uCpiW/Pb8hz3SycZiKmKYLffPhGeacZ0ZvJJ0lFNgtq9QnUM6b/6EJjsfZaSdV9u6JAxuR5zem7VvwteN08lE5V721buzofv+RUpwGzZ+MPdNYnegPuM9SxCSg6SoOAf+hiOoJokOrNj+zBCYE8rtmzJ5BPxrOuQlN2QJG0UZas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b6B0F7WA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6B0F7WA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC639C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788608433;
	bh=InFaZuPKcK9RfoMfstVuCH2bhSvKRExFzpIU1hH29J4=;
	h=To:Subject:From:Date:From;
	b=b6B0F7WAWNvFThJ0CdI+/372bifrcz2jRDgBJyU9RYWqK4OsIjA+mTxSepHOkqm+I
	 xvzFNpSHW9QWi6D36jDi8A7c/42ldpfZcYd+oSBcfL9qcR19Oy805FsLu14jDGqYms
	 NQlx8oOj7QqClM8fOZxMD2c5mZ3Y412Xy3gqxgLOQMy8NgO3xIXdnrOSWYt9Vdd8zJ
	 3iYkh0Lb87Wrh8Ddo9iEB8L/6LLFz4rh45i2ZtvzISGhqbENMfhJFiBhq2eLatwx58
	 /g5ySzjbx64Ye5HUG3UTspCKG+4yjP9dX8tC+lFCWd/J2HnlW/toM44St8WLYY0UBT
	 bTKxX5cmSOLWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA342C624D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178860843368.11315.17977392146074818778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dacd00b3b1cec5fc2ac7772e5bfeb384622295db9a758b279a7ffcc53f457d60
Date: Sat, 05 Sep 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788608433
