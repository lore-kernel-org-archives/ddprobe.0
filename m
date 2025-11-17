Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330FC2FD68D
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 16:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763398314; cv=none; b=CKe29+PaQiG5ypfnGUPkXBnO/lwENuKcVj2dA7hA6HFv9N/LjHqWHvSGD8wkKjdwWrnv2KfooR8PxexovL3gXL3TKzs7nJMGkvNWckSbB0L0JMwurQNKc1Ggc4Xa+2eAhPRgmAIkv/4etbTw3s6RnU9adIwigl7YIdy6rayW4LM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763398314; c=relaxed/simple;
	bh=zMLdVULAmb3lUvpkoCE1dNOgZJUdjZIpl3duEuPnDTM=;
	h=To:Subject:From:Message-Id:Date; b=Aow1bpkZmDsk4UZADwx8CWkuwjl7668ekmf/66qS6NJvwL2ByiwARUK9kC9lVUU8Hot5CSYR2xvw9KjYTaP3Y6DCnj1ZHDxVwn4uKH5YFWmwKETPgi6b1I+FMW9hgpNlnacZEWC8G7aZ942rsysFyKRacjsRuxrUrc6LlNltbg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nsFxQVUv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nsFxQVUv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9BBC113D0
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 16:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763398313;
	bh=zMLdVULAmb3lUvpkoCE1dNOgZJUdjZIpl3duEuPnDTM=;
	h=To:Subject:From:Date:From;
	b=nsFxQVUvg7buRcZ9cEpbPiB6tXHz4lo43a0UVF90BitFxAgbXVSCh5Auoq/XuBzfN
	 ayYVT1UcIjHwQHdpO//JWrFAFVodY/B8uByt9msb016Nc7xqJpLSHAYtFwpGIkri9H
	 TJwo/Z73NL0LWhegUCRms8hMb8MvFkv81prI7i91EozLR3644vRgGKcDfh8oieAbs4
	 aU3sksnPy0y97JjaeW0IfiQU6r1A2RLNzclNaeEOZr+kGr09/CAjooNNxQVyEx0lik
	 nKQqDCuJlUGmOY8HChc4RSauTkYYC25xCrMiXaz6EdDdEXXvbh5AFLrT8tivywNJC+
	 0jZly/VTytcRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91672CEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 16:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176339831358.4816.13299322637607163566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1af01ca763d485d7e741050091cc28faaa9484ed9f9cc4500c7be877c26f3d4
Date: Mon, 17 Nov 2025 16:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763398313
