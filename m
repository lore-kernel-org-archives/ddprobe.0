Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B614288D6
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 04:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763267454; cv=none; b=DzbGQn2qUuYdyYVjvqJH67PGAtwlNANGnmgQItFZ4xbCqz/YTr+SVX0Etx73Q74s8NCh+zwTp1zOrSlebuK+y5aTUatqDmYuFp4am4DowTJaKSI5q+hBvFKb+3t+W4xNWvXmlFgpe6eH9kt+EidO/ZIdaKTeZenD3T2Ir+2opJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763267454; c=relaxed/simple;
	bh=2qttev3pL7l+R0iRwNlBUHyvcSMvY2fCY5YvKSFn0sY=;
	h=To:Subject:From:Message-Id:Date; b=Jb+lDjvZv2W1WQarA8ZYUTq3kX5e73Y0XwCjF7/MlGx/5hshO6FqHclt7EOnliJhkQSkv3nueeblxajrgm8uFl+1RygBvya0Fs/XGziPO2tCNHGlkw6ZsqrZjc3wP4YMlply0OdRqPZSIntsmTF+kQh3YmU0HvsxXIafqFaETOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kLYyvWXx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kLYyvWXx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04BEC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763267453;
	bh=2qttev3pL7l+R0iRwNlBUHyvcSMvY2fCY5YvKSFn0sY=;
	h=To:Subject:From:Date:From;
	b=kLYyvWXxU6WAKUQYtn5OQS1mSigHvE2qaVoA2/ex5T4pgE+gslN1azHQKKTkmQyy4
	 4atJVrofNN7pD31DWZgpTqkhU+0eFI/VXxA3Xo+rh044CCnyYIeAu7ie6Qtql1HvsG
	 V5bSAs4ydO149enJEYJU2+LLO1KvI36nH6AISwx2ojRb9Mz2jXzshqAoM3m1Di1W/7
	 c7LqDwmAUjqOS/nVPfXpDkLivVjQ0/fMJ2/y5BgbsZtnSWvCxAHL+xsONKX3ApMEpu
	 gHiuPDXCPtgEYTJgMvi8aPpuzVXhLQeFeurno0bhmrWlLheDMLc94UvhRFByrtEQgL
	 dOsmMjSMJJWbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9517DCD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 04:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176326745357.29840.2386699471690257500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 789a558d014a2f8c9cae39c43a24ff28b4feaeb275856daf71d74968dca127ba
Date: Sun, 16 Nov 2025 04:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763267453
