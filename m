Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66D811878
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 01:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718761163; cv=none; b=mewd65PxjdhJzF3pFyR9BBtL5+a2gPTtdDbRbl7R7re+K9Wd6vpBV+GzjNKvy/3idTWsbNw5+6SkqguNp8ZIJrmu7vX6RMsKuFiTjZ3XIfSuIcZp88P2qBaD0gYDPV6/c6Nn/TPdRN5475ybpgJv7jC9m84As7R1B/z5mC/3wis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718761163; c=relaxed/simple;
	bh=eiomAG7h7WOu7+qE0dpNLbGOfJwkDh2gxEecDsEkwEo=;
	h=To:Subject:From:Message-Id:Date; b=PvCFkfKDhF2cb4WvZfpH7lFtAVaQRgjEA98cW+BSxuQKDXb5H6tIxcLzu7hLTVS5DQkPm7rh8zrQZHPnWjXNumLxnZ6YeJFPreqgMYxWlLxG3y2cF+c+sCq+80XgYFy7czQqXq+LIzfDKdS8D7xEShW/bdFdg3y1aOdWzQbOrkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cESHNGId; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cESHNGId"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E80A8C3277B
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 01:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718761162;
	bh=eiomAG7h7WOu7+qE0dpNLbGOfJwkDh2gxEecDsEkwEo=;
	h=To:Subject:From:Date:From;
	b=cESHNGIddGa7FjmgeMThzFWIs7c0bOHVAfOQZOJhwKx+GjLFziNgtXtXZazJvjpNv
	 jU/2idNAjBaZNkzuBBGJNC0pb4CXbmPIcR01nx2GAh71c0IFuqHZ3Vl9gyysSvQg8X
	 h8KuCsI2LBv6i1YsZRAMGa3S+vmAbDUqH+MQ0TmkphIA60KPlGh11B+A3Opt0vD+hh
	 nJdtOljdupuW2brmLiNXp1MSLOoz/rcBJTz9iIx+2zMeN/eu4kxaBK0dWM7Wxs1W2M
	 35Dc/gOVQYKvHKMLlOaDSjPdx+9HEC+SGcnrIvWEClwEbQtz63T/fVs/mph3cGqNyR
	 HGJFu8QfWmepw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8041C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 01:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171876116281.7456.5921843575461692626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2ed449118c2169c6ab3794a1da62f9b73afa6c29d7c34a083188154f63933ac
Date: Wed, 19 Jun 2024 01:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718761162
