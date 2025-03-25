Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4112519DF48
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742900394; cv=none; b=LZ0mYKPGZgWof+jheNn7UUta52eAYkacMASp8swehG3f3fYNlkO2jainuRBDqJ22Xl2ED36UiJL7kPm19jtQVAM3+6J5DoMKiDpQBErUlo0y15AXtjaBV4oWfNlFsp56I8z7lK6can4Hx2LhS5ClZWv9CeYz7RjbzAcy4UZ7phQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742900394; c=relaxed/simple;
	bh=0HIWZbjZE1W1Q82axXDJyqJM0vWybxLqxvknu2WXad8=;
	h=To:Subject:From:Message-Id:Date; b=NITR1OAuZZ5ITGETkRHYB3rNih9rHKieTL6Wst6XWbvCd/1eXd7Eyxk6ul17Aa0VIB6sr74WmT1rlHRCwDZmoU0qHaty4DiWXn6XvwVle+ZB0KSHSaOGkdNI1ZYYzyQhswIJ62E3zYurXoS6YATCBx/SQi++waR+G2w9C1EdW+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d4+oYkP4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d4+oYkP4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D29C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742900393;
	bh=0HIWZbjZE1W1Q82axXDJyqJM0vWybxLqxvknu2WXad8=;
	h=To:Subject:From:Date:From;
	b=d4+oYkP4xMQ6nFktLDmcS0AiF+3uuBSMjuk/t6uXcUpyP2KHSbDKBkk3iXJtSkStV
	 G1DrdJV2ftADnAZzlLRGJxuX2UQNHYCPg0e/pdFrVtVhk57O5QEIId45BZoPiJ5E5F
	 BZkwJDAotqJWkyyo0CH4KQm+Gh6Z5OCajNsz4AvfTNOYnpe2IzokZw5j2pck+eX3DF
	 z+uLyTQRGX2lGYH5X5o9qfA7vfdw3MYjFPhjNf6dI7gbtIji4jj7WBf9AS4AJK0FjL
	 /YabYjLuI/svzCEeXJ6P35ZUzXcJpQyhhdXBNxDGlcDRGLo3T7q7V2mk+TPasL0ARx
	 2coJMM9FYt48w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94607C35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174290039359.25080.8991716704070026664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c755e9f418fcd80f870e3954436364de3e0b55f77dcc6fd81c6fedffdb48ef7c
Date: Tue, 25 Mar 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742900393
