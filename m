Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05E111CD1E4
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758616794; cv=none; b=LgHWMw9fvrqDCagrdXe3rCfZyNothNilbgHcVBWoGCpzNLhUOzvCAmTR7OwUPP3nCzHfPefcMIYpPSE5DJpDbNBPPvc7uEXpFpCzOtJUwqysLK44NXzNoi/7wSjaU6P6zWfBFR/KsdUb6Bwgi66IH+0/3frUhC5gHXZqarCFr14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758616794; c=relaxed/simple;
	bh=a9rQ5srY88qG6fTzaw9W3H6aUMI1lCD5LfGypTQUCKM=;
	h=To:Subject:From:Message-Id:Date; b=Oy7m2CTZkSdRlkQugxwJ7uLo0FnpOSWStQtooaVvg/e4ltXWFCsr7zRfySit2xKGH/4K+4KmEnq/wVEgbtwaozBls2881AAghdeimFBf0xwU3A0qCCz8jEMYtyJDisxqWguJUsj1j1bhBcKm+vS80WtxWVeU/7vvoNTmwGydhGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n9KTqkSb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n9KTqkSb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC2AC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758616793;
	bh=a9rQ5srY88qG6fTzaw9W3H6aUMI1lCD5LfGypTQUCKM=;
	h=To:Subject:From:Date:From;
	b=n9KTqkSbGi5Ko4J3dHRVWK+Zj3brb5GXSBa9GUeVMq1TRdzDQUeTLyPL8vLkDMuQZ
	 aKEyU8/SeozdEoESFu1P0IA7NT0UOEyxvmy/1lg5QWUiUmgoClbrn1B30z5j7TFkQR
	 /rvTVfCA8w5aht0kHuM0daLJyYSEgWA8Ea/qBYPJL3IDxAqN6zG3Vdikf7e/T1JROT
	 +DA00p5mRmFZSCS7pEfYPz7EwN80h+P0cVq+mP3rsI2grnVGvMC/npGwtgTJs2vjlN
	 d3+MDG5zm4K6cl0NjBaL+WhCozP+l5KUQPZyXAlJfrZL8mcJbeuxNxTSLbu+27SIY1
	 5DwIJ4F2VcWeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE27CAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175861679357.28641.2149563794910190673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fffd99ab44534c8015a08170cb146750aa098e4e55b33e46a509c09e9d1b236f
Date: Tue, 23 Sep 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758616793
