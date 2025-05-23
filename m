Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302F9189919
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747996794; cv=none; b=AGQoaawBD3D/s+VfAcUk8981QalsuQydflvFhion0HTvJrFdaL04uFldXbJrFej4uc8ugQF63WSnHz+V0io++vEJo68vEGVlJ9X9cBF+tMch32Z5mImcGL9xYQ3/wYzNEjd8sQ6y3L/ik2R/b1emJQ/vsy2QV/k2ovVdmNpn080=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747996794; c=relaxed/simple;
	bh=cwHh8x0slGYm7vv+3oysFKGd+kEsUQBGI1oY7SaIlSU=;
	h=To:Subject:From:Message-Id:Date; b=X7MkNWbwgtbPQhKiCnj8Xp2mgowMckJzfjbRgrDgYDKbVnK2Y1uIzoGqH3ppva8Anwby8ZlAgDjH6RMNhNIQ2tg0J3omZsMM9YCgYRAgSRQydG27RGpgPOoCc/9tRB4PRdy/TZWmFk5PIEmoaVt1vRKZXxSqmkr9Hwf6TorFGNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sw+9pj22; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sw+9pj22"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3C4C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747996793;
	bh=cwHh8x0slGYm7vv+3oysFKGd+kEsUQBGI1oY7SaIlSU=;
	h=To:Subject:From:Date:From;
	b=sw+9pj22vbjZ2LXRaphAt1mHbv/0KUF0sjbOq68VrxnNZ79BbnM1dqCbv+rTmykSE
	 ToTmIQ59SwnAFfiPRkKv46KXJzh6M3wGhUyboBoRAJAqGRP1Btnfg5+QTr7qK69iS+
	 PkQz9twyqzPGRouPrZCpu2wb7JVoXHikO2RsFvCxEua7XPTxcut3MTbxexlcX8CXZc
	 pIdEzVmq4rLgNBKnlA2vKV5U0Tv6VOiMIybWmxs6YvZX36g14R7hYFTRwlDUgjqmJh
	 0efjrIBQW5l7hdLTiRM81N5zdFlQKlHeUSED1J1npy3Rvao8iu5P2h+WcSdkpbnEim
	 48LcT/HXIjW/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF52C54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174799679357.8498.15483160087880138432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aab09efde0cb316d6bdab81dbe8708562fc513f13f8fb2a337ddd301b8f182d7
Date: Fri, 23 May 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747996793
