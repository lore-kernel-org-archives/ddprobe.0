Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4529314D283
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748064594; cv=none; b=XAnjbZqXEfWZMipdTvZ7mdlUXqbmQ+VVxLpnqDlljPx4aAAAEKQ635LVr3RE12mx1l5oxQro0RQ3a47KmTTcD6U7K8Nl0mLNYcWNOhgEvehfkVpTMGfteUNCSROeZAa8+DjBbyvWZ2Y8xaUqeTv2CT6jjX36MgObEZCH/enzvjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748064594; c=relaxed/simple;
	bh=7sAGHfrK2TvnMJAOei21CDs3fgqs478Ul5M+j/OsMak=;
	h=To:Subject:From:Message-Id:Date; b=eo+7GlFfE2agmB1LjEcWAD9fC6qMRlfPxFFlpBIv95xRADFNgAQDABcGub5zF1KGv9ubjak0Qpz+5BAEdyT9WUc02EV0sx5RUy6KKat0t5fOWcZo4ok1XhhdAXH8+kHM0RwhDbAlP8jH7qsTQzS+kIVW6xNFlK6eE/k57uv5hkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XSB8M8N0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XSB8M8N0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2680C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748064593;
	bh=7sAGHfrK2TvnMJAOei21CDs3fgqs478Ul5M+j/OsMak=;
	h=To:Subject:From:Date:From;
	b=XSB8M8N0LNPlTYP6QOC/xbMx3DlgiO1vJ7Ww9dIsHosh/Si7Xn4KMz3swAzTSDl1k
	 Ns7/inIM9WsT1vdHjkbVgJA2u9oKVVLhhS4GKK/9EdRzPTlp7gWZiYaUw7JZD3qMQN
	 8YOaLxvZV2f5Rd3TcCJxqDUWlrDtHo6gnWI3jsoLGN2zqBP0EpA16kP6RYN2vposk6
	 Q+qFv5vZ1ULX3feAJ/Xt632ixlZCFm5IhVT1pskjg4kcZtxDiJLsLTz+Lsbyy+Lw6J
	 XHQVjdVUWAB095EHs2HjYiLygrsQfpM9z0WJ05mvLvzI9nSG5Sge0EY1aHFv6l1eIC
	 Dj4XP0xQo7Ptw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F080C54E71
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174806459357.10350.3539661143269488453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbee41a43220d6e66d3a7da22b1598f6ad84baa447210dfb00efa2792a054b5d
Date: Sat, 24 May 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748064593
