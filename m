Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B8101E0083
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 19:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763752314; cv=none; b=FrQEdS6WzFwAajDD/ld4HDO/o1dwTFbOG+OjjxUy0M3kEbq6sMv+v/SM4b/gdAkyWC4vdrz/KwIE33FD+GHOcuAXkW1JOswg1Yk0aNersME/5DEFQkGlnuFLlHHAmCWfh+JcDAzPNMLU5XvU/IOFhHbRvR/ZwVfvs4E2sO1+AKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763752314; c=relaxed/simple;
	bh=kqwM48jKMJHbHaTbzmQL0HurUkl4S/QqXf7liUxIBZY=;
	h=To:Subject:From:Message-Id:Date; b=WO7cUpTBl2Ab8R5NF0N3QNEHZsZI1gUOqjmhJdTUG0/4yGdd3Jx2212IYxGzXhN+RbyCVgqYu/GC7R8pKTojEpxQeLBnREQbfMfsdMYn1w59akjLEAGn8s7XsB3+MML/TOyhxvhl2u6DxZk+bDg0TzDaaPYOJVQau9Tz24V4mWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K84ixhHx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K84ixhHx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6835C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 19:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763752313;
	bh=kqwM48jKMJHbHaTbzmQL0HurUkl4S/QqXf7liUxIBZY=;
	h=To:Subject:From:Date:From;
	b=K84ixhHxOmEGotUMriWN8Ow6AMERX3l3tJox5TTRqDg60nJQs6EcIlCnZS8xT+LLQ
	 51wF3zaWmlvYi88MUJL98/EjXkIqc9iHWs86eS8U4GlfHemfFqxGqKwdaTfBCYD8Pc
	 4Gl3bnPowNMA/bsk8gfc1pVJkAvUUDzDd92lhVlnVh/XEWJEfHULNyD2YUqRN08jDZ
	 j+NdPTom9QFHhSPy8/3t77eH74Z0sha5fUHPxsojzfGlkxWbkxwgAeXwDXi9V2z+7r
	 gTtreIzBKKHtkGhGdzcGUcauw0+Qcs2pvN1tYDMIupEUbh+jHs0Zxq2RKLQXuWn80w
	 qckaP9XfHpDQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B11CFC29F
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 19:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176375231358.11826.9460073994080149532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 800d383d9594c10a53fe8e9c16e3603dc772c0e1df9f449f222e671b204fba7e
Date: Fri, 21 Nov 2025 19:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763752313
