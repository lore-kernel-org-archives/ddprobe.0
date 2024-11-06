Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1680A1DEFD7
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730901354; cv=none; b=hFwPs5FXHsuCYX9EGr3FKXPrJbdKBvzTL44x4DxXjSIr/nV4Bj25NSMr0UhPNPkAwMhv39d+QQRz1VlkqDyWnk/QGzy1jP2FXqnF8kz6t5gabi+uZkVuPmGF7ZNarPC2jdqWrZk6wziPfgEf0AvauwsMfj8iIELvLZLnJRjdlzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730901354; c=relaxed/simple;
	bh=mcmGh7qD14VOMBSviTK5O1VhmaY5wsH8pBl7ynbOPBc=;
	h=To:Subject:From:Message-Id:Date; b=T0x0LoBWwCPpxMDzEmA4xCejvxt5PWlynIJ2yCzjAv1AC0tW9DuLrI64LjO4rGyf8QN1WwNTYWDUOHaShHEAD4sKZLgJjFt17AME6P06RcHhXDzYe8pecvKnLlN0AoxfSN3rH2jxU+2ubSftmPQbY8pZEj65v3XkeBezAL+cmNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tj7fSYqe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tj7fSYqe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8EBC4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730901353;
	bh=mcmGh7qD14VOMBSviTK5O1VhmaY5wsH8pBl7ynbOPBc=;
	h=To:Subject:From:Date:From;
	b=tj7fSYqeyZdisXGXVf+OmzBcI5K5XKOlFg72QK4GOUds3E96b+DA+nhPURVFnGVw8
	 sYl8nrN7qXJXsS27tKP4EV+xCvzQkYjW9Rw4T/59cfJl/SACTYmBYTU7RN+Q4aKLBq
	 +KdPfG/62t+EmBBLChoVyvMe52G+jPoveTh+iFalNXlvGAl3isu0Ty97JFPQc8l0aj
	 fCO50TehSHoqfvICDT5aFXwArY2wBNqJ9eQbtrjT/+n94dzqXb5EX3NCNurzaZ38j3
	 1ozvTzx/68WLsrbQUDadqXINOFhNqgY/VQlSb/mG2rk3WuCegi0vvsn5Ut/MxENt3a
	 jRBvSzNr/tQ1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96615D44D6F
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173090135360.27543.4942094759820958711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abf796df9f3eac5fd6bb759ab3ba1030b78e632aafe3980960ef3c6e3358eb6a
Date: Wed, 06 Nov 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730901353
