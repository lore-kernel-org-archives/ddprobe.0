Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADC97F9
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734976554; cv=none; b=UBJe1SzoJ4EHafsVdZWjd3ZBlO0ryD5uDKSwKGvc8BKWAjqqtAtXDr38aUgE8rbJlRT0DCZyAd6RPyQsPn/27A/ht9Nx7RcIdMYkob8IlmYM9QGqwUkjb8WBNeihsNAXqk/ZsJHK3hpFkB62LcxA4vfW3vrifUVk+umDmrRqiHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734976554; c=relaxed/simple;
	bh=yPVIVqomV+3CS1UtiJfUVuveEQumCIs5bvZOO+eKQWM=;
	h=To:Subject:From:Message-Id:Date; b=YnSw/jFe8qnzxOAcmFlX+ULb+WsFuFAcuLLyMRH28hRicSbTx3Z+dYz8d1qBXrajXl7A5gWomhSko0BBIyNjflhqcNXX2lepg+NrgDl70nLt0zyzh1JgQFjfA9LqbUUpGMMwo+ClQgHF02xm4dGrOPCI/BF0YB5E9ce2JfIGrXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QeRBZVjD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QeRBZVjD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B88D3C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734976553;
	bh=yPVIVqomV+3CS1UtiJfUVuveEQumCIs5bvZOO+eKQWM=;
	h=To:Subject:From:Date:From;
	b=QeRBZVjDqZ+5XKV1478YHKveTah50w8pvhkXThF8dN9ht/XLyMoLtBENYXnzbyZe/
	 d7eAeeRrPtkHFtesPiBlYwGOgZQbCh1HJqITK3Bs/rI40fpPJYCzL5o4fRGlKvxWLv
	 pMVG/h8504izHXgpNi4inD1JZjtc4Jf33SCu9su9j+KnhdNBeCQvcWZ2FUC13pZ8af
	 KmPiiPqAdzSf7kHpBXlw9jXr7hC1S2pF40dhOh7xpcKzFtVbMrRtdtAPr6IrLbtKpN
	 mHN3R5YOXtUHT3l8l+jMeS4xQ0DF1zF1TIS894NUwNlbIOHFhkeZHVfT5kGXKWTAbt
	 wTHT3QRaEnrQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4773E7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173497655365.26134.3206966592337896845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c08227c4b9a6fc2604f600c1082e631b3df7adb208ab95c79414eb14498181d
Date: Mon, 23 Dec 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734976553
