Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4764D2EC096
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 05:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763701314; cv=none; b=iV0WF3dm5nicblljf19l0fy7c8guN+0ksmcwNB/Kq+XX+CBywfZcJch7dwxhAoptyTfDO4z0A37Ix3zvXnTUzphnHyEwediDymxdqRrgj1SqXgWYox4jFz3kdIFy12YUjGL018I73mldVzQQK57fcb6rMjOTQQ7Pi2K7syFwqRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763701314; c=relaxed/simple;
	bh=KkiP7zclpXFwcbvaDkt1w1nu3NCQ2ZDveJ7NKdPM2K4=;
	h=To:Subject:From:Message-Id:Date; b=DFA9QUbAbcItxipOG70rtXNiC+abD5aqGOqzM4sOj+YttHGd2IQWr0C7Do2Is1aQ7osLO0rpbYqf8YiM/0tv4zLp6TvXS/c6Wh2GwrMwZIj+gToicuLSbZlGDDVNVv41kUk+QENxNrm8Adp75ie6wHXPfMSz+DRxgJsR9I02gX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ljd5W6hG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ljd5W6hG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB75FC4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 05:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763701313;
	bh=KkiP7zclpXFwcbvaDkt1w1nu3NCQ2ZDveJ7NKdPM2K4=;
	h=To:Subject:From:Date:From;
	b=ljd5W6hGyb/m6i9hIhNsaTWfPoGVS8ZxDgtPMVNo5xeSibsHW5almBYWJDZbM1apT
	 9hvbLtNewdaWpou0SAaTZweGjwU6iwfxzMW69ZOML87C6SiiMAh1tQg+m4lJlkAouk
	 jN5SVZYob016Qlm1yoATwRxQjdjy+9SgS8FPYtq2/jcy3ur7QD5mW0GS1apzcd3s2r
	 6wvgcymDabWFc+xEqk74gjRASbX4JvsiIJ+Sauuj80hTe37O4TWU9INV3Ssz5lyEA1
	 LljNhjAS0Rzt8af0/FQscmPb0cL99mVJmOgGMDlXWuNNnAE5eHvk20IDDxV0brx9D1
	 BPR1dW9O2/Lgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913BECFA46E
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 05:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176370131358.23747.12155477299886250723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79c4c1ebf55409d6088b21100995f80967987ef3398da29761bddbdddf89f9e2
Date: Fri, 21 Nov 2025 05:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763701313
