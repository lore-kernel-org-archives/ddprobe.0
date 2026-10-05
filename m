Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1A34D8DA0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791224434; cv=none; b=DMWUQhG0REabmv/vFKMaDyyAWD85abvXzuZEFay5YWCErPv9+d1Y9yao/EKoHCByU9U+Mifhm9xuwjRoUJHHI/dSsQqDx+J3W8rU8qGbu3yEwshwZEG169/iAZUfWDRfAIgTM0UxrBl/xPJS3UqlyxJGoZtimhs1eLXeu5iG8KI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791224434; c=relaxed/simple;
	bh=UAOaU6TFbxgTqW00svyfnNCuxYNXrMCABuoqpj0BLoU=;
	h=To:Subject:From:Message-Id:Date; b=grSUHVlofIC2BtnVueqqwszwQiPNTU1YCRziI5toAqv31r29pqqCFF+sbwzwHW44eZKBtGcY8vIUbHZ5gvd8mnn6hxxufaGqWrgyLLQGL50oaMqXQn/R4CbQzxConJxfXT/fHRucI1Ibdq04edejyKH9/8pYRAd6RcXnRyL/tys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hcOOWL3/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hcOOWL3/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7542C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791224433;
	bh=UAOaU6TFbxgTqW00svyfnNCuxYNXrMCABuoqpj0BLoU=;
	h=To:Subject:From:Date:From;
	b=hcOOWL3/8X81rRw9cWuPQGYA1tl6a7XfyFppNcCd5au8OLURCiTCMiN5JOMtECRH7
	 q71fZ9Zq7/Px9I16Dx2rVWGdf1E4bi1l2Q8iIWT7+1UpughwD9xxarwryS9nlNrIg7
	 uzORnn9aTDGrrl8CizFU3qaBIVJ+TJ3SDCGSwWmx9TgWXJJ3uGr8ELfGT10N2ZC4/g
	 vGzXscas/rsWX7tLP6wrQPF00dbm8JTrzeTPM+EbhnTsQD2H32ZxRdgf5fgJkE1j7S
	 VS3x1TjeJyt5jfUIpqmFs0Q4HKd354Zz6cK1cqbY5poJKjOmJ0ZwixvjdXJ5hFXXAy
	 /pvRahgOn2Z1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE15DCA5FFC
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179122443370.24562.6279959617316353891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa6ceabb059dd626adefa988e50f1c7d3c983a4157deb4fa5ed31a0d1bea34bb
Date: Mon, 05 Oct 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791224433
