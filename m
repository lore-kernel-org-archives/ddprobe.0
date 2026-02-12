Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3318C2288CB
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770894894; cv=none; b=q/lTGxRdVlHBWDB+RydjUMbpbTf3ovdF51TwpYsdXQsUliMuhqgtrNxplu6wOqResA2JgV7eGOU+glAcrJAVlnH2MuY6H6rY+38HXFbzinc6abZZzSsSgrCbDwgDJgiC68sXWQuD4ry+061uS9Ziyr9wktx3jmtk/qEZn10QR0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770894894; c=relaxed/simple;
	bh=JVgCUK/4JajqYKJ7wHEh4yFTWGXGtcmWvwRlbItNIwE=;
	h=To:Subject:From:Message-Id:Date; b=HJtzmw763l8BD6AcgtkC8zNWGDqSlxTZ2j9pRutHJgJYNLoZS0KkbMilRcKRXEPjnb9HH34mFOHymvHnIGegF11jG38Ain9qpz5tgOpJoyLRUtr6Nua0bPaOhZB0iPhZMDZE/JHDPIg0L9/yVgjw3zTgioSh8GObN+EmhY4VtVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZEHyCgK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZEHyCgK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA126C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770894893;
	bh=JVgCUK/4JajqYKJ7wHEh4yFTWGXGtcmWvwRlbItNIwE=;
	h=To:Subject:From:Date:From;
	b=oZEHyCgKxQo+n/mCqVtqbTOHYCXJjHn1lrRtkux5dxLjebyCG+PmWd67nTPOHK0gs
	 Qjbx8XFpAAStTy7FsMnLxyXvy8buUn2Io2Q5m0CJzVbgljUUgrs/hpE7ngWkZtXuvM
	 EFfs51cFunocCusA80Y2WpMidnVi88xPU/CoFfkeOZVOspFIN4qrSnfwZ8fMXnOfL/
	 rj6O93YQQ6t4g55NCoKjpq8xtDUnQe9aBN8JTPfSsmk60O46l+u9WRr18DdgIfNnd/
	 fRTdNbZAg75e/QZkTlNmdjPTmPbVh32/WhR5W9Nt3SPlKG1ULNTSaqQxJzhZNXXbEi
	 JMi+MVjRc02fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A059CEB4904
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177089489364.15343.7095464299603764635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0ee66654cdc6d1472d497f82da781afde33aaa5cdb3ede2ddfb7ab81b9cfe9f
Date: Thu, 12 Feb 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770894893
