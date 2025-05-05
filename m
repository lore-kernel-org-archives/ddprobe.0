Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3C114B965
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746430194; cv=none; b=jqLq2gqgXUl2NiwU+XHlSgpZhJUAVq5aSZVcpbasb7qPrXsi4HRO8FmQy6VwcD4sISN4Qhc2/6iRXVn+U+8/nclrlg9uxDp1yboIF50KBDYZXop6dah7jD/XcIkEXoLDSjOzIlNGzjwrTyEEjCXqqc4XrybOzH4f35fXLJW4EBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746430194; c=relaxed/simple;
	bh=sFQ2ojz/KcsmChaK/OdFL51/4OYpz7aGE6l7xiHTA+o=;
	h=To:Subject:From:Message-Id:Date; b=Jt3vm8w4gNDgFS0FqZqOgdzXmaQB0RNyKtuRUezXPzjiLs5qr08+EKxishMcW05VJC6WSwnRc2UAzGfJfm2b4uqtjTWI3OyolsCcFBbZvLUpkro6PmrICyE4LlcmDOyfs1CkjFNORrD9BSC7AXqQ83RR13xVHzFHGPl2L5E0fQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d0WN9GSw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d0WN9GSw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E553C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746430193;
	bh=sFQ2ojz/KcsmChaK/OdFL51/4OYpz7aGE6l7xiHTA+o=;
	h=To:Subject:From:Date:From;
	b=d0WN9GSwslLILXF5SyuoniV0H+/whYP11XibjPOx0v7XBenmYEbmRgZvqTw3wQpbJ
	 Dxtkh13FBhRpdkIneXhTkCG8f+CbIPhwvG3v0XwNNoZ6UhPDsQtTvdvvpqjGeOrF7w
	 TOAu6RW7DjZZc219DuvSJSBPATvXLbLAMP7gvDTm9Abu9co2Zojvy+7+GDBVryZaNi
	 N4hbMaSx+TQNvXTub7rdgf7HJPbUYHc1FfEekxGraATcglqwRsyFJy/Rl54Z1EByhv
	 dySY20kL9kbhSb8IduAFwJ4V3jDPLgLkvgrHwbixSfM/MCeV2rHtHCLb5HHOLYeMHe
	 ikHDZ3F/Jhvxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F529C3ABB0
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174643019357.18080.16882220022387801517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e485a14f3ad6f8e0d089175ba29514e88361cd1884f001a8f54cd4f280d4c46
Date: Mon, 05 May 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746430193
