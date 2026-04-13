Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217F127467F
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 11:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776080854; cv=none; b=H6R48MSSbke0WuB1qUf+wW61ddsPAwdrlIdGSPr0Hq8V5TbWDTkKbVWaKsFHh5RjPQ7puUp4Y/lXTvkksCQzMtd2ztSOrzaVWhYh5KbctXKZldfEUnoldE6Tg1TbC1vkW4FgNfIsAhpycn664wd3DAzlAqSXtNuGpLovo+s5zFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776080854; c=relaxed/simple;
	bh=G+8/JgLcEwodd6BS9bo0UDrmI/8FxpUQxYQlpsDR9CE=;
	h=To:Subject:From:Message-Id:Date; b=GsfrhhFafmMNz6GhiZXKjTtiOeuZ0pVe1H8AtRBKgqfCCKH1AeEQ9M65qVwfbqDNN/jjLoIaJnl3U93UJlTNYZ2rQFYmo/0w/vp3RXETnF86LzsQuuqE1rXqnVypvQO3+pqr+kJFVy3Dzkqjrg4lKSQCgNVOeS91b6VgVR4e9ZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kHi1FCi7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kHi1FCi7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA231C19421
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 11:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776080853;
	bh=G+8/JgLcEwodd6BS9bo0UDrmI/8FxpUQxYQlpsDR9CE=;
	h=To:Subject:From:Date:From;
	b=kHi1FCi7XrBiYI8fEy5iu6UdwjzG/tV6YPY3QlFJnURTArqwVB9HByJzz4NZS9OBh
	 fzxhFOpwmH+U9kFNgUcAEj8AhmbxfzkPEC0dEsF7SY342uXDfteYetWSC6JzU6ZasK
	 6QtTR0oeuWDf+s6gvcovQyQf+39ahdeRZnHGQXOgH1LKDmdlMxzYZXauvYZPXfUfP2
	 sIBdwWwF4H6ifGEXpC/LWpcXVZJcBixhZxQHbxMRFC+AlDN1375RFvt/udnnMaloVP
	 vfUG3VaWv6X+ek9z+RFiWHzKlPQk7pLKOosTTbQStYBkWGVkUIRcoGaz/jZ+toasr3
	 8rXMgIS4nKnNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4D1F34C43
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 11:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177608085369.8535.10215127200955234468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29aba1adc22f210cc2c19a06d2949b57dfb3f30abb7caf23d910431b9ce65c04
Date: Mon, 13 Apr 2026 11:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776080853
