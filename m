Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA46425B099
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790907035; cv=none; b=tlJ2TVHNNfZXgXQVDSeHwl5nmKz4PGuJ1pnyVHtGfMpOqan4eJaU+EVj3Cui2UltBJin61P9EyAGKGRGsM7dPHdS5udw61fd+zOJu0SYFRpzT0rxuD0luYWOf5Qon+j18U26c8g4+ng2HVzkoWXkObZVr77DOHROUz0WcWOrDso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790907035; c=relaxed/simple;
	bh=hc1MnhsJ4PgNHuOsKg8dWcksk2ObOSyjgjea7HZxZRg=;
	h=To:Subject:From:Message-Id:Date; b=IJuQ5FqlhR2NOUnBv0q74rC7jmzQCPK+clNjRo3AIN8w/sjdz0va/PFUrgPnHSu7nOb+wuxQbVxVqH3zJHDvHr4mQxQ+kUIN+FDJ9R0eZqdDDDXkQrPkAKiEByz8gtpOHIxrgNHIX92ExTJYQz2GrioJHztrRwoQJmdd4np0JZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SzTI2DFD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SzTI2DFD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 15AFDC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 02:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790907034;
	bh=hc1MnhsJ4PgNHuOsKg8dWcksk2ObOSyjgjea7HZxZRg=;
	h=To:Subject:From:Date:From;
	b=SzTI2DFDYT+yrFo/cg3iH72G9Jib/kDwtFnQ/SmGInFBst3Tw8HxDMs+6ebh8nSYl
	 KEMeh6qS9SLy5jshqOlU35/E+LbYt3/ZGVzYr93Ai0QqpJMA9eI5HSBMVdYxG9lrdM
	 l7DHjYs16nTaGcLVkGRIas502oQsKpC8A3MnEisNkn2Tb0lJhms7nqf7QYYXIOxKnV
	 aGnTXefJpZqAx8UeO5oJ7TihAfgAg41xGi2qGME53kWDPjQaB311//IKc9NGRrDM39
	 UIZ2IH1HASxf3trv5Cikn6Ao9tsFahWzhZNINKs7f7yZsDwCBRdXGPJDIpz+CgP4bx
	 crw/mI15fBSdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C229FCA5FCE
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179090703376.31659.1077163983631231856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6696a06fbc9c849a07a29c81e904f7e45e027defb4d2da939cd49af59c0e8258
Date: Fri, 02 Oct 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790907033
