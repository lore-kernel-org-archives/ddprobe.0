Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6B92494F0
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784862034; cv=none; b=aArrO/+pwa3cCoePGlci/A8m5WJ08/8L0rqvjnkDQjJMOqg+OS4YCXjd5Ka7atuo3xGtTRA9F8n5C2kn+WuixbbxhqAUqfiMw1NQOaMbg7EkB5M2jSbfZUrfATTvTYjrA8nVogRmTTNjeiPeKkFeXF6aAEMEQLZwcJYDCGq5UoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784862034; c=relaxed/simple;
	bh=4hnVlHXjDu0+j2CWZHvxcGJYfxZy4ehP7e0uNxhCKZk=;
	h=To:Subject:From:Message-Id:Date; b=NesBuzxSK/BBjzXXFrl1nDO4ERn6PA4+fHaS0MpdzIKMThE+TqMoUqWWpxcZWGYfkBTrdhzl71cnDOhOOAY1uGjPEq1vu4lWAw7gWE8YBPXDxr5pVueZn6gGLT7Ixw3pbk+GCXCSCBgdgU+EbVbubVgdLg6rIunQxwBhLD+HR3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jIW5Eh7k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jIW5Eh7k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE3DFC2BCC9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784862033;
	bh=4hnVlHXjDu0+j2CWZHvxcGJYfxZy4ehP7e0uNxhCKZk=;
	h=To:Subject:From:Date:From;
	b=jIW5Eh7kUtbWPmYIx6gkp+nYzBZhdNwqlMeiVzZTKwtFVYQ0c7potONoFBWEnRZUQ
	 7BPOwmTmxjd/owiF4pFSJopeOFLUdwfnx+3/u5HNWdn7LO5juFiUdt4yq78tNvSdHU
	 OdrWC9c3L1UspaFIwdDRJ1SrZ2eLV9yai3zJM/p2sd1FR2KZzC/8uLAV81dLLlj2Pm
	 xiTuaNuCAgSc6jsZGuNy7ouUj17wL1UgHE/yS/3wEwwzVQnd/M91J5/ssC5ljoYR9O
	 i1HwJMszb05FOGU2hKjJFJ7+C6cDSErr8V6bUxWN8jwY4kg9sgkCKs7BHjUKSa9rrN
	 KMktkSPv5uv7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4A3C531D0
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178486203368.15094.15051991457759254540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ab038cca19251806c663d71a2c4d117aa2198443ec965598c6093fcf97f97a1
Date: Fri, 24 Jul 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784862033
