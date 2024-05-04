Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55CB81E871
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 17:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714843943; cv=none; b=ZBF8Tru1QDpRTEXhXlQLA5cdwdEdSIJmOWoDlMIOAoV3RepeAufImEzZBcUrLxtIjXUrtlArQunuwDRZQ1fXqoAerjNh7O2K/venmYFDAutJN2cueToubAwEus3BqVB+9AXnoDg3oh6nxeVATk34tWVQYjSck1j+E+CTkPdRuXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714843943; c=relaxed/simple;
	bh=15zwEougTkhJ2YO+HhFvjpcmfVLsmNm9q1Fk199Daac=;
	h=To:Subject:From:Message-Id:Date; b=kKEPWtlvoALQieeNcuvyZSEXT7MWDLd9UgfcjqySW7D3CcarSHp+6uUFbTov9RooIv4J7dUNUyjZxn3TtPLM1czxt9Neh8EdbKguFtSfHfOJowCAsmQFBbmIghYS2sqCCwFu5+L9Lcewva/JdAaKpuQhshkraA6AWBPp7DlDEYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k+6a0CZE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k+6a0CZE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0BDC072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 17:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714843942;
	bh=15zwEougTkhJ2YO+HhFvjpcmfVLsmNm9q1Fk199Daac=;
	h=To:Subject:From:Date:From;
	b=k+6a0CZE629YlvqvxObA9Lhdbw/yy4re7lqgGtJ1KJHlRPWXb6UPu6Nc8/W980AZ1
	 xhzV2cPKf3v076ZzdcmUUCbhNrUV5VlUHuCanus9e02wZpUE5I+ebcAv1eAcnpJ92+
	 NRmzVFptnQ10CTcswmABdJ7qzk30n0ZDmU0Zl4e16NMyaiFo7IelFk/p06Awxhwyrw
	 C8oIaDt3Ia6ViM42XdTVeASQ8QfyjRcge64BuFQCWUlt3impy4P2ZVGAj+Z8O7WmPV
	 dMmv0uK/V/6r8rr71NYHQFw3+OvH7deeVpeZCaqVUZFtTQ4C7+7EIfc6HTlshjGnZe
	 MwzOYs2C+KpPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC916C10F1A
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 17:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171484394276.25650.3126872057347645826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2567df2a69f5942658c5446847c2268dfb398efa46d63acb6ff0095a3f31933d
Date: Sat, 04 May 2024 17:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714843942
