Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398E15477E
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770862494; cv=none; b=PFsbAWkMcNlVSF8iscdrxZWkNeAL1DUvcJFV1IfOIjvXKl7KYuJFwSnY18JcimjqV1kN0HtbhSyLtmgBBf2Ys06mZtD/j+kgbz0jN0R6bwABO29jaNsgbpKk4InD/PGd5jBvkVQWLCCyp/GGrKpGGY+n5zE8BYT8JfWk6TiPntU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770862494; c=relaxed/simple;
	bh=FheViViey8wWfl+FXb1WqhtnvL/H7nb6tWbLmQnTSm4=;
	h=To:Subject:From:Message-Id:Date; b=bh4jxEKEabIdq4enIg+mGBOgPFj5cjBjd51IYxOkdWtMww5mwCbkTZGAKneshYSyde7fS9DSQFSTl3Fahyll6HL6QKR/PlNFFsoYkkuNiN35XLYOpWvYQ0pImzxXpWEKfT3WW7buJ9NAp/JA/7hrFrDVJHUjWQXivBxofrIj63c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jpFVLF4t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jpFVLF4t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B094FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770862493;
	bh=FheViViey8wWfl+FXb1WqhtnvL/H7nb6tWbLmQnTSm4=;
	h=To:Subject:From:Date:From;
	b=jpFVLF4tEbp6xHUqoyNLYfQ+Hg0Ohe1u4Mkyb2yN4h9PzLLy1FxMpzrT0GJBQ9ZOE
	 V/dRhgxGfPyjB/xWxbW5Tt7VsTnaiHb4Kglzd7ewUTw7/++bCaYe6BYsRETI+Cjwy5
	 hjuytFIs7sJoNqJDJ9vIAy4ZepAr4KrdcC57+78DY/ntAnLIvUxvhAxyL348IIO17E
	 Nw7z871wVkMzzF6o9FHRy3zmFINTOTl4ABSx/RWFrcCOJ4+CbIV0Pc6glBI9JMYxLg
	 QAEj39p76+IkEIVG8y9iA77K+uWocVmGqju7DUS1IZwlNxuNnzbP6dNuH4Wen/yfpy
	 YTPHhqcCa1lPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F42ECD6F7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177086249359.9481.10936207261025730898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c3b910caa98dca0ba1f5a8e70894ca9dcd94c266514b46f1287cd2fb336c864
Date: Thu, 12 Feb 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770862493
