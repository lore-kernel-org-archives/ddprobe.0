Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370EE30CD95
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 03:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781233594; cv=none; b=QR2Yrj0aEczhTIhYekSdEJR1W8gxzIW8e4qIghDukfzfpytRytbmCNB9lTwkORHx46ldpexgKjWWXaZVLHA9v/uNSj/Ll740QnJQDLdBBJS6XMczU5SmLjn5thziFFL9Bjn+q/qB8XrKhi8yApRLuRwgYNYFj6v9+shR2zA763s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781233594; c=relaxed/simple;
	bh=M02TnUsNwh2DfjyYR0W7IWeFnO4BCJ5Cm6DsVmVqna4=;
	h=To:Subject:From:Message-Id:Date; b=fmN+DjTtzWYgSfshDvS8JtLmlNrg4kxJRgbsoFbNRw/JTT4PeeYH6Nxe1I7yNANHnGHhuK/Ftwc7XELsFp7fpuwULK96Ci/bTWS7oUW0Q+S8Tga3WlHy9iGM9Jve+KihIWUG17vwBE9WPAvI+8FTDxu90BqcAzX+gFSIlxfBniU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qtZKz9Im; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qtZKz9Im"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C72D9C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 03:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781233593;
	bh=M02TnUsNwh2DfjyYR0W7IWeFnO4BCJ5Cm6DsVmVqna4=;
	h=To:Subject:From:Date:From;
	b=qtZKz9ImjRQgDRo3lcFLVikxHvRJ3Y/9WiXKr+YYG4GB8QVto7b7Z4OedDGqbRtDT
	 gGm9xDUfbLsYbPuOjKM2lxm/gVJddiDV7a5E8VERtP0fDx20BQ2dxIJXQHoc7RnqIZ
	 5dOCf1t/czc3wQyirgoyWpq4MT/hbbS5lXmFKL1poV0bdG3vJqf4CTfSHk6bCOErCF
	 lHjb+Y0cJcv3MZCih0OByYj3g2RtE9X/zhXX+/1g3/88gODOGRslxGXCaBuowSMsqg
	 ewiKmfrBE3DSr91OWylKWefFw61PM1EoLXVTp5EQApeNEkJ4bs0/cfrtT6c++5ur/5
	 vpxrXuRJMapYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB837CD98CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 03:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178123359369.13048.14479868730279290181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12fca0f28c020f2ec9791f13566ee655ff40c89b5fa966b5c6d2f7f2754584bc
Date: Fri, 12 Jun 2026 03:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781233593
