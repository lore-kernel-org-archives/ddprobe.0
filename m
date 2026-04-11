Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3711135979
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 12:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775909854; cv=none; b=mSbUhaN5nMrDa2NXACJ7u0R/59lGDWldasevZIg8vqcnBvs4eIQRAminaRIaCr2dyFY34bajL76dyxxRnxO4qMKepo1t67UIK+YLXXtOkfyBcpvEMykCvZ2GpXU+O6NEm9wIhJjPFfpyMGp2GTllXmwS0ZmeBvODwKmlMFsjJYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775909854; c=relaxed/simple;
	bh=8E02UpQbGHxR4fl/OSqH8fygBN6Pyba0yLCQx3iUMos=;
	h=To:Subject:From:Message-Id:Date; b=kgYkZY72fjPx1B/4D2EikVUd7zNVgp1ZywVpL8NB/pcl/B4s51ql949i5iaFYlstq3/HOemYFD/tyo2gMGe+yEuk2KTN4Mr08UOlcZeU26l2lC6nrnE27GbYclNV0ebhE/OedjcPzW9aGHeYIQWc9BzjTMIlJrJLa0BGPmyvRB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YHCvSnkc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YHCvSnkc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1BBEC116C6
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 12:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775909853;
	bh=8E02UpQbGHxR4fl/OSqH8fygBN6Pyba0yLCQx3iUMos=;
	h=To:Subject:From:Date:From;
	b=YHCvSnkcfbzlbGkDbSphTeS8v9hbG14mGNDRQc6L91oiIO+k+9g53+NbtoY2du8PM
	 6WAjeeBQfcT/xUb6G5zLQMbnOezHHjHxfmiKrUIekdbQSMJ6BZ8zDcnDanMAAly9LO
	 uwTV23YOIUsq+piT9sPLCFCobZwajKuBxOrkvOtL9kByq3Jgvx+S+dga2jM5BaRzFz
	 J2PjBYswasy91SJptZx2QqKUc0WlT0TnkK4NB/MKSOhGQc/YCKuTAd8yiuIppa7pP0
	 XsbMvW0seACY7kg9TTdgzrdcM561BokClvSlUu467K5wI347fxjB7sx4bIdfFW204D
	 G/TnPfQ2dKvFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD620F3ED43
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 12:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177590985368.10767.17450889921241686092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73d4091d99f85c6cfb754475f922be59332e63add222ad8077663717069542d6
Date: Sat, 11 Apr 2026 12:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775909853
