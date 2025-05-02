Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B77D4689
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746150595; cv=none; b=IK92ETI43G9gTf7yPkA4w+Z2+hjEN7w/0KocdVrlgC3WwJB3LJlje01Gq8CYrZ7eRGq5bVBLKBAI/vJOZtYZL2IFaGHF1MeJorm7JqpvmseSIMHqf2YoeFIyobQ7sotQMj0Ec79SxwzQaAkpFdefytRbBDcA3DBfY3n629djlQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746150595; c=relaxed/simple;
	bh=uAH4h78eP0RTqybGjHoNzrPXq7sTEmQiqkcedtl6SLs=;
	h=To:Subject:From:Message-Id:Date; b=vEcTEeUsd0MZuKOGTLmcpQ7aqIV9+8zCOVHBkmKk0IJbjQwncMK8vD7HIRJSJ3rVOwWdktv/Y5VrGVQXKYy3wjGhl2XKY/PesC66+CtwCt4fLknSMHfZ66VzSrV+OzfRG3XLBWTP/6Df62dV5IXXteHsqXxt9HhQRQzjVLN8ffY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bRmN3zt4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bRmN3zt4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0734C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746150593;
	bh=uAH4h78eP0RTqybGjHoNzrPXq7sTEmQiqkcedtl6SLs=;
	h=To:Subject:From:Date:From;
	b=bRmN3zt4Vvc93TKEtGUeOB9MWEgac0uq9idMwbBiY63npr6RVTwcte4Dj0AeDcoRc
	 PSZZ5qv7GmqXHkCAu5xsvcklpnhXctSf6fE4B7NvSL3XDjB6V+2NzSjyc77pWEhaEk
	 Y7zTigq9bAL4bNByE8aYtC5bDBDXKL4G0hBsFovUBCrVKohw1tVaz1naw7bc7IjVYZ
	 sXzn4souJ5TsKowuJNnoC7zY5OYWuxlUt8gAzCn0f6bXL7noUbcWqnC9pLdFWiFMhY
	 a2lr1x1SNSixNOnZLzO8RkPCz9xpVqWVsUPC2sPhLBqxZcQBKocwK8rSMSVIZ+Bzns
	 uVsE8v5VRw5pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA73C369DC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174615059357.3035.12731773372385464870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34771b419109819d4f7ba173b57bcc359228567116e13a20fdeb9d5b8225add8
Date: Fri, 02 May 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746150593
