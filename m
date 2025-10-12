Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A57E2594BD
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760288994; cv=none; b=TokMFopRu4towfICBUJEM4KLhMAg9CCYL6HQtCaGe/l/X4wcX71zQO+IWdWv0typx2h/oIhRD6dMMKx1nlWcUvwjllxVpUYI6kZDy336NVumTdz8AonQhYUnDLfpQqjMUSioBzQi70WbYAUB6+BfZmhMy8lL1OOZH7TkMx7uowA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760288994; c=relaxed/simple;
	bh=xz8DW9LUc7hoatD7UiyJmfOopRdC8IUcsoS8QYT7ULk=;
	h=To:Subject:From:Message-Id:Date; b=AvkNTeVdawcxxGd2HPlju2Fc8VYbh+NYT0gQiKHcFhjTg2P+/Bz5wKnZN6VjNPl3mbxB2skDyKHudw1tya2BX0D9Yy0K0WQt/Fdr0qQQS1qeuTQN/nZEmiw5gRCFt8fpYJ5R/2Sr7LzalrCJCLOpORWR82i4Oo+KW1oEuKZqlnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qHDdT6Ad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qHDdT6Ad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3526C4CEFE
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760288993;
	bh=xz8DW9LUc7hoatD7UiyJmfOopRdC8IUcsoS8QYT7ULk=;
	h=To:Subject:From:Date:From;
	b=qHDdT6Ad60yZ7JcoTxjP37byIeJfm/XKAFkjNg5v/Ze7WovvT4z8dj6H/6d+CrxVM
	 OzPtFLa3aq1Vx+OVdVnl6c+r5HZY+HUCvuZt/sDYX6y+7NbFnQgvqzdlFJcpCPKqNf
	 849tCk1J4RxJQLk/WQCvcMu1rWwsLnimH8PeLHe46BLr+a54IfnUT+1qVollT8l0LY
	 hSwIuXfaNyBG0lgCDyk8rNzx18FCyHn6cW/M3odBhGbqM5bukJPZa8M6utYpcRiNE5
	 hOTD8NrGMKy2RDFcDTy/5sIu9zZQfd7FEDPo169G8HiU6fVV96A/4AW4rzr+KdDtkF
	 iJSeDQ/imFQzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90987CCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176028899358.7922.6622628920527087311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eed14798ac58d9d5799200bcb8123f759da94fc6b742b72b86769b2bda32e60
Date: Sun, 12 Oct 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760288993
