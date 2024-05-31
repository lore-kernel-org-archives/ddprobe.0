Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B6498173C
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 11:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717155263; cv=none; b=cuD2OVT8fCICYEdBRGf5tEppzOr8oeYkWzXfTeQ5D5pJqQ8qUCYxsS9oSSV7bQP3rsFaF2Hgado7Jm1WZxDYZhOmXcD5zrgfBUnnlAckRFPzNz51ovJaCOosJhrBA1m0Cup7GKeOfMReSJR6a8m4LsBhRab3hIleTICigfwiM6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717155263; c=relaxed/simple;
	bh=vmmzfotZmvSuu6YOn2UT5e45iFCJ67dzNVwBTDitJ0g=;
	h=To:Subject:From:Message-Id:Date; b=qp9KCfarIacQf235jhS0TrtcTWfSrr4xLuyC+GM/nx6BRLas94xXZLpmWMSPn+j5nTJeqGEDpVKVptYm6Ue3FrBhYmyoMnjPDjeRzgjeTQvo/M8zyzddkAYpCx6u6JOjqIsfZXoUjBfuDPAHq7kztILwGebFg5XoCJS4p3uCHN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGlGELHT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YGlGELHT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF76DC116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 11:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717155262;
	bh=vmmzfotZmvSuu6YOn2UT5e45iFCJ67dzNVwBTDitJ0g=;
	h=To:Subject:From:Date:From;
	b=YGlGELHTcIqlOB9k04WO7BxSIUhTId5I15qi7tB1pA1eHYrweTIAfnSv1x7S4tBW6
	 ulLKTxGKFVL69kESZ3M2s7s3XanPOT2rnWcU0feNglgQH2AT7zv91kzoSNbqm355oe
	 vxSk26eC7KkdzGzwyjgO84mNXx5gYoC9UhtSEaPXrPxxSChHyphvyrp7w2YRKjxh8W
	 UdzhCP6s08Lia3R8GpcMfED094HY0GVIqo15WABOkHwh52V9W07lo6zz+bgDQFjm+j
	 wvqjTztNbmVJLk+P2j9ynbvdbqiJ0e/Ih8yj8s/ye4vt4EyHuRabZZ6OzlxzRcxiZj
	 RpLWGa9l8429A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8011C25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 11:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171715526280.19281.646136679340176598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34c25734b2aa67b28e22400bfb65fb31c893131a49e4362570d57797484e795e
Date: Fri, 31 May 2024 11:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717155262
