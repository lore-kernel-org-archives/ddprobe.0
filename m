Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F3C2DB7A3
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774134894; cv=none; b=QDDT/rrzX0oX7hxxb1nd25Qf4DMLJJ4zQjT5U6Ts1q6PooLd8O8EvVM24YJe4tSyrMXdngYXDW628N6bDfbzKNK3ct8j6hEptREUZ9H+gjASFRqmKyVl5cJsJ+Q/tf5CVtGJ2vwWPRujx/ypCJMGAW7qthnr0stMTj2MKdSJzGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774134894; c=relaxed/simple;
	bh=i05HOJ1JFykOf0EjLM4InxBLGUk/89XacwqMC/iXu84=;
	h=To:Subject:From:Message-Id:Date; b=INp2C4dRpRw9Hp6xst4ZEGLjGpxvtv/HA8IkUb8B6UMHc+2qI6FWJcjai8UV601pQ9e3rkEChThK/VO8dUd0Bwx7N39IvK5zUOTg5200oALefYgFuQFJUX4PPRbUFn/KzUpLJe/ijI0zbL3CBpF0mncqAeG9YTb0RFGDBiMA+mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/lDRXRD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/lDRXRD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A345CC19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774134893;
	bh=i05HOJ1JFykOf0EjLM4InxBLGUk/89XacwqMC/iXu84=;
	h=To:Subject:From:Date:From;
	b=Q/lDRXRDTZ4LmeiBy56fe0LO+EHHnpOU8rS6i8TYQJjik57MmQH0NRpHgjtu7wjRl
	 dhUMuJ+bzgW3YcwPiTklW2ouDS27xOZZNigEp4ijq8suAu+e+Kla7QV1z6gbJNA8jZ
	 /VWl8V2K74tZsv1o/4UZGAL73grpzHo/D4JZLvZgjbb5PEFi5vESZ1/sFX87jVUUys
	 RlQwiE87IIkAn7NBcuURPCeO3Oy+UolayMw6D7kUD+dzTlnS5WFtbATslD5mLN7y7E
	 jyF9a50Yj1T9p49bFvdYUeliM49A5eUo9mD+fTXEEF/MiuGnHMF5whsnx1r7sToh1Z
	 wCgF1ovpfP+Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A8B109449D
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177413489357.29252.8478984338832413758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea59ce92cce0081c51b9648e2bc97387329561eeb078fec9ef1d8e0e5b73bf26
Date: Sat, 21 Mar 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774134893
