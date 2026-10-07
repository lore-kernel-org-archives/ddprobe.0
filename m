Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D02F4BCAA5
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791387634; cv=none; b=qwKym15yPdp6I5k7RY6+OGSBVRGOqyc2+0sCWYhqDKfQ3XWwW0O6CYxior1P+ZUCRGNY+3J1HLnx01mvki41SyVC9WG8hTLSS1NABIzHN+wOxbzLq0ITNOFqElwkILm/ACwqz9QDwQnJ6+nD2nMWuvmhnsRKuC9KwJS5fC1gQLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791387634; c=relaxed/simple;
	bh=aj1f0pVBZZOSrtBICc6GCma2kcfQHkE2AZQV2L26nNY=;
	h=To:Subject:From:Message-Id:Date; b=inoUoCih3NcuElgE3l3vig62HO0gVmWPsMsS+EM1eHq+/nZ8t3Kc+hhmpT0bRQRuCckpXLTk+5JPwqN81wsMQyKCaBrnQcff2kSAa6jKTIoTJEq46aZg407jI5zF2mcm/gg87JnFXurWmgKd+Xivg6rNqyTWy+vB/1n8sHV84R0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Niav7CMb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Niav7CMb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1DA3C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791387633;
	bh=aj1f0pVBZZOSrtBICc6GCma2kcfQHkE2AZQV2L26nNY=;
	h=To:Subject:From:Date:From;
	b=Niav7CMbaTDS1Z4Dkl6eUuqqpSlLxKr1g3iMcN0oTogtBEUZOCbvEP45Fm3by7QiP
	 wEMDv+WX3qMVZ9DUB0t5kZIvHhMxLhEiteI+m3yOgTnPaozUfgQFBjC7i6cripQ7Hb
	 CEmPJ3jyQs1Pq9pgnDBIT6DJ1/2bUUTt0vtb2Hxq5H9XVqFnte5cj/er/Vg3DLzcRT
	 MrDWcFrPeefg4zycXdMQqd/aZ6oCSheJ6YPT1Mfyl93rDm2/FBECa0KrlqPW1ayK33
	 I+ciuJyE8/NMoJ6lXHj8vEdQbUyfthx6G+FrbQOEj4Rj16kYW0ba+iTlz5Npm2RgOY
	 PlXBlKHf3e0xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7DBCA5FFC
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179138763369.28154.16063419292342452155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 075a0c90bae4efb2e864c20837ba16fe2308785aabf72f5c88e9b111528d70a9
Date: Wed, 07 Oct 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791387633
