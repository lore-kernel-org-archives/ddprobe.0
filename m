Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95F654A2D
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757308195; cv=none; b=oY/G2+vJaz6WIUpynChM7l4fQhOAtGgjYo2Jru36EJg0F82FN7/B5kZOpVw6C9h+xeBA8v2u/fGVzcHJHKVikgZBsxQpMNDuy0fU4IOhgi9D8jiEymH6X1qx+obituIFrVWVdddTvnAc/4voqEwPKFmnffzUaLyDIRmBIfBQt14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757308195; c=relaxed/simple;
	bh=NxhKohY5QwQnPt6Ttrc2yn/0uvj+qA9GmrPDTqOVREE=;
	h=To:Subject:From:Message-Id:Date; b=V5Sq+ULCwSpA/7C9IQWlImM89Fh62wBabBvJc19bwRwC5U/MbHM9B9XJ7rLgZvYQ3AMo2jTXZau2B7jbAuanMNlKQlUS/NL5ew66p7UZ5shstlasZCr0acnZoydFfnSwrw2VVHV422lWFIh+yVs41CUzqQGZbfU1jWmexFS7Vb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TR/prkzJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TR/prkzJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF52C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757308193;
	bh=NxhKohY5QwQnPt6Ttrc2yn/0uvj+qA9GmrPDTqOVREE=;
	h=To:Subject:From:Date:From;
	b=TR/prkzJiupQmAA071sl20U5yyf5OI37gJqBlhd4MJUqVSlMYDK4pktr4ekgQOf3V
	 qZ1pxItxmv85MnnMj6miOWHIHh73oFvNeKiHUr8L2hIubOoZ1EVxMF/WX8pyChJnBa
	 OLUEcRCNUubxN25Z7X6xElRukTAeIVgVQYGnsE3NfOnJY4smoQpRRqLzYLOefHVzqP
	 bX04RdCKvLcZIFfVtscXFHgUUZoy8T95L9WCNAJ2TwSf6y8Dfd3js5L7YMre6DmVRv
	 LOluyPzVzv+WFfbM8jPW1RL464VagPXk9AbFuhP0+CMYEQvwT/McS77srRBZPArehr
	 w/qRgkoxcOdjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F207CA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175730819357.9364.3335380609762993645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2bbf4ba33a8a2ac2f614aad3c94567525690f13c6f9b1453cdba00ce34a9d6f
Date: Mon, 08 Sep 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757308193
