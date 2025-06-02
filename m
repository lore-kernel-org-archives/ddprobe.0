Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46DC2221D94
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748900394; cv=none; b=cdxlcO6jBiXt5FVEiQjbSvDNo48e44Wiu3pauszmLXgRw2wtqBtrcuIwW5TV0aboB6M9CIpAMpKvgf9SB5WFzZlvfvkly0+x9SwWPPr5uoJ+wOJJCyTYHr661No6sLRYUSek3EQodyrJp+gbxkPZRx91qe8DinWDweVMv+mQlRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748900394; c=relaxed/simple;
	bh=NqmHyogIGKIqU6xnREVN2NvKPp5vnIgnWFpQ5a8t/cY=;
	h=To:Subject:From:Message-Id:Date; b=SRifPTqnmRjOkVEdCP93L6OOCwXKIErOv0Belf+yy2PkaFDByMIOsa2guygf7+940yJUunXHe9eCj6w4c2zvSRHnaLiqvHEj0tjWBQLcg1JbIssSZHsJlvnmQv/Bnn0Zb2keEhQYSmyzT8ZTwairu0GSzCFEXPDQtE6pvnzJh9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpYfCpyJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpYfCpyJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED9AC4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748900393;
	bh=NqmHyogIGKIqU6xnREVN2NvKPp5vnIgnWFpQ5a8t/cY=;
	h=To:Subject:From:Date:From;
	b=lpYfCpyJXf8UNrONLzHKoFtaguqvGxWOc3bvTlRJBYpA64hDOGdXXyEikyafIU6av
	 20tRYz8Q1K9Wj7LkLYpqRx0re5ZJtQkynkYTcb7Dxw6G2DeRwermVffrNTgc9FuhpS
	 uTDVyyY5RzZPZaRDz0nXxtCWByWY795WDhk0QjMlTXsOP6qpu1gcCCfkvy6OxvwQ89
	 EKlukYBUcwSJT8P9JON8l4cC41TCyxaG/ipt2oWkYfiY8Ls7piJXvF61HA1LyK5hmm
	 E1rS4E0oG3tPR9VBdjAAfx9qRxtSoEt6U4SLNrHMrfnu9m7Nz/xcO4ZX9IfYuMbDjP
	 gtuxhBPxp8bXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9271EC5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174890039359.8859.6453930302382685407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 009e9952db7773601efd33f30c961d392e9224c4107bf09d7b96c344d5b5229a
Date: Mon, 02 Jun 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748900393
