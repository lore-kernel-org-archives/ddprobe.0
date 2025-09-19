Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2487130DEB2
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758283794; cv=none; b=rSC0UkxtR88z3zHLDlSEbzuofwOsmGbMdJufe94jDutbliOUpNLocJe0vjvlDvPZ5lQPyfpcBCiJuiqPWdEPoZoszcb7F7+2a5AX6v67gvL5A0h+qOXoOUwgZYNHCXUCmolYQLbtX8QXYYC0pZcwz1J0GnOL637R2VLD2uG0/o8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758283794; c=relaxed/simple;
	bh=UnkU1z7EU7jC0P9p/umQHc+MJo6sLf30RuIt4pxCqZk=;
	h=To:Subject:From:Message-Id:Date; b=oB9nK2EpTR1UjEKaU2GQjoQ9fo9MxSuuFXtHPZsJ7Lja7OATrM0PsKyTIpS52b/ion68PBN7gBfLULEohT+M7lV/OlkpddalHzl7rKuuiJdf56C5LfZ2DFx4+lDn7lfUBm/aK5eWnS3dZbxjmO53DuSZokMvOxeU3P8diZ63eAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nj2T/HTS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nj2T/HTS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA46C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758283793;
	bh=UnkU1z7EU7jC0P9p/umQHc+MJo6sLf30RuIt4pxCqZk=;
	h=To:Subject:From:Date:From;
	b=nj2T/HTS1Kge3bjiqrWP8ecr8LyndRobcscG4IYFYPSlfBsltPgR1xSM7Fn77tay3
	 9RuIXfQNHZMamfNrzSh7nlOiwIaAFnOi7SqzZkeUqckXU4q5eLXAd8oMMy703PclTK
	 GnbJhUBoOu+BDJKSDgWuI0jzlXEF8A39XvHzG9Cy0jhtKUOq+zgFnL4sNq8ChbWF1v
	 mIIxdbTb+gy32+cXcQfRX1+oWVkgqg+z3VbSgoJUv+9ZUbEp2YPFa1VGL7QalqzqK1
	 NbazYeKq2dg++kYR3KRJEETKhi7a/Awf7p4WGumtMqmTIfxN4yy20qLG3FIuPuOltM
	 WR4lBxwEa5rnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E19CCAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175828379363.3477.6230592143747521919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff60e081e9226661e24c45ed55dfcf2b501cb307b4d1b78a4faa5cdb5424d463
Date: Fri, 19 Sep 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758283793
