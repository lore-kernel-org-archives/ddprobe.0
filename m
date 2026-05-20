Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 855353BED4A
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779315634; cv=none; b=fy+ZWRtB3AWndbbzxSsisonBE0v49Z+goTHHxg0SmsgS5QSyhDpmkHmOcOOBJ7fHdF97uSiodwxppAtexLkZ6YVlRYAhAATZXPUVnbTlaTws3SNn7ofd1VLrmmNFIF69gAVEorp5PbrfLotlByEmJ4DC0YF0l0xPz+4tplcq4KE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779315634; c=relaxed/simple;
	bh=6iSTbFO5WZj/H16nYzYHi9fiaBevl1UgVhjc66E1IBk=;
	h=To:Subject:From:Message-Id:Date; b=HSsFbW/RdSn5r02IYiRMubx5ATEH1wl6+ExveQQ3zW/d5sBC4FqjeHGUiFPSzQGkCN70FRPpPSir2CkI0iqYNng7AedI4D+W/iAWYarwCYjKPWrKI50DavW2Inbp/xNmf9iBXHk1AVdCjExvyc5FhTiF2JlHgv6fG+zcul5Pkmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oLNK6nS7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oLNK6nS7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2AC8C2BCC4
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779315633;
	bh=6iSTbFO5WZj/H16nYzYHi9fiaBevl1UgVhjc66E1IBk=;
	h=To:Subject:From:Date:From;
	b=oLNK6nS7a0dIXmswNXww1gvBqVoDAugBeUIoaWj/kBf/GoQLTBHou/res9AJjtXbs
	 JmqOfVTYihhRHuBAYOUDNq3ZVj8qtok5QB//8zmpvOXW8vTcZWImJBFsed/4ZkyOvo
	 1eRr2dITRJ/GcZgjqMh6GUVbmPVnBSb8jyoVdUGVgi/SLJDXRfw/A0so/jOCwyAEBj
	 +CSrMEaURkoW9w/pJtDTxetphO4m6ZSBBW5/wGlbXVBCFZjCPOumQxgLWscfJg3LpN
	 lAyz7aLIO23YFoA19TopkIgSZ7KcX49XESn9Qr2WlPHlxEUZGa4hCZaq2brZMfugZM
	 4iTZkTL1gka7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C115ACD4F3D
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177931563375.26979.6427814818171086659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 549fb5fce5def04aa7837ebde9e5f28f4ba8456f70166304a148bea6f412bdbb
Date: Wed, 20 May 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779315633
