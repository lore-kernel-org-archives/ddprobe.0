Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322202260C
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749009594; cv=none; b=jMcFJw1EbgrPBs5QzLkge0cFeBWdRZjWcMM5jMmqQYh8d8+6tB3VNgxmlYWjI5JO8rMjfTGaMrRnh85CfoLdWOMyET/CGXrGKVH5IeMRJZMlNlsbU1lvQcnAITL38py1rLN5KqjGhwPnD8T5G8OOkOtD/RmL59nC1pZna7ZeLRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749009594; c=relaxed/simple;
	bh=ORTb0OmVGWSMjQ3fZaN9ZqaCngY6nko/t1cU5WnaA80=;
	h=To:Subject:From:Message-Id:Date; b=nQ1IQ1E9IsNfN8vOfqLDL3Bcjn+pl3qROWr/kx1/Gz1B726dspvLjxehUyJbxNc5GDzItnORr8tSBYYPpUoRDfBAoUpp2HR3c/luNWO1QQ4obL0KNWVrgHgz9UZYYPSXzWU7mirYg1UVI+ULnm8gQifVUnwRzD45Zpe8hRqSeT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j4Hpgnit; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j4Hpgnit"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5289C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749009593;
	bh=ORTb0OmVGWSMjQ3fZaN9ZqaCngY6nko/t1cU5WnaA80=;
	h=To:Subject:From:Date:From;
	b=j4Hpgnit6uB6M54Ou5fb+ubePiJ/K1VzaKEKX9qUcvLSOxdjUgdJjlHatZ6GaQPnH
	 0+rNfBVdNYSZ1Zu6iIvvNx0Xe+d7CMkKY99bdu9mA/zajF6XJ2x2CukRHqcK/ZC6ZG
	 HHZDfqqAK7vh1B+16PYi1siHziZtolHoHtxoeYYhPZHhTyzUqrXZVDOk3s4GcjLNFK
	 nd0HGuht0RXajf3TDPk8OQrTVBGKfAL2RgFiQVgYTkpmyAkxOQcnJMrQgpPm/ZS4hX
	 LCKKPubUGHCn2+BXL0hQohcUs1Q1TkdkU3oTsPNVxYUbnZoLp0E1TCaWkA3CZtLcNx
	 1Tp77kU829/Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5E6C5B559
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174900959357.1555.5162395528052543074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d3ec6133581c7d89aa31bf972edb054865b39d0523a82f2a0d84d331d79d9a7
Date: Wed, 04 Jun 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749009593
