Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDBE30FC3D
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771634694; cv=none; b=lRknijpawc/1Bi+SIWjKaK5Mi50HsjqvUIpo5BCQ7AGpCeLkgh1Vk57NrWupVj4wfOFCmWCEO+KkrgJ1TgikBUCRqU4YGpjmlhyWNdpb3I5FYk5Xgy1HXUgOAl288JWQyDDUIFvD1pCsOGzNpheA0cSzOBno/OPQPk78GvxPE1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771634694; c=relaxed/simple;
	bh=7rgeosNFXisGXR8srrjgB3cZuFGDjA/Yl4+MuEiDJ0Q=;
	h=To:Subject:From:Message-Id:Date; b=fWnTeQ9JfVvezx6d1ulDz3fx4aluNJw1TGyIXr1M0GZwhwzqyB4f8h9+AQyVNcdDSn7aI8ISySjI15RkbMguzJjXNHL1CIFQwNTCpiH2RRKtnFi+BFTYgkx0Zs0zsfBi1PLhYhCZLet4gaJq4pHFAZYTnl+9WDB8ubrDY7KTwDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SEnPI8bi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SEnPI8bi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE53EC116C6
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771634693;
	bh=7rgeosNFXisGXR8srrjgB3cZuFGDjA/Yl4+MuEiDJ0Q=;
	h=To:Subject:From:Date:From;
	b=SEnPI8bi2JyQr1W8xElZgu8W82o6iFyJw582cIMpKIFe7OiuY6kcAOQEnsNjc+QeA
	 2MeV+TeOadXD2G3c303qMaR71uJlGFCwFmBo7LxeKJAS5vm4JCxldoKAZg9gSZKH6+
	 HXcoA7Aw8RnF2Zzhj/w4tzCVtZW2m7+DkZnm/CahK4D5sghJ/2zKy22CYCQO3NtEHb
	 nZY0lXS65OjvMXJQSswOH4mvN3NarXPovseMMny8CxveHVX/CctXPx5OFBrdNqT2wr
	 22K5pbew5VpsNV1mmqND7kvIY2kyl5Ut8PYjJF2HWAr0Eknb7/ANjd5Mfvwtvpt+wb
	 oKv6yrng7bhgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B18BC5DF68
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177163469360.20849.14544786839826069156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d7ee92e8b282c1dce11af1fdd25ce1eea3e6390b962f1af17e1b75ca14c9f69
Date: Sat, 21 Feb 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771634693
