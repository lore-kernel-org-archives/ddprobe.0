Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D47BC309EFF
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 14:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778596233; cv=none; b=BSHYNuI5KwF6d0GCWILpVnYhMilkKnGcXMmW6BGlrZ5JBzgFsZUjdYCYoKp9VXvVIzObZyjkfZO8z83tvbtGyGAd0EeDwA8nOchTsKS9vw5+bz/TVwMZ4FHa1lqE01X72jcaBIUGhah12cAT8U6I5P1gNfMDvQGVEQA8b7Keytg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778596233; c=relaxed/simple;
	bh=rzjyjXZ/lLJdTH3JyBk2+UGlmw4z/BHiQZlcVbPa7Dc=;
	h=To:Subject:From:Message-Id:Date; b=sDXQSUC9lflqHIss/CSJGTLVoSBZ4YxSIB5aXjAjRi2xnGTxhGP44c4PQnQN6I/vEacZOq2vO1QFEScR482hYfnE4aR1iQHBLjpW/G7LWS5IXL+EB5z1hvR7NR/CeBa3jbHEtNZ9TdG3WNUfnNju+OjfA3WJnGXee8v5bpet0U8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P7QWHK8y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P7QWHK8y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9990C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778596233;
	bh=rzjyjXZ/lLJdTH3JyBk2+UGlmw4z/BHiQZlcVbPa7Dc=;
	h=To:Subject:From:Date:From;
	b=P7QWHK8yvp4kxnNNOz0Yw0pO6PfYJUmk7w7QayfUxb8Xkda6tMf94F2PXF1LCaWgi
	 DykWjukqRYXWa7CyG9/+5eqhobO+EVWv7Itb4xL7Gs9g5s8M8latJQrpcDGX65RXHo
	 Gdsblf4UiZdUxVJkMsfjALXaplh5yxFPD0/L3r1/8DXalhCZGC+B62ykVF2VzXXIZY
	 tJCqlIj7jN10CvsftBLswSglySZGHW8osuUh/UWVRpc9CUpKhwYn6SoGj/Ex63eUNn
	 l4zm/85YJovbvzUMAaD5AItZ5n6eEkdvWeUm6ck8RJtJY7km6A3jkyBtAYEZvcfMTQ
	 QZQaT5HIJZ3rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA584CD4F24
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177859623368.5318.9483101349628828632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8922b07db05a517db48e82c5791e1147d52d6b871e8196af51af19e3fe0d9773
Date: Tue, 12 May 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778596233
