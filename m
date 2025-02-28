Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD5626B0BF
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 12:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740747534; cv=none; b=f+ghki4/hFbZW1lvZ+q/uzg7x+0aCGPqRUrQkJLriTgpc+KmFqYUNyvToPbb9MSRK+5AVemn5kYx00RL7BF9XTv1/m2QjWv5aPdhuz52sY0PP0jUAq/yrplsd06gHoKCt2PbVhE5PREui7vG4Z5K76e+HVFGjEkdd5g39rd8fVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740747534; c=relaxed/simple;
	bh=oIYJ9WFruhtl73wD41dEBMuDPFZGWwaWZbYtp0sYWVw=;
	h=To:Subject:From:Message-Id:Date; b=YvW2LDcQJf/J6Q9k0rRsIK2pSzShZscMAGIiG6KsCmsDBfG98qaOBCrYRrw+V+/wj8lwobf0GHJ1LUjLSgiVyJ2Oo68WK7oOFhprkXMKnVyh3nlDSFYkqOOFFx9mbQiVla0jryd2GjTuYw7317wpk51d3BzPksybTgx75pgwCTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qWS2/Gdu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qWS2/Gdu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C6EC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 12:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740747533;
	bh=oIYJ9WFruhtl73wD41dEBMuDPFZGWwaWZbYtp0sYWVw=;
	h=To:Subject:From:Date:From;
	b=qWS2/GduHBKAlFfKEb7r6q8E7TUrKTjFtjcOfVvHPTPmg76pWcKx2XHkET/xBR1JF
	 Kj6rr6XLsaDuXQmOwjXtoJnqUI8T8oQBmR4eFQJKPBX5MBWkXkOI333SpiXOq1n6vO
	 65jwMIq9cGFwwR8KzxnQCSlfrF6zrcE7/rkgeY9QVPz15q6lEkObSveSe6QytnI1ui
	 56Hju09FYtyzED4xCEJBo3ZQ+RAU6ojPlosdwbIqR5EdhwUZlLjXRycUs70fzh0mDV
	 MaIpwg6u86bqu+uMbEPeGjhGl0l3DuJXG4MHLH0k093PQJDUrOYmPqQ2+fY55DZN3A
	 WA9UnfpMd49fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98606C282C5
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 12:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174074753361.13697.7349256343460582207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6854526bfcfe3a756851d2cff4d46bd1210a4e664d21ee163dd76d8b81e79079
Date: Fri, 28 Feb 2025 12:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740747533
