Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 071AF364EA2
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774252494; cv=none; b=FcGr9jkLuewg73iWTlKv2hhLA1taut8R/6mAc9CM7y4hpJvbHkK1tuSfx4z9kh0pbXj99hvmfOkCPD61/fTxGmMu11oZfpQIMM8hFGKMr7ojU1uMxI59z7QiIw7WEJrWsFf9cg8rqlMI+BTW2rHIyOY8oEwP52vgKDxOpIjIXuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774252494; c=relaxed/simple;
	bh=sO+FZaE4JPwhJjInNqHNP6ZTs85dpzQYm3fz/2gn+0M=;
	h=To:Subject:From:Message-Id:Date; b=VWneG3YIfFZu74OrqAFnA/WOgl4x4MNZNRdCXgfhCx3sqm9EEoGU8DmLDl2TX240amcyQX4C0C3PC2ynJ7n6Gl8IdpOBtUgC7LBCjWGtgZeIZjBNe6uyTwr0rauCxvZObFOq/N3/hI30RZqaneA8Gxt7xmRhn34Y73++oKeijJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bvurJwH2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bvurJwH2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3529C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774252493;
	bh=sO+FZaE4JPwhJjInNqHNP6ZTs85dpzQYm3fz/2gn+0M=;
	h=To:Subject:From:Date:From;
	b=bvurJwH2i5Xzjbyy+CWl36JI+nIwZhlIjV4Ol3H0E5N5+FO/IkHuneW7kZZenn3nk
	 KjnSdWZhxN/ah+hNzu271hSq/figPPOdseFAiQzPju90ndUUXjuINaVzY3wVpLVWJB
	 EA7w9RBtiNM75yggOJQ+EEPr7dsUY0mhl/WIek5hoi279m1wkNKZz2fGj9gJbfju+5
	 SluLt0hOsBvVVXxx0+r3F03clVy/iOuI42mEP5htXpyyPgW9IT+ppw8ZsRq4Y+a6qs
	 yI0h30EUNA+Si9bUBhtu8ld0QkmiZVfdMEjbtNa68Hfgt1k1622fM/IzyWTmgLvDkR
	 gDXHgPXXu4MSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9157AEC01A1
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177425249358.20109.8253177038836953098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e90ec5fe78fe4a58f77b3403bebae232210db21a8c5a9d612aa828e52737f98
Date: Mon, 23 Mar 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774252493
