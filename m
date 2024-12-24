Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 546057F9
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735020354; cv=none; b=hRffKP/vTr7KZv9m/AZU1RPnkmAhFXAdcULciZw1VqGac+gjiMt05AwEVrSWQiHt9ZrO7JuYwHYG3BxotWyLlkg55rCNZ9jd6czr1zBymFJaLlbldWo9pf26hti9tyaSmtnF8gvc66itnJjY1QzQKrVDOJTCvRqCsBohZqSU/kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735020354; c=relaxed/simple;
	bh=/g38898IcRgWx/Br/28bP72yeTX96wWr10XVATxP+KI=;
	h=To:Subject:From:Message-Id:Date; b=Z/fN1ES1uHklQUkfAtygZCOoSeJognt8LBTWGTMf0VJioZapiwU9oOFo/t0aitBAKYWSNNlUnXuHhS/F65lLZMI1Q/FUZ1eX/LLtgjK/VUYQgDI/2302rImy8DMWUhpEFD6Zj5NsmW7UNjF58UyHkqUc8fiQkaCN3wYfho65W8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rNUs4h6a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rNUs4h6a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84A6C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735020353;
	bh=/g38898IcRgWx/Br/28bP72yeTX96wWr10XVATxP+KI=;
	h=To:Subject:From:Date:From;
	b=rNUs4h6a3Qp5y+I7FlPrnFlhKVzRT1uFhX2bu/IxvSyvVaXg0yV62thzRcOZbyaXL
	 EeBkoj55/SNejjAU4nsnN/djKVKwJ83rDPmqz2fUXiOX6nAuxP6WVqU/FnG9RuFsNw
	 dKMvbq2FerCkFLMFHJf0HwF8JpO6+tb12Bw6ux0CXh8ZlYsl22+ydH/2v7tfBJKV3P
	 ieA1R2rJ1Vjs3sRKGTXgTW5UPWBEE0Yru6HA3h1vOEipbscgltFwlrYB8C7AhIRFdU
	 tZiUSWPPcMCYOagpn1q3ZaR0IFjCMsTvn9WXFcKZs5Ko/1nfLudFLQxvnyijrRePOS
	 TZBW5IeGJDKMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947FFE77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173502035359.5995.10274640927066427244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00a5727a64c9d4d0f3672a9f69ce6fb9bd8a6730a6b1ac7fec7c0a236d5fa8cb
Date: Tue, 24 Dec 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735020353
