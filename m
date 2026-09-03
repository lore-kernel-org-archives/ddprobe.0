Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 542CD3B28D
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788478234; cv=none; b=EgcTvpl90IRbdzHc4uogF0Lw6OR3VOy2RRNN+IxrZ8xS9NMZCaCQ3q3wPj8mAaD4GRymR9gAqwIWd8CEogI/MN+AjpbaK6HC6R8JfH+VUvt2D15JKdmSFiRuXxhHOvl1wJSN/I8j6+GGDBf3W92P37/Y6pgTnLtrODeg7bPBcG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788478234; c=relaxed/simple;
	bh=l/CUH56s50SpdiCGcTFaxxCMvXvs5sgDnoqMFPkyyCQ=;
	h=To:Subject:From:Message-Id:Date; b=T5lKND5q+8nJqoa28Mckx/fRPZyDqn27Ll4RvWn/+PwHz/gdsJDkBZkvUu1ntB2dELTvE23klGBZk8LD7pXS7QgcB778bUvYrXUZzppxZd6mE3TfkIkaSIKUpDw0ue00akeGJ5qIape7t7ZUmLrJrDWn/K4k6M4hTn6weSPNGss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KrAgi+2Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KrAgi+2Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D62D2C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788478233;
	bh=l/CUH56s50SpdiCGcTFaxxCMvXvs5sgDnoqMFPkyyCQ=;
	h=To:Subject:From:Date:From;
	b=KrAgi+2Zm8ytGytmNMguo0jHu4PWytiW/R4/k7XeMOT1VZT8BYAou8juHkuXJDVmU
	 EapXIEngmtyidXskCJmplwz+oBs1613wkYJenJ/VVuVQfk5r5OaNVeWh5+0afSv95g
	 q2mgzKY+BxUe0ax5lGPp7ztoW80fW4ncDjJ/p4hBC4v4wQ72qGP5+/B8fOgtFJ1K8s
	 USP3kW1mTNnXZLbru71Ak67uhm/0McYW5yfzWF2nYmG5O3BuZsxfB//4KQem4dtEKN
	 RvrkPf6dFasnrrx8tU52EW1dfLLQfQk5vgCP9ivwVR1SmoOwv+Fmxp5+FMqw9Q2AjM
	 aLi/iOcibA7dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21FAC624D6
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178847823369.17943.2611491874726947874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f21bcd8ac1ab7d290ace831465755d4f9a68e70bedb47b9fd2528189c71a4a5
Date: Thu, 03 Sep 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788478233
