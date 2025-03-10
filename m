Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3548B1DE3BA
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 20:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741639134; cv=none; b=TdeHZkph6A7qsDQU6EqCwj2974LgdOpmSuE/cpkxx+AIQmUbOuLFAvoprTNJIZNWSZVB+8obLW2IpAeuBtHjRKkw3v6/Fx+kCqsAWUmzAtsaTfdwknECXhWqQyFRZypej/M4JM5GZd264b9da9js3ZsSMQMEzfCbRCTP6OE35CI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741639134; c=relaxed/simple;
	bh=M6Ojcvr2eUOYZo/9VWXIfR3XD6Tl3lT88ycm8JI3wsE=;
	h=To:Subject:From:Message-Id:Date; b=ekJbP3xLiQn0hA1gJhql3GXu/5SrijYSlpFQZs92U78SbAgN7AMa4zgwjTkXJPwOWwVSVCOIIIrfh6Tvc/IEKy8auDobf452HPWsnkCfbngtnLYDq7Yr9m7jJKtQVbAugsj9hUZOEdrY4ForUN3UUZpPcBTFOHCS3EmgfRBuPyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XiWnuWrr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XiWnuWrr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E36CC4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 20:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741639133;
	bh=M6Ojcvr2eUOYZo/9VWXIfR3XD6Tl3lT88ycm8JI3wsE=;
	h=To:Subject:From:Date:From;
	b=XiWnuWrrukQ6VPdIr70xatxFWR2KMwoIxWmvC0MjsA9QLF8p9FArnYZy86Vk4qYe8
	 ZLJlv6LZb7ZhmeJfLQtU5Cbk/uTLp1RaIrcD63BxNrdcN3+jhV0Noqxa6Kk2upPRVC
	 MaVeNhtmO65dMo3H1UaayWb9I0+QoJbxdqS31lgBqVSUZ6McgM8+B1VMx7PSdLxfqj
	 Vmm6fJOGO1MlZ4v5Rn2XMhvKPVJWST4tsusXNisPYZhZ61xDlfpJwVs2dTecsq8LhN
	 xvha7hR5wr/InmUy4XPKwYBIiKuyQa0/Fkx+v/W8OpRxahSzpuqYmpFdXpTM1+iFLx
	 XwfU//aFXC8hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F742C28B30
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 20:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174163913358.10305.4680594293616413381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0817314b49b480d21fca6c6c06c159bdafa1785d71b3646bf092a0c3f564ab0
Date: Mon, 10 Mar 2025 20:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741639133
