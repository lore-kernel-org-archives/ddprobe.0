Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3508320B81B
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755847194; cv=none; b=d0os5JloXzvf5j860mgnEFHctktdh5QqcXtt0y7TcH5Hc0L/gM7QpxMJ5El34o/N6Iu+GxYMSf9qpiE+PHDYTKgiBR7Ulzyjbl8TV3pJMEQEYNczQ2OEMK6YjpeCBVv1Xe3furW+widxXKzuC587/JKqEHrE3dxWrulAZVIn+3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755847194; c=relaxed/simple;
	bh=mrRi1J4e2EYgnX/czi5mpORSjv/Y2Afx5EN3VhhhxYk=;
	h=To:Subject:From:Message-Id:Date; b=lYjkMcsotNwRteC/WxPUAspzACCDHEQFkpAUmtXHZeOw5LGHZ+oY7tk3kPjN1MjBMFq/u8kKiqsrjBZQXmTrAZ78bwnBKXYpLAb0MvL1L4eyRwo1E2KltJtbYdL9QTuIE9hiaHQIKBGmUE4ZR82rBbZzf4SXEcKX8+4TOchIxdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OY51FCN1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OY51FCN1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EEBC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755847193;
	bh=mrRi1J4e2EYgnX/czi5mpORSjv/Y2Afx5EN3VhhhxYk=;
	h=To:Subject:From:Date:From;
	b=OY51FCN1P0zZ4+7esP+cWI517tXcDcNcR+tbEIelyqoMeLNBAUgXVuaVmAErg8bYQ
	 OuI/q4zyeHpwU1WZdIff2oDE/OhtwLT/0fap80WfVfUc07Q7OtSs20+//EIzVrqOKL
	 gAO7wJqn6ZRsjMFB/WEqu4ZO+0B0cqIkQ32vBRdBJ3+qIzu05ZLFYK7iDhkrc1SD/b
	 0mIXz3uuC+tiZ+eYFLxyaJPbWaqqfER5LzAPpoCWkCy1qXD+IW7lT1geH0cbFDj4+l
	 YfxdDR3f33dh0rJjRpvQFmHBJLmy9KX8LF7qrjxuK5FZtOJuLHSK+OEbydIs/b8aLe
	 UvZBjTgW7T4XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CC1CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175584719357.31701.7651879756995098455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 965a243ce2b55f9487518a562fa5f1f8be6b2d31c47d62c6ecff688c4c257a89
Date: Fri, 22 Aug 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755847193
