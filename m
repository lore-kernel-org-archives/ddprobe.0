Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262BA1F12F4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747151994; cv=none; b=MDDvbTNs4OureZsdPl9fj63Si38Xhvhg6fdu23PtCR/IYHEs+xVoWv+Lgbi6+EZ0D9foLIUTc3Lk7gdOPKBezlo7r0fIIzESEVaE2GsZYeQ5Dx5zrAEODRBmq0r0FXfW1sX9Divuz46vm8PHncKRatYNYnv/tY/sylO6CFYwSj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747151994; c=relaxed/simple;
	bh=thPlb6JC0rTnu0cbhWSl12mCaK2uXyynsMpg+TQbrM0=;
	h=To:Subject:From:Message-Id:Date; b=fQrZPY9r+K0VRLgoL4LSBNlkVjbyJDGN/H4H/DMG0Z9O4zpXyz3l52lrPDa9WycD7d6MZ1PuSlKCMpySnetQ78K0WczRgX1fbIFIJnt6NdnOSqgiANVl9T/ELOMS1MQKYEg+T8ukuevbuvmIJSyLysjDhUgPPBpSsI/3MhlLVw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F6ccpS0J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F6ccpS0J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F062C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747151993;
	bh=thPlb6JC0rTnu0cbhWSl12mCaK2uXyynsMpg+TQbrM0=;
	h=To:Subject:From:Date:From;
	b=F6ccpS0J6pN7kK4+2tpPNumdp32wDyk2FFjZq8CtURLKD+QJzKqajFW0HycoXhv3m
	 1OoFHVnC6B6RzRs1eHkIoDWH886MsSTzaWLgJ2MJperki6LLrL3j2I5OphD47E/47y
	 t3TgDY1stRKL2E5ykrXMDfDlg78zS1goj6peFJ8i7gYYgSaBSKcZtW9J+ZLYyBX6Ez
	 AhToNlQCm8sRWwrVb8TjLLBQBlspneksjSexb+KVSeBuFptsVOw2PrIaVd9Iwn6czt
	 EfpD9Vl7Mz/2xy0sSFE7KcrfUYaiVganDiZKUpT+ighN2u+/oEpMy5j3cwkUA3cIlK
	 2AnZBDpzcvLrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E558C3ABCC
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174715199357.5424.12266138502554590401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72dda86fd83a1625901885b5be3bfa4c30a147bf2d52e720611333a3eb11e1d0
Date: Tue, 13 May 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747151993
