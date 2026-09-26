Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3389D3BB57
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790415634; cv=none; b=uwv4VEkTOcxmjwxhLPbc7EdqRpFIStXup3zpH3HTC5ng7lEAK2DFHRmACAI8uAyY+yud3qAUKm8RAbXGslW1ymIP9OkloOHrCGDnIfhE8fztKFOguLprLZ/etS6lwCFhFKZiJi2oF0ODVZhSGpYTwS0tgXhmxwgziTZ27c3fC9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790415634; c=relaxed/simple;
	bh=8ZGJ/u9ZfbCtbY5Epie/04KS9cwMKUnSP3lm+zVMlYs=;
	h=To:Subject:From:Message-Id:Date; b=Pq8DlZBn9xLGjPdV6ZtYo6VOblfx8FB+JLg4KHnBJnBRNP9AwYRdvAQFvurVitqAk/a+n67XzyfPSpW98o75c5sqcXmfOXlHgSBz8x2rzEcVqiqNvyO1ChyALQi/p/xDN+/y6FGRRQ0Qtfp5RSOdJ+/nQ4U0n4XWaIMll3SO/O8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dy7yjUsY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dy7yjUsY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0734C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790415633;
	bh=8ZGJ/u9ZfbCtbY5Epie/04KS9cwMKUnSP3lm+zVMlYs=;
	h=To:Subject:From:Date:From;
	b=Dy7yjUsYGlZMQNHt26iqYlRir9R3XzraK/RC1JtQyIJW16jBvCT8EzifHJbii6OVi
	 h8BMnXAsxgYdzWs4RY14AgvP9MMqaBb4ZHBeRHR9Q6O0J/M78DUouHLcooDY5EmHuC
	 hLRqcTbJb9e1l63yBHgkpRqFbHmGVjYaUL4CIkAhhoAx6PsL7qkjgQ20v4FAZBFGZV
	 tF5axDF3+5NEKhWpjXVV9fh3uSvkAnzC7bxnBUn+iZIs4AT/luKRavn+Y+PDYIAZ4V
	 v9gKCY/iUa+4VSWh3gHUFlRBvh/+TPJTOEw8AgOsXQCSFSS6GRcOSyrl7mzpKYCo//
	 lwrTenfKbetlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9777C98328
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179041563368.27379.15763755046281269545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2db3b5da1434efbd705fcc130ae1068c868243362d8d279644877c8f230cc2be
Date: Sat, 26 Sep 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790415633
