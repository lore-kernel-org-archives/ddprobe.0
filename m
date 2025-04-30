Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5A582C60
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746033594; cv=none; b=QXwOYCQ+DGnRmann79hW2bMK/acLXZYqMD+s2yqdRwRKSOz2XdxLmsfvyvS04sfBTdGEuMY5SaEdrpHm5qRmFqkkR6Cqo0qqQ90adNR4kt1J4ats2iwyeQ6QcnsSslxRdd11oBbg0boM8+QWR/cnVKLgIvUHTitRa7vRud2+7Kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746033594; c=relaxed/simple;
	bh=46PApZP0O3nD6fmVzM5+0/NnDmVYPIKJE950b+sgHOs=;
	h=To:Subject:From:Message-Id:Date; b=bxv1nrp6Rh+6G+NVqW/9MoQPBZRNPcLaKeF25PAGr5qunrOEHUuPOAjoSNrwzKZAiFmh4BjBvN7SUANUPFRTk6A+LAmwB6b/a9PVouZAurvBSmEqXXRtxh4+xLfxRsQzjza09odgVc1JdTbD9TsHFZibQuNsZfLevCXGgCaCyx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRHzKRDO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRHzKRDO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5805C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746033593;
	bh=46PApZP0O3nD6fmVzM5+0/NnDmVYPIKJE950b+sgHOs=;
	h=To:Subject:From:Date:From;
	b=lRHzKRDOAUX31EERor73kUzJSevAyuAZ3FxHYxfSvikLJC0o/89L5RedLk4UVvJ6V
	 RD6HRFpxa6Xc7U3lcapMfE9ubiWewLjJ4zBZAB/tTWxtQWAYZIguFNSzE4X/qkzYtk
	 AK5OD7J0J547JEJC8HeQmRrs4jwoXauwvz0Z2TPyGZ8zoTUTn2YKIoICZnHxx+TRge
	 kATifHnxJfA3u9PlowZXtgdtweM0nvOAQVmA1SKuivZWt+R3z4RTdWlLwV9qvHxIeQ
	 xDUbpvk8KTq+VyXvzJiOvLbLAJJ3vlMqhwTBUPM70h6N33Pss5cZ5nhKGuUQyeN2pS
	 Mf5f1awtVcxXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92781C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174603359357.18296.7661853099523596963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fedba4f18d61f4e9ac5d9389960187f0e51c999aacffa3a414bff76b09be4cc
Date: Wed, 30 Apr 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746033593
