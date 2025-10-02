Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B86528507C
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759447194; cv=none; b=rNXDRdc83f2C3arCMfZPowhVVMwQHfi54fM8KwZdGWkHg8uSztsVx5KBVHYlE8AJZjbhJxuv/V7Hc/NuNBeFKB+O0c9LwQGEaMBctIvZFeEwBDIa97ld54HuBhKH2Itg9P/SojAmLFkbdFx0+qnCFvZyD9tqQTdWEQnzytRdvsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759447194; c=relaxed/simple;
	bh=Y8P/qEuwwtystJRKvSRWKIkoGtcKP2M4Xo1jWML6BCg=;
	h=To:Subject:From:Message-Id:Date; b=tshPlOVV4ERCCvoU27Cu4MVukqdFaJJrfTeIOAwxdY7ae4Gmbic4AztlHke5x8ZMS+2lv05ti3JWjTXwRotBFaBAdC4JnKfcIAG+VJA2zjUQnr/jsB4Cn/Vo37K162dF8Vphb1YNSKeoLLe7vjwOfSMImbFA2pfLQbe04jab54w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/PXuUDP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/PXuUDP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22CCC4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759447193;
	bh=Y8P/qEuwwtystJRKvSRWKIkoGtcKP2M4Xo1jWML6BCg=;
	h=To:Subject:From:Date:From;
	b=X/PXuUDPCuawG+S/XMhSjJrezyFqLrjD4D/RHO0txAerjZAGKQpt3UGMP16yOkkl5
	 Oubz/oaIWUNmId0462TpJNzt8dy0jGzg1UC5sSGm6/BdhSINzWx2e5+WK5+eJPcbG+
	 LzDdd6HvKxUsvqMtlM17+h3gbcRdzeKQxn8gmQYlpFb994W9m/IsybdOsqoc8lSea8
	 wOZ+Mi5/uBlgtoDN2fBDZ4A9TPeOMlyyDkjzKzTssS58zLwgV/V1YRG393DocBux0S
	 dOkv/mkKsq+bMMxJxFknpkoOUl03bmVHRSLoB3zH9T6NCMmxK7adu6V6SrEP/EifHq
	 v5I+G3UPCz0WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECACCAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175944719357.9352.2969106144778105944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bb945f3d6df6f4b24828b724792b467cde42126401a76843ed6a98f78dd317b
Date: Thu, 02 Oct 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759447193
