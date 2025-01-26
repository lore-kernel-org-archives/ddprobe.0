Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA57335BA
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737917154; cv=none; b=TRKLF8Kx1sqe8fyvVAmpjLXBSiFy6nxNyWvEAeq7xfe2qilwT/sWH1aFqoR+wnr4vAqT67JYU8FP00oKbVWtyzZ6qjggQT8AEv8bJ+w7OxeQXkkN5o9qDHpyTnPNEo2ltysSUl4DNmHc9D0sIPm6pfwlGKtJn3ORr84gQueZZu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737917154; c=relaxed/simple;
	bh=5gj9AKZ4/Wu43ypeJ7PJemYG6TPB+GYzRSjVijxHE84=;
	h=To:Subject:From:Message-Id:Date; b=Mq+7VEZmuBeWOZQHV0Lw3v3psLlujhVieY/2MCVnLWjhcW5F9NrH9fX3aYPpSCM1T7QZZIz0LAZHNNxKzBTtmFgbwWgf6XVGH1DPgfdxZEFlF0aXvSTCLsUinzoDUG9r4H3NC0wIt/Po4CVv0OE62sBXwvRmr61xQNZyo2aJdtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CIUt6bi0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CIUt6bi0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A066AC4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737917153;
	bh=5gj9AKZ4/Wu43ypeJ7PJemYG6TPB+GYzRSjVijxHE84=;
	h=To:Subject:From:Date:From;
	b=CIUt6bi0m5KtW7ScWLqKZfQP+UxrJLQMVoWmkWz2WAhUWrlVObmQZHrBLqL+zOiuC
	 kmm2HRG43AfPyqvrAFAjTEa29/5j6cdVSKnLsf7PecDocXN4+oQfV6wFR7gBju3Lhu
	 kfU5hZ56WBrXzopPvB0S5XzCLVaLVUf/JpqzhQRIpgA3JshdAfts5T9Eco3hkA/HYx
	 bTK4vb1PrPB/Mf/DVO9dFudvBnlRTRMHngNg7MW/t+xYYx5NlNshUCCIuAIr+8qama
	 cInaZiXHfCuhsXa1gXpfrePW2hqpybfAw1pnZiIT2G/78HFe/tIeaV4ci3VyA8V2JQ
	 fr5jwWGvvgNCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E717C0218D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173791715357.4037.734847600725418013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d36d32ec1c1f3071d9cf6b731c899e198dd603a9fd8975f72acdd6f553cec47f
Date: Sun, 26 Jan 2025 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737917153
