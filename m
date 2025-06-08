Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25550156F3C
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749400194; cv=none; b=XdQihLjJCG/Yun2NgjbSkot69oQKZbhHAPtKJrWgxEWHpla3qioS3YuaKjtfxTK2ff7jP/OtMGcnFUNhFcI1ZCzGhj++APfnx2Hn64UQX6EDQ4OSZU7LTNBsMxPW7JgXN5kmV/M0uLQZMSSmBJBhmxGDuby1cnlpjPnjtvGfXRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749400194; c=relaxed/simple;
	bh=U1wrMl2BaoVFrxPWydIMpRZ9nsxCh+SZ4gNiqiRvqr4=;
	h=To:Subject:From:Message-Id:Date; b=I/N+ZAVkgaV+KcjKAmYEr7KQYPjm2ZLCYY8czkb+z4PU3M6xDxmoR5prOdYwlzfsy8y1QVWwUd68DwGJ1KODCj92zYuHsaK3cMSlFg+rht6qT0YbLrGPMO/RchEr2rqOdZ55/xqnVISmfCjdRd4/narn2GqSvRQWVQ0fqH28sy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BGRYpy8E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BGRYpy8E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36BAC4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749400193;
	bh=U1wrMl2BaoVFrxPWydIMpRZ9nsxCh+SZ4gNiqiRvqr4=;
	h=To:Subject:From:Date:From;
	b=BGRYpy8EFULAclhih+aATcejx0H6MMoKRIwx8/kftVZthUL5XhUESefiGPwAqvcmk
	 KBGn5BS+NPXLpPSpOzYEwgYzFv6O+bkZkGgrsH9gb/xUqV8qm5H6o76vYCsRvMx+sf
	 /v/Ctfz2PzVUUix6DQ7pOlE7BVRyLelpo5GXSh1G0Nw5vsJM/TD51ELbXUQGQ6PnH0
	 CI9acGuVEp/r4buRRg3gLiLE44wq66C+MD9fnphiMqHdKjYt8PUhLt9eiizQvR0ySm
	 NSIfeH5ky41Hl+ujsJUl4UlymrrIgecsALpOnEmDU053QnsTVTc5rS6Qn7JfkbBVtI
	 ET6sZKtYNDmwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905D5C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174940019358.8828.16901842020233795902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06079917d04b9f4410d5c6e82cd52161a947a3c4b0380dbeb97ce3a89c45618f
Date: Sun, 08 Jun 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749400193
