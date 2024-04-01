Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D66CCDDB6
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711964296; cv=none; b=cfyU/KaYpronJoHhJC2K+4IC17SvLP33ZHkfttrmY5v0YkrcPR+87JiZ9UlgogLqek1OeaE3a2Z86XR5RJAe4nQ/VRM42Old5U+/C2wRIMSWF8vvvdnL/tBSDdp5t0d117zm+QHct0ibHlTIsomllm+F7ugAEgZnhVdgTNsEjyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711964296; c=relaxed/simple;
	bh=4aViDaxmur9ZW9bWlsVoRp7lgY9IAst2IDuh9dbhvJ0=;
	h=To:Subject:From:Message-Id:Date; b=HfAWPxsTOvyQ3NgkY1AvARnnKzHcdRUpgPuwQ+Tor3aLmjHyc9ZrNCaS5ri/kLckVegQBHhbLNrh3/WxwJqai4U5HE7T5Z8DEacecN8/LSeqLqclX4su/tz338HrG31EKVyOXkWGMOmWsEg2AoagDjClUJLzX+URFcZ2nqSVesQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QcW45jMx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QcW45jMx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E936C433C7
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711964296;
	bh=4aViDaxmur9ZW9bWlsVoRp7lgY9IAst2IDuh9dbhvJ0=;
	h=To:Subject:From:Date:From;
	b=QcW45jMxelICupb5iJrLhzsMVDZ7/+S1nyD2SpTbufrm148pJOwg3jw4Mn7zQGKGg
	 6pknV2rV9F7uKNr39KeSQScxb69gcQc6CNIfKbPR/gqIFZjvEXzOIay5JQ9tHI/hWU
	 APmJr4emnP1p6aYiqI6AT/QWp0YbygEvoEyWiy2GitI9S87c/0syCTOnWOYEnudgfr
	 U8qQ8vD+H+md8hTJpbu+KThS0cLFUEEJxpfTDBegdpThHe8vZwdyHhFWMoRYkFxgmQ
	 AEwhpDjAo8mjAxKkHv2D4Pkbq7ax1WgDiFOn3AwDigZrsaJu05CYQY/RgX9XXswPXx
	 H2A+d3s+s8buA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69445CD1283
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171196429640.14564.13782253345614332333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a5324d225edb9a33a53fd191bc8c568330c30f81bf9289c8de82b1ab1657009
Date: Mon, 01 Apr 2024 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711964296
