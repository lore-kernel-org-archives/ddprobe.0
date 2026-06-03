Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244B9480346
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 13:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780491874; cv=none; b=hz1xJrkD5lte2549oLH66gE5o5/3eoKlNbZMZpB6ysKogvTVmJjxXd5+6dur5l2CDIISrb2ucF3MOWqh/CdUawqVQqc0OQhxFEmP5fpanJtLBB0tGtY9ClUCfAKbUD3lSHI5JCtJ/x0+SGjAdBKuNjZr0TfwcUrjOeM9z8hqJ5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780491874; c=relaxed/simple;
	bh=K9RJ23HQyZO051BegWW0tH7i+pzU+m3ohA8bqhMunck=;
	h=To:Subject:From:Message-Id:Date; b=M9+SLgNcUwQswbhCo1oDQ5wxXV1yBbGIDvw3gLhLLILP7b0BkH+JDFheuYC3a39OZ3TxxiHqHKsz8h9+8o0KP+l/DX3VwTLgbtKDW4kMroE46Vq6Ap5QRMFTgATdyYJN9hDbeNCwrOuhAtrp1PL6RVoCsfvjWaSF83Du2/KyjFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d3wxtzDI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d3wxtzDI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2250C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 13:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780491873;
	bh=K9RJ23HQyZO051BegWW0tH7i+pzU+m3ohA8bqhMunck=;
	h=To:Subject:From:Date:From;
	b=d3wxtzDI9urP9fHDgq2Ctc1RA/0Jtys1TpATRwgWo+Yj4fI8Nw8xaHbgoo27X+45r
	 ThLvj6cou9e+dVASpXIWSxraujvHZN0cPGLInpWVHSf21cPB8A/5zWczgXAisnh10D
	 za20xTPXsIyr1yo9yk9BjC0pDtQC5ptTVqE1KBK8XBXop+83pSq1kW0i2GmUx889Rn
	 0+woaSsAkjcYQOqrlf+5lEQKPxLBZ69nEmEYkBNrl0j6ExP1SM7rrhC+gRmCaQDksE
	 APL4QFZM2Boc3nuHlt+4++OVXr9a60igRy7dhVS5nIxzBxQDK7pat/KPN8gUpjynsO
	 rXZtTOwzjkP4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8095CD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 13:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178049187368.8027.75699879097961649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e971532d027a841db3a5ecc244e474db5d14ac547649c980bef6604d05113aa
Date: Wed, 03 Jun 2026 13:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780491873
