Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2692A1E51D
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730358954; cv=none; b=DIyuSr/eg+dalb3HXmofSqk37sqH2xQF9wnqdGI7DjHcfasDLrRF76c9i41bQHjyk0yhDluYG3Oqh4kr+0db0XrIXw0qeQh1nR4RNDxFF93BL82aowoliahXDD0dLEHzYPt0F2m6osgf/WvUdXyOEUABjCdAPK6Uv/+rZXX+U+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730358954; c=relaxed/simple;
	bh=26zvkVX6HjOLV+2gBHGMMSZqMYSWLu50Wow82OotVC0=;
	h=To:Subject:From:Message-Id:Date; b=Qwx+qrl5azzOEYNKFv+RtxzxFbxjKChIy5USfW/NdrqPH3pWwAuMRIBkj3NMc8J33kqHle9TjkDKr9Vmcrt6TQ4zqfMYusHGxnKOKIBG7YieRlNJtKyIeDBZuXG/Bqj+kyPrOdTFwWt3Oej9LsyX3bfzrtlZqxB2xDaBWJPqTYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FCRk53Yg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FCRk53Yg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA65BC4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730358953;
	bh=26zvkVX6HjOLV+2gBHGMMSZqMYSWLu50Wow82OotVC0=;
	h=To:Subject:From:Date:From;
	b=FCRk53YgRW2NZNUmo/vE7FYoSEj80HMFyuRtxedqDH0WcBn8nZe+WrOP1s9ixWWpg
	 O54a2Hg4uypOJL3fb+MR9S8+D6jWv0WEhkgMWvNaJsyGiK1D3OKaJH6ZpY2CS7CX+j
	 mr7Fw6NDtioLMJ4PZYJy2p71l4736AcTVDaSMjn6oli5DiRA9scgL+4WjsFMEHknXc
	 HY/ks1J6BrO95dstmOIp9uKbLZH1cX9fcQx3ju4Srf+cYAdj3nY0Lcq0yrWx2WPjKL
	 GmHhDkJvncXqPHPgpbxJJuU0M9j7osCVC2ShfD+C6sKeCNv1IYvzdG9WoTgWFHYmb+
	 qIse5CG0VWHuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B8AE68956
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173035895360.18116.11977505661701756155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fdf312d740a95fd5db16b28b033e9b1dae4670ddda7aae7ad5bda22dbae0a83
Date: Thu, 31 Oct 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730358953
