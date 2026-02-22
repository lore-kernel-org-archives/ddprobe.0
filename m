Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5091400C
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771728294; cv=none; b=LLHHEpXw0yUiKgilPSVz+MQehrYveJMRbKEeKwTbepGCvCx6dyUQD0ef2U/fj6dvRMzxuy37NdTYCc+07gaNLoSkKOZTDHvLmnUVW23mllxIjlDV+RiCMGrh342k0zcXWcuD3mq4x+Z2ZeJf64FK4CiQ9TWAXiKl5SFmxK5m48g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771728294; c=relaxed/simple;
	bh=spWDBRmCLT4a1voFHp0XDf6JxQqirjqQjrb4pnLnblY=;
	h=To:Subject:From:Message-Id:Date; b=UsUlTb/m9ZgXVgQpIcNGgv4gEKam49cVAUyGuN58HceS6B8XtaN2gc53p8ZHBan3p8qhuYCfT0ZvBoHiXOoDdPkTBATBB5wAbl3YkYbgUouOhp588QqsgNvCeYkDjYWvFamLbqCEVqZFn6BzqNS2RE0ubYCsiqxKZB07ZrXXYEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ml/s52tE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ml/s52tE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEBB6C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771728293;
	bh=spWDBRmCLT4a1voFHp0XDf6JxQqirjqQjrb4pnLnblY=;
	h=To:Subject:From:Date:From;
	b=ml/s52tEBH863n+KwPI3L5ewbBg1WtH+343CoJSnKEex92uhWvnySagHtEYyj9zxc
	 9lldVjLkpLk8rO8v+VbUpJ3a9N/Uilrmqw/hm366GQQ1Rc/ueH4X9RjtvlhfG0Orsv
	 4lgXbaJVWibgf+ZEo6mENfbWb3y1FOTBs+FYzjWNxI0CUKCozv7qsnJIIwYm4bK6hY
	 bG8D6invdTNL4ey/Y9Ubnh5bYSJwzJdtkK0OdgqvLnh5wctSeNjLBCLch0aqDS5CiI
	 v8UlN51X1nK85hfNoHkUtlXyMZWRpmV9rLFiE0ZqY86i2+Wxp/hUkCzAjLs9rGsZYQ
	 jtvevX2tkfCvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99366C61DFF
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177172829358.25257.4321992461054515428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0dde987462e34cdc4132e7c75213d68b91581296bc64eaa0c463a9331a36584
Date: Sun, 22 Feb 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771728293
