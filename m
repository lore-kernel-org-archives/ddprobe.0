Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 644E5205E07
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 00:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713657623; cv=none; b=Qpr4IjF0eD/SQrsUvAYtW8maN+g11sDdgk+OafCpbjBZSax2GQV2qfH/UggR6CKyHZioj7qj7DbR3CvndsIdfOOYxsl5WRZdZRrD7gq0PXvjTwPCelCuV4O7ODmXrNxjYNvcDguoIXTMxQK3K1h+mRcu+K94VIXH8ngWah8ssug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713657623; c=relaxed/simple;
	bh=OJdJ/KTG84DMCnsbbMcOFXAR3sBbrqL6EysIBBqET9E=;
	h=To:Subject:From:Message-Id:Date; b=ibhipkIEe0hmEhiWbgUU9/v9yT6FoOlBA5UN0vnmyALkC+8aEpJj/674s6nX6Mz9Zt04Q10tJKY1MseX9sUGj52GKzWDgGei+bCLERR/DVNE5kFW02G03l5oOrOh4FeYhlRld0izz0YnFCyR3tQsxrI4L+9vqkLoeX4JBRpp0qQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U/pjXVr1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U/pjXVr1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE6B4C072AA
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 00:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713657622;
	bh=OJdJ/KTG84DMCnsbbMcOFXAR3sBbrqL6EysIBBqET9E=;
	h=To:Subject:From:Date:From;
	b=U/pjXVr1dzQZPLNu5RefpAHr+aXX1h7RDV52Tj6uzySUpnS+P/Cp5tVQqE+LEnB/Z
	 y6o184KspyFWCblilCPO15lv96FghbMcivV7X2QaPTEh52UzuSFdjf+e3ht3Rz+0Xs
	 DAt3+rGIA5eUx/XvflqorzdX1HHuhg1/poTEHXHdhQhqKobvlWNAhGQVRxX+1CmCBg
	 aG4VQy2qlsFIPzKq8GOxfcvy1Qcj4/wU8PuZNTsdx71J4qsV00ACXKhuaZBx3l9VOq
	 s+g1BHDwSceumgo/K6C2CSfKf6H19h3gvnJ2LVjqpsQWyXuSQ2vj7WTxVZHoOTDwV0
	 HYTR7dzcaORSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C34E6C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 00:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171365762277.7450.2040391403589540555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffd88c76c668f0f43df0ae121476b6f2475b1ab8b0043c9c836afc1189664ce2
Date: Sun, 21 Apr 2024 00:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713657622
