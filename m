Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 730E9347C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792381234; cv=none; b=ENbbP82jANW1sA9x/oeXbBFSmCO21K9krvRXtjKr0vhgpfu6/anRAPtfzDMEWBYbV49xCXzgjRHbn+L8zQ9p+L+gXsmjIBERj7HiuhuT37evPExAjgAiwQ3qqQXh/hlDoY5U05+k4SVKMTr+Kc+uX0V1KFCElzp15sxTdZ6rUtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792381234; c=relaxed/simple;
	bh=/YvWYf2M5MP/Ckyq5Iwz87E2nGC0JjEhGMoqjMxcMEU=;
	h=To:Subject:From:Message-Id:Date; b=HvObVeOqaDrBkG0nC2A49BEzNTGzmI9TYye+ppQGWMVZvBYUyDPGQGXKA80Wegn9wzjS5PEcGgraatygj+fDbHa9ZoRk9Clzp7ivDSlveowJv6NDlR98WnDG4/k8v291UP76sQJzN/xs+FQIhViddQ23ZygWD0pIQawV+tLAI6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L9j8T8zf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L9j8T8zf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 20895C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 03:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792381234;
	bh=/YvWYf2M5MP/Ckyq5Iwz87E2nGC0JjEhGMoqjMxcMEU=;
	h=To:Subject:From:Date:From;
	b=L9j8T8zf3vhnrG8Ngsuoc0BYfwZHon1nenjggvDY5oklHISjTV7VL8qRoV/KH6NsQ
	 j8t1KR2Tgx0xqAzr2g6h9dxcvKLxSE2a+hQZ5TmxNoOejalyunW9NWgt/XMDTHGPFe
	 qXMbXQi7/9Nt+DAEd9fFNkd5CPbhfWpfZs09HQ2qT0rR5mvwZpNSMzdmMhmM1zeSP0
	 1AMrA7iE0qQgSx2Kwj5UjUop1k3UsZKeHXGz3ny1jGGER8PBrEB9sgKpntvzzUef7Y
	 nVJhufrdycp4nxcrChhH3c+MG8CQgTVADxVgmCzt2OaZQkKOyeHGHMBsRsCVcuu1Fo
	 AGSLnqLc0Sq2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1898CCA46C
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179238123375.21170.8207489671386391266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69b09c547e2c39e6391266bc41a0444dbd4bd75068619e4c465da66a5fa96f24
Date: Mon, 19 Oct 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792381233
