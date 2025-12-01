Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25CCA214A64
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 09:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764579774; cv=none; b=mXZY8xU9O8BnKc6Prj7wlRP3jU8sl5XYcZ5h09+UT8igObf+Ujsd+sMN89eM376TaBkMjfSbhorfpyREmTCejTJN6vGsDuEuFCCDqEJrZ2uRbse76p3XJoh3B06ZrhBFLR8sS17L9r5XQr2oSUy28aLHHn8r/d+lvw9WS81Cjeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764579774; c=relaxed/simple;
	bh=tnt7UayZUfOqnxv7RL3FOSjDujLjMN9fwVzm40Tg1eY=;
	h=To:Subject:From:Message-Id:Date; b=rATCLsC/XdIp4+ysT4zTAgZto4l/XRKHWWC1/VL/8Ej7+LOmskYw4sA5xvSfldCdQJ4KI6pDmk3J6hPf7Gx6xkPjCzgiXIxChcvxxlcUGRsijhC6VOUl5r1TcXJEMChcB3n+Y7VhwTOUiyHhYWFbilI/U9CidJw4FQKYAs0x2PQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nHz3Eo/+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nHz3Eo/+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A5CC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 09:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764579773;
	bh=tnt7UayZUfOqnxv7RL3FOSjDujLjMN9fwVzm40Tg1eY=;
	h=To:Subject:From:Date:From;
	b=nHz3Eo/+3K0rfexwFGM7+uk2HHsXNv6VhZpkqjZJzK9crSrrf9v7fB+US6minR0Yh
	 oUZmatScNqHbUxcv5Uxxe0E/sLQa/xYAx2glYGP1Ah4NYrCiIr1W4TRaC9iYns/3aX
	 7TiIGgqALQrdmp2gyCvGsvwzibFLTB92qfH+gj+IDYrM8smzsAGxjXj5OGQuuISl5B
	 b+8RUZ8kf1dINxTQRzU854ObgiiYWRHCAg1kcd8IEdScrmZ19P0oA6YuOZlJbG5uQM
	 n/BHVQxn3FxRXtKX97Qmfcwxqb7NrYFmIV9BFdnszSuYWF3lYUK1abHa/rHGh4txIj
	 +yvsIrmoZxRkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FD45D116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 09:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176457977363.18522.12210983760029982421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b44d40262c39571202f6bd895c0320c9329927f37e391f504d0a8d1f82e9824
Date: Mon, 01 Dec 2025 09:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764579773
