Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4E228504D
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772188494; cv=none; b=KQLu0kau0x31vsZWwB4naXUhW6L94RVznghQE+0aVHF+5hnGwaI7rvQU/0fUiLtaoECInuBwYMAA9mIJ5PAwMGquVk2WjAWCvMtuBl6cqQQ63i3qHKIBlfKNMCj2M2FytNO8fw5oFQQtryiFG94yjSZ+uOs2e0Tjl12NI+X2Fa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772188494; c=relaxed/simple;
	bh=BtnZdijxH3Q2pQoq4frj6tyxCWmD83tOkqQljvdU9No=;
	h=To:Subject:From:Message-Id:Date; b=CJFs3lN3x2x67FZJrdlbtryoKZAqzA88ZdYOYSCO97MqB/HRo9QNKNKW71EAkR/7pRzFhbOOWag8qW68EN5uxPrAghMR+SjSARWd09FPPPcYeVEiOeOqFBjyN8XG9Igx6HzapxDBkO17po7733G4C3icZjem6svlsrtDsPojFx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VSTXKsLH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VSTXKsLH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEDFC19425
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772188493;
	bh=BtnZdijxH3Q2pQoq4frj6tyxCWmD83tOkqQljvdU9No=;
	h=To:Subject:From:Date:From;
	b=VSTXKsLHbztBFXr0/dbvkxvHAirg2mWLaNEx412RUJ3Fdjztw95Sq2JIf81zBwer0
	 FneVAcbDwyAEjyMK6/gf10UAlgNzUbdsQIX9dagBc02W+ykJOHHnBD4WUaJid3TlCp
	 RlkGUIvdXLJtPjBArtquAFocE7ltM7Xd4CDAvUzaSMUN54umTMWGQbmDRkHrBvnahR
	 0+f8kY/30U/ezNn9wfV2mVudCW3TPtDA7UjWKnimnYY805KrB6seNU+wOys59XZPhw
	 KTlH8JFIAPj/4xNV/RjVUZTF0Pqt+k3QtDNvH/eNjKBbBkY5Jx+PbqaFXOZr7OhpQt
	 CdfdFJvMy/V3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BA2FD7F91
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177218849358.30212.5321647547757109662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fd9ed41c117155f0aacdbde2561d442e3ea7d028e91e29752e2a205fb74a5be
Date: Fri, 27 Feb 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772188493
