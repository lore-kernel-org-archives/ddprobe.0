Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D77F22F76E
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750669194; cv=none; b=uH9nVVEKKQdMuYzUN5b9eDVNDDhKpT2lgFaEyIdeYzsgnouBBT84ooN7Dd7hVd4ezCjwv+A9jxb3X36uq7AI4EaAKw8mjhMNGl5luyxSgoejJyA2IX00dfxb+X0fzWFbCwO7OSVQruqFtQ6dN1H01Ru+nqOp3GH7Gufpw5THnfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750669194; c=relaxed/simple;
	bh=gJDUzoTU0r/MEAHW4xrIKJpyx/cnzB4+RmSbGdFN8r0=;
	h=To:Subject:From:Message-Id:Date; b=r6+xhRyxvWpkipxKkJnhz9dcsjhwXYzH+NWQg7smYcuECxdwTxlqfXkxcDH1bKudcfU78fJci3zCpZ/I4+vZt1Ft6wLVvHZMejUDpB+1AL2+ZAbwIw/fa8gZuZ2e0ZMGmvRCwYJKSUyLq7cQNI1XbtAljYUCj3ZSAMhY4EgRA0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lybFUtNM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lybFUtNM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3FCC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750669193;
	bh=gJDUzoTU0r/MEAHW4xrIKJpyx/cnzB4+RmSbGdFN8r0=;
	h=To:Subject:From:Date:From;
	b=lybFUtNMXkVIz84x/YkwQxYvjtv/sd/Hcwbyo021JSFCnbs4MxOuQsJhMYmYqVaaf
	 UPAY7sFS0CoNJnySO00G8+Uk35pCZcYT0Ysa1GScGWuM5g0hUQnSUPJ1WrEGh//fnU
	 DR/KJfige+MUrqwJ4GrqWn3ZWR8gO+XVQAlFEk7k609zzNu6JgvRV7mxO2Ydv1rzNf
	 xRTziJq2/eSnxfiwwxNXDpT9FdoW59PGuGmGIN67U2HRp0P3y3ikr7ODXyTde7Bi7a
	 HLguOPM9oVDvgroZgnx3yrLmaMODDotJPe7AvY67jj3B3ElYRW0OxYr5stHTWvUzfW
	 JtJdgfpHxnZJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F90EC77B7F
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175066919358.11465.11228365492831476876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb7cbf67246d037f8e5e3d713a0b530f3a144559f0e4d46527ad67d07f94a065
Date: Mon, 23 Jun 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750669193
