Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24BD323F40F
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753444194; cv=none; b=kFad4zyvPtjXQMs8Ohcq+NvXp63HvTXJpfM+M7/cTp+aYJ6NxcbU9Xz7DcRiq1PxvkhbJBkFkGcE6u0BAwGXSTj2vaUNOf6pzw0iX923xMGYsjTzdDKNJNXUKxcVATplk3EMNvch8y9gRWQAFD99mbjgDIW7vgYTk4+Q2t1sBQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753444194; c=relaxed/simple;
	bh=Mfl8uaKATk0Pmhb8FIWKj0QzB/9H8gdDf1GrE08DK18=;
	h=To:Subject:From:Message-Id:Date; b=B9Nr0TLW+8gSnVth2jMitKrTjOKTYU8QefLK5i4WQLCj3fMF0eEojD8usX7uQK7hAevDnYH+LbZq4JIbyPB0kPnhkdz+1XvbdRpdJVansJNYbW3h5ZbwyBIaZodO6jz+/DhgssMX3M9n59Wk09abmJsa4sBo/pntSUqWBUT9Wj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ie7klPlr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ie7klPlr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4F9C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753444193;
	bh=Mfl8uaKATk0Pmhb8FIWKj0QzB/9H8gdDf1GrE08DK18=;
	h=To:Subject:From:Date:From;
	b=ie7klPlr5oxLer1ug3MEdD7to4Ct50EHprGZzIHx5/LofuAUWzIY7fzC7hIkfOr5j
	 vKgCaC+pLFV7qo3/qARQYTlWz4Xsf4WeAb8lW3sUhYKZk6VMZwLiaEdphfC6uIjzEB
	 wr7WnWAdMQ7KEzU7BhzoTKZItQcHe0B+XmcKnu6ZsDrZ7SZbjWuXTDnJndOXPBP0ib
	 6ynoCRhJ2QcyDS7c58kFokkmnfPFvOwZUKOJWEIk6Q6ePkTxn5OCA3RtQGQmM1cmx9
	 l9yQFX0aCaYd3BUSAG+/cJmxtmHLpMzf+vZnD/Q8Ruexx/8eXyYJDl7hvdqrgeTef2
	 NShsgEwL5brOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E132C87FCE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175344419357.5131.18152173389914420453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0864cb8a511e260c240bdd82ca514aac8d70b0847f02158a2db610fea26dc3d6
Date: Fri, 25 Jul 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753444193
