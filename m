Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 124672AE66
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725375954; cv=none; b=B8ssCn3WTYRfYChr9hULJqfi14m6E6PO86IYOlBv1QhW+ufKq89q5hAdRwESvjc1FFuQfQtGes5KEKXz6PREWl6QSe//ZvTbI7ibqOaGcMRXI/Ytq+NPmwUJCi00erPUUpchFiDY69xNwsJ1qLdGhkpzzCZ+1oatqVItKFiSvS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725375954; c=relaxed/simple;
	bh=0f/6x6ApKxVtOMWvZEjdzBFoUMUVeKb6uAfol4U6dtg=;
	h=To:Subject:From:Message-Id:Date; b=Mu02ZzgEnkeyzmOm3qCJlNga0b1/wE1QfwczKsVd3Uy0oIzopSvvEfuZQq6KjWZ3CsVliYwHhaDdDSjs1C8To2seAEuktd7LF2aUbaZJGav8KZJU+QXknq3frO/6gKRReRvEcR7qKbdFfaN/EPH9Wt7S7IUYHKuTdfeK40bMVxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hvUXUc0B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hvUXUc0B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10B1C4CEC9
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725375953;
	bh=0f/6x6ApKxVtOMWvZEjdzBFoUMUVeKb6uAfol4U6dtg=;
	h=To:Subject:From:Date:From;
	b=hvUXUc0BFcQX6Mg7NHqX1ewAtn88gPnEOlz+WpEfVWDsVAs6qSek0GI21DUybRynu
	 oZe87lFKUa+JPeuw1nSENZ5fUCLF0bRyQa05qTJJXSrtbDhsB8vFuVLRv6+m5GZgd/
	 PZy5TEKFam1kP3QLS0WuMfP+b6iMjSrYzeZmwiAzUZJ7rKQujGPUSOMJzwGehcnNtY
	 CfkJv1oMAiTxsFDUGXbY+9giNKetMv4M+S1o9wqMdraZ1Bj+BhUAJmUgio9q7NSAHR
	 BYR82GiSbXbXTqBvHLaxST8GQUTDAGMG/R7xyoVxRRMoVQ2yMn/BpYBsrs0o66e5HX
	 jFbGWU1urM9pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92740CD343D
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172537595359.25012.15494626112040554189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc3e880d1cac2ad19a2708d401534933e2066dc50537cf5aa7dd2df25544996d
Date: Tue, 03 Sep 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725375953
