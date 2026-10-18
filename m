Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D97C1F936
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792353634; cv=none; b=lOnXnTv2HdaNXMrWY1PrdeUi2Q0QMg5KDwlmddvrLXdHGuaPnESqimi16BfiKX9JlUl4ZrnTUoxYZHaCWF2zkrppSsG3gCnhyPqsYfF4QMKmk4MWOZZpZR5GltWRUa9jSCkAB/BI4D5EOujfffavuDJyrl5eU2ZLDiniW6H/p/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792353634; c=relaxed/simple;
	bh=vOAL7D5FbNR/NBrnKa2QBh6kq2uMADWRX7xRCG4p6So=;
	h=To:Subject:From:Message-Id:Date; b=XO7elcYuBUU+GMtobnnDDQimMUOQOy/i8/kCdvcTfvbab/eqyYA8mWn6zuxfyq4e7x/mHBiukrAUG+iu0R5OolvUync3iL1Hpi1F/wGO/bYKKdibI0cypHjHWQGGpRgsDNsTHw1CGnL7mXoUc4YbAAxDG1CYXUGk4Hl21kmJAg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UvSFts2J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UvSFts2J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F2DC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792353633;
	bh=vOAL7D5FbNR/NBrnKa2QBh6kq2uMADWRX7xRCG4p6So=;
	h=To:Subject:From:Date:From;
	b=UvSFts2JpLgqozrlJ8gsuSZ8DfYZs8XNz2FvA2XH3CONjYo0ldoYKSDuGnHjUB0pa
	 fx1PXwILkDalpI8Gxz0vaLpo9HxiSbbyI89awfybrjFcgGorncF/D64nQgucKkY1C2
	 aX08Fg6Dygoj3QMptZ+LZg3QvBCvUN97EKAzvNWwvPYs5LZ6nhz13gWNwa/Ad3dpwI
	 sx8YsEHRM4Dc47e59+R5RCtC2O2Pt/YZQuXl/RNnma26eCeWbaAPA/LJsXGTzYdQFm
	 sajr2ZoumCx8ictG2kH4WAwSM2ZMlymJnuWRJbwcjkR5jMUTGMZTgmv43rB5e1lfP4
	 1NYoRvtzNWC3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBC4CCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179235363369.13485.16461007247957890715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 086f1aa6aaebfb455832a8a622b444cca938b384f3d9ba6552b3a1077c1a4db0
Date: Sun, 18 Oct 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792353633
