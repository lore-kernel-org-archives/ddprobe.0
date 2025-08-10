Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194F18F6E
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754800794; cv=none; b=KdbfYsz97z+eumo0rH9Gt0TGMXJmFjZDVHGHsrp6YofPh+CPhScdukRytI/6tocSC42nMH4dOW2aVUbGcyrX0MYcboeUHfeBE6rciKfaSNhUxvksS6vFt4uqmXTbICAzkCguIimTRaLjrs0T79v/BK9hBzE2LqhAguX0Lkz6zk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754800794; c=relaxed/simple;
	bh=KubVlpKpfNCDjkLWvIbuX7SpZRnXN26nSL0Z/HrG3tU=;
	h=To:Subject:From:Message-Id:Date; b=M8FOKekvsM0XDJZixCrBv2y3+DpRqnba+YtDHSAbdw3+TNEwOrKWMMUKqqac13qWw211uymYBYBBa0tI7VzG567BxlWNZzS0aa+Y/oeSWCMDkQ3Z6R5eaRM6aCS2ncnEIolSeuZCADxfZ9jBOKfi/xAUejaF4j6BU/AExesrFL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PRGLiuu4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PRGLiuu4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A429BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754800793;
	bh=KubVlpKpfNCDjkLWvIbuX7SpZRnXN26nSL0Z/HrG3tU=;
	h=To:Subject:From:Date:From;
	b=PRGLiuu4DsvJJR5up9VgR66PMYvyj9Cu4X/AIsvdYpI+S9E8Ul61H10Rw0IOl/Ev7
	 d0l/P4Q2pOhobLvxpYPFZaE9pwqsOj6GNa+Rdch9s7PtOU/sdd1SXrNDwwhjPwCqKM
	 g8gxbTlxIzJrBfJtzD5zvw9DbVRHFTNxcOjL3tR66gqWbzhkpsPH/LiI1cuI1YzoX2
	 fX25SPBU47iFAjZ9jQhGkPXzKZSANSApuvY5p2ts7xp+nKEUkl+1qAzD1R8JHi/KDh
	 jhU+hJJcC4tSXJkAzgeHbvtqAaDbgJ/GH2BpUD7VcQPhTYqUCx8qaqej85tjPgP11b
	 zfDQLJeK/0hQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E6AC87FCA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175480079357.11644.4924366830147437920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e7e977a743e977583294863beb5e635c34b2837bf906cd6c07df9c00addb039
Date: Sun, 10 Aug 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754800793
