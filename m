Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21BA67080D
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771819494; cv=none; b=lfnNcJXYCVnabVZ5snv3N+pfvaSJN/XQQ0YEyJTuPm9kemCqh41CIxgX734rOfuzImUzqIZAc4YtFfJTXQgcY+1NvdRRzDoShxbIe4yKDwkYsZr7+eVVQcdG4xoMdzoAJ/2ALqn0+ls6EaSPxVQlI6ly+0Q7lvl+M+YffElDWEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771819494; c=relaxed/simple;
	bh=pdmHpNOyuZMwG3o3dkSX/neNH594LpMmI1RiA5e82zc=;
	h=To:Subject:From:Message-Id:Date; b=LntV2aFwjKrtxJwyGpEKMnV3/Yq3JDWbI7JZuoDifKKwRGJBu3gqtcctyPjUxybnT+aDP2HtpfG6rdVWgsRbHOiNfXAw/o1AjMy3MsSw29L34ZX1o6BZdF+OFXd2vOdqwZM553C21UIUqleuPaKT403zNVvZ8yXXsK280478Ypw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sivekF3v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sivekF3v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF0D5C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771819493;
	bh=pdmHpNOyuZMwG3o3dkSX/neNH594LpMmI1RiA5e82zc=;
	h=To:Subject:From:Date:From;
	b=sivekF3va0FnSfmFGHq1YH4OBtDbFQ+Jx/7mFAfwgz8bsqAYOqhEi6Df4TMyw+AFU
	 BPzF7E3S+zoIiqC+UvZYC8vTZUYWdPKtvG7XH1AOTOrKYvQgR+sqldb0mP0cHMEHpk
	 TBX5dMvBMFZPIe9eusPZIGSiybn4yxEBoKlJ8j8bpcyFZW/Wjs5ZJFWAm+AIYkllJW
	 cFRBOlD8w7Wse36dDmQsak5z2VrQhxbpbuqi3gkjx2Ba32y3cVocfR6DH+OuS7Kv8U
	 GUcSehdk5SngZJmO+BzsY+M+zlKmcmInHFPrhr6qSqoIq6IsC6I+tH4W/XEtr9Lmvf
	 0dfFVBnwOaPyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98314EF5861
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177181949358.26816.8976375471369486575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0606b73e1369667f0797aa925cf6246b4de60e7f5e2f617dab9b63924e586a61
Date: Mon, 23 Feb 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771819493
