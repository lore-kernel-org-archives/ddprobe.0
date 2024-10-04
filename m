Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3290F26281
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728012354; cv=none; b=ioW7ikx27kX2VWeJgR2A9FdE7sEujtGrr72kc5iSeK9fwE1X9QyTlUyUvShERKwwGrwqKxmX14QEMLejsM2gVenhk0PBS40HUXq7qI4PLjGUNk1urit24aEfFbUenWzxa/msR4K8N0uw4xwNexMvoZTsAcOQLKWThx5EdJnYcuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728012354; c=relaxed/simple;
	bh=ZnkfyE3hRiHKTYs1PKAAms9epUrc/nWBICdP3gbHtDk=;
	h=To:Subject:From:Message-Id:Date; b=JIfMNsnSrJTdLxQw1h2i57l2ZUBts3L4fJaDiI/slJklZnQRHY+QhXprIoDn83CSQ4tuqwLc8vgsLjbenrnp9i7EKF3aqQy076XMrivPE+qVK2o8af2xJzqEFJRpDMZITGdFKNbIJ9gqP3IOOHm49+Mp3mlY+lNB0HcPX9AVDdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jYgU0s5E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jYgU0s5E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B39D7C4CEC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728012353;
	bh=ZnkfyE3hRiHKTYs1PKAAms9epUrc/nWBICdP3gbHtDk=;
	h=To:Subject:From:Date:From;
	b=jYgU0s5EWAyt9fAlLbxdpSOsQlUbGKn0TKGZkNJxyFOGkU/nJgUmOHwS+Ut9i7xeL
	 afbjXg418Tmc1xfgwwbPejw224NykRTdX3Xcs+aLjV+S+udMobvGT/4gjXeNpsKW1n
	 gLpK3QFod8ybI6SvPzbvdThpi+Fq/lQgcPpqw45pVAZfCL6SmYbF1wj/hpDr+n/5oI
	 JeVLy2hsi+8018kTETUdAfmnlGCUr7p4+TWGjeSNZPf7kaKtNC9CGLi2hmkjfdw8oz
	 yi45GMUrrwiOa3xd19Z/taRkOyL36prB5jCv5UA0a3I/Pb+q+PN39Adpyw1yU+6MY2
	 Zdj46cap0/EUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F5C2CFA740
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172801235364.24979.9621370394040353667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7c3d80a13b43f4ca9b692a92148a5432aeb7c6fe8e0cd9ea8b7a7cb0dc1b44a
Date: Fri, 04 Oct 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728012353
