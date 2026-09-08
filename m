Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53332577E53
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788885034; cv=none; b=hwsXR3BKo4DfbsCAkyubuPZcIrmNgnQB7xgJhOxUI0sUoooCTdYsMNxyTKACt1B2ZmCRiNyVlaoRsqWxOUEEBIrWzkc2BgkcBq3Bv1xmH+ra5I3FTcWKISLX0UVGdLSZsUGWBVTA48CyO5H4mcwnlHskiMYn6vo1slPMa0TZG60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788885034; c=relaxed/simple;
	bh=cjfvwPqEla0pUn0Oa7KU12r230oYd9t5lA4aJ/mqQQU=;
	h=To:Subject:From:Message-Id:Date; b=tqPR1jGLp0IXWIF7LB7GLzGdLJcjogNZ6hX3Czmg530ny2YU5v8kUxfg3DW2YAPovgmOZgvxyb0KFEdky6x0OUbx0dVksOXre9C6ZYtfikRpPaT8kpjArwkIGQouj7H99m6Cx0aGPIZie47ikCafHKFJIQd+YbR6qb2mke7eM9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JXpS/gIU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JXpS/gIU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFBBEC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788885033;
	bh=cjfvwPqEla0pUn0Oa7KU12r230oYd9t5lA4aJ/mqQQU=;
	h=To:Subject:From:Date:From;
	b=JXpS/gIUCUUbHS2FP9bxTHfAJud/vkyzdWSJHnvN0DIbjsWsPdVaYN27XE8QNFeLP
	 u2ga+onsCAbF8rohsjuwb/bKPAgEv5Vd7W6hPSz/7GzSjGn49+gLw1oV3RjERSSxlF
	 VrF08UtSOuw70SiiiOii8RxP9EJkU4PgUYSBTFGZwEIBJ4v53636N/qFLCdXnpEDwc
	 0r+BW+DSSheAnEGbnd6wolqBklQ/m2jZ90mjNiFHxK0R7uhlwe82RdQZLyYNYq/Agq
	 gaSr0bG9RMbyh29R4hzirBcIpO6TUhx/4o+FIL0Z0i3jBNAJKMshRGISejhzGtyyB/
	 CxeXeKbfcBzbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAE5EC79F9E
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178888503374.18247.1947326482963809774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d32168a147b84e9007f8e7ecf95d7aa40f160f3dabb09ffd0fcf840ac887bcff
Date: Tue, 08 Sep 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788885033
