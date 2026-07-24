Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4763E3E7159
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784883634; cv=none; b=pr994PnqAqFIjzGIX8acvMpMgFOHxZhGJ8u5skIpUTmkFKTOAwC1CQVP8Rf0Fz1nPtYuEgqX+5gEmn/EJ1rWaA2JocLDuN0APkdZpdYO2UPUdW+nGXULrsdd6vDikwI5ipoBnVpB/Ke1R4CtRlpLGEnTE/jpGwLIwYD3paYs1V4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784883634; c=relaxed/simple;
	bh=wUDtEU5cQah9kWCNI2AIFFZdP2al2scHBSA+kQKKBvI=;
	h=To:Subject:From:Message-Id:Date; b=aBpweQlhTpogMSXjub/TOBQuX5WX2Ffv0FO91ajzB4pfE9G+0omJvcRdaJL0CTvH6STh6THVKdQbfzBATlz5vRAOhuoII+oTgX1xGH8b9pFVSflOzetsYjO/9hAAtLqIWdmjtoIRuNvKxadyRqhX+BFnq8Jp6Gferl2yigcsvM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i0gfZMNR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i0gfZMNR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCFDCC2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784883633;
	bh=wUDtEU5cQah9kWCNI2AIFFZdP2al2scHBSA+kQKKBvI=;
	h=To:Subject:From:Date:From;
	b=i0gfZMNRPvyGGxQfdhsY6tsR3/GREUDXbsA0vOPvhp6+zLpN0hDAbypFzQrjB5URi
	 0RjdEvt/7J5SbFUryX7TfvEr8uNKWX6/1sGp8NE5yDKmE9tRruYSjU/7GAfWw9FPvV
	 Kzcgl+fKwzPEfsXQohrOEWnTXAjP6Wo+UnBv6XtH3vW8cDOYQ+t6HfOwVCZfczV9r6
	 6tG19lsywS38wu8yecp/r9kqXjopvciGBaO/yaScp0y1NUnAYl+W+5wJXxoLOkcTgn
	 U1wGRk1xZcMrhaw4TSQXsk35DsrKKDUjGOgVr5qXRMU84ICJFMOn53xTo4xhU85MZZ
	 a3CMINLu0hXMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90FDC531FA
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178488363368.26790.15204079800991289439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcf20a6e80fc2e2486120ba0c5743bf60cabb37d0fa7307b6fafbada8a15d112
Date: Fri, 24 Jul 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784883633
