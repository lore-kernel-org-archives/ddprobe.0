Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EF001684A6
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 17:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718644703; cv=none; b=YYN5w6fwcyE+2hejLMcmdXdoC2nzQBLi2IggSQKILY30kKmEEz+Rqp9d0iW97tHccjKUHHuv5X22Y/MGt4sTPQSeFQEMkSdnScLLdBkKe0DSpTa5ncIb8ZYPcFe7glkhPMVNEaUIOunhIEfCHt/1hmlmf2tiET8L/nhxCHNlXjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718644703; c=relaxed/simple;
	bh=ZZoZHyJdgb/PVWTcyp4UsF/c5+TVaQA4W/p59RD0z/0=;
	h=To:Subject:From:Message-Id:Date; b=bKt6LnuQr9BNFz1KdwUF/OWCVtJx5SVbbFkzBqsqJLjFa7FZ6IoYAxhYbAJvF7jS5LZFSzE2N++PrM2SCQrSu53e/souBxCw0Oxdz9+AeUBITJmDMMphiuJF435FbZ2qh/LqOVI0rrIZxwuEpVV7+iGs6zyzZ6ZL6QrsQd+w4es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UyKE/Aar; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UyKE/Aar"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2DC4C3277B
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 17:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718644703;
	bh=ZZoZHyJdgb/PVWTcyp4UsF/c5+TVaQA4W/p59RD0z/0=;
	h=To:Subject:From:Date:From;
	b=UyKE/AaroNmqrdO7SDIDGBZdok32esnJVxNqEnx6K5UHXjKHzlsgHxDUlu3LY/SIz
	 Kx1FTpSnx2EDzrHgMJM73jPqLNDinDnxQq3ioNaz+IGTI5E5xW86rt80v+mT904WtF
	 rr4uSQXhWZAqZ0Ctklv/p/CYZEkWmupLEAD3TfEthsMgwpOxMYEbkMNzVwsleKV1SW
	 9oMOTLcug/nqEw2cjCYD8WXw4NbO7L309Ca6LuIAqxkg35WRjQNdkdJkjMS+Nua4AM
	 9EieX9h0sk52u2UsTSTzmYKzEo4RkrEAdgoxqwfWC5iU1HifOQvQlbImbOZbqL8RWA
	 LbMNkkjVuodew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D09A2C27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 17:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171864470283.336.10211292570202695887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de1e2db21dd72e98208389a8c16383629f97e2b1a17fa15b9ccec7b01aaa7b1a
Date: Mon, 17 Jun 2024 17:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718644702
