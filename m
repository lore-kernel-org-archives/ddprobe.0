Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4076F2628D
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768059834; cv=none; b=sDfnbvj3r1al7QQW21M0LozDgcO/E0KAfz12VAtcyOcelxE29AFaTXICe6R5r2QAH9mlErtvxQ4c6k0eDss5rfgeB/z3I3H3rCzYlRzvpI9uiExnuBCXukYAVrU7T/CUX77iBP+LFUnW1K6YNB2Nyj4BseGqbMhsZRBxDjDFXeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768059834; c=relaxed/simple;
	bh=YQMgERqP+ccVA1yXiQk8Gnnt1TCYwBSGCd1fiqB7rIA=;
	h=To:Subject:From:Message-Id:Date; b=MPxGKePfj0m/d9s7gwWgTwAMWbZ4qVOpiAN8/KxW8v5MxUWRjeSrcMsHzLcbr+6pKM91ft8bkAlyrtkSsQ0cdlXH/xLVszC/HQ6+JO+1UV00k7Phw5DkvZFqzvHxXY3gCIYhbPrxPE8LQexevYxX60brUA2zK5xDROWH+oOwBVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nvin9+Gt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nvin9+Gt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6A90C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768059833;
	bh=YQMgERqP+ccVA1yXiQk8Gnnt1TCYwBSGCd1fiqB7rIA=;
	h=To:Subject:From:Date:From;
	b=Nvin9+GtCqb/jcmf05tWwFUwo3ALWOwoMWcQtzfol5mWVQowXbOnVXQAjMI+NNWHV
	 NE55clC4Kj/TFIWqEqGTI5YTX+nea14PfK0eWOAfu47Q1l6c/xjTpxxygPWk3Fxzxd
	 SyRo0c/YWbVQ/StDbquHC7Bw31zDeVZYQyEQZBgyIHDIxczSNjGHP2B8CAbbpHs+TJ
	 iiaWSBSovoWL9jTpgrby9+a00AImlZeCtPsAhRG4HFabxePPSCn/zCaXTmca9ZrTut
	 Mfo8Zhh3Zuo4FehopZjBcXmuWx5Z3Gne4JNWxhCvonL4meB3OtAXOzuRWWNg9rqR6r
	 64K+T0zZWDueQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E87D277EE
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176805983357.14561.3029441070208597466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 852b9a9aa650ddd53e972bf317e426ea7c323575d2a034640a2bbf6d25d4377b
Date: Sat, 10 Jan 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768059833
