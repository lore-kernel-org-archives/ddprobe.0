Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07DCDC8CE
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774056894; cv=none; b=kkSFPJjpuhyyjHQcCcOMOKSthzUILtj/Y6J5+83R02KxNPlpIgPOTtRZ0aii1Irl68y87cSiSDNNRzuzrSZ0GjbYxhXitZz5vmTKCLf3Z/OfBcn//Tn5ccZQ18fX4QDLSYZF88lpiavsm90rvhNPfmyP132FTDlmRbdhxyW2Rgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774056894; c=relaxed/simple;
	bh=aHUYUVU0tcD+nAnFHwGZLaZEPLS5rOtN6H1NCGxIC40=;
	h=To:Subject:From:Message-Id:Date; b=qmE7qiF6j7LQYTmZld/jw1i678eydbYn0trINyuHfTNNz35xDVa1pHs9zDWqSbtbkkBkfJnD+v8uILXJj1tYXlikqb0On5cWcW45N0YKqLegOjwworkCYvuequCKFYDrJwAzeCuRnwNDwR16ulNtS2Ws0oB3LXI2u1/lg/pocdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZFwnOnZG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZFwnOnZG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2655C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774056893;
	bh=aHUYUVU0tcD+nAnFHwGZLaZEPLS5rOtN6H1NCGxIC40=;
	h=To:Subject:From:Date:From;
	b=ZFwnOnZGrN4hN6FDaWFnBz4zwEVlTJl+7j5kVsPdaCEucNRjzdSDuxl/3g7+xL0Zc
	 XgSu4knjia8KD82tqIFLbDR7UsTL3asqhq/73+pXTpuP3wzOI7LZ8kl83k0oAi3vRr
	 u4qO1xTuOZfLqzZN2AfzGCHY5w+AhI89JkmpIzehdA7mI3dkmK9OL7jaxrkPMQpaUm
	 wn68qjyat1aFfFzPDvlw8Joj2HWSiAzYi615/uuPzNX9yutLssfbpxo1Vz7HQOVG4X
	 X9CtCB5xbgya8zJKPgA8N3ScSjfuMiB22rrCWgti4bFbt/fzOuhgF8/NLu75sMrDjz
	 /yU+JPPXG28UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9701099B59
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177405689358.7991.1167348683853892771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab6178a86ca0edac62b1ee25db0eb50fd5c2d2b0095310b9362649976e924c2a
Date: Sat, 21 Mar 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774056893
