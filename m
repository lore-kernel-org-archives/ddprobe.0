Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A4F314B73
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 07:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779435154; cv=none; b=kAvsA12Uxcz/TtDdRLjnolir8WbcGa5mOBWJ5sVzbkDoli2tuT3SBLEYG5d6kD9QnVExRPVH2SH5EiBLfbpPsWzXmn1VxCZuO4bwAqEAlXhJnjSkDyur1QYkKebqgxdHp8XEGaSacbhkaywOkUCnLtNxxGeimpEdJaxPqafF+KY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779435154; c=relaxed/simple;
	bh=lKOvFrs5HMxiybLiJ9vlMBJ1R/1mCjIgA1aXV92TEzI=;
	h=To:Subject:From:Message-Id:Date; b=sfbC/XRs2wTc4waGWmWAVdadRnjT9mXWUwqVtUakX1KG0jYJjSYkz0VI46RbhtgPU2mOUep2XUqClITaUUzZ3XlyMx6uzUbb9bwf4wushAF3LXOoFw92mezKc/zEK2ohj+6745BVvI18kdMBFzdOP/c1LsLMhWBXQrDBfWpK6qU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZRlipJTE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZRlipJTE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C32C5C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 07:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779435153;
	bh=lKOvFrs5HMxiybLiJ9vlMBJ1R/1mCjIgA1aXV92TEzI=;
	h=To:Subject:From:Date:From;
	b=ZRlipJTEhRNsa9So1/48bLtXZCMIvosQ0a2+oUGiV44JdeNCZs6nViYspSGUSs+Io
	 cgjxEY6iLzJPhF6LihPTu4gbV4199si+Jkom2Z6ahnR/S6dT2u8Ey6Q62CxIpus4EH
	 dpFGfnvN4xH/AncWeXvwHd/U9s7/uUVOjGRWhhQSnBpvTmS6D+GX7VeYpJS6juE+pa
	 goYJm5ZqbxMPBnPTHqxGpM/djl3B5ouhbn8v9uW3xreXY7PYFKqyOxsqLu+QfRYG8X
	 R7cVd+DwlJ3Do35yTEOUY1ZfukSwV52R/BXX2o2Pwf3GORFlI6hXS87gq1mMSux4XE
	 emhD86Yp52log==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFB1CD4F3D
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 07:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177943515368.21698.14581680378932938288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41d7def174448e97ab4867eb3956e14a851752b8fb3bac26be3874c0cda02fcc
Date: Fri, 22 May 2026 07:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779435153
