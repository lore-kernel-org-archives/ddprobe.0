Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1489412E47
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 03:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707278297; cv=none; b=quJDfwNeii2S+nrjz2eBb/Sa15MGUPXjt8ve8tcGFU2s05wGt0SeZpi5SJcHU1YMxqLmBvre0sg6b3/zzYNFPduocmj3WLEYLzAODg/2E5kER/aqRa9S60B3eXkAQP/lUtspuzKiUA5m6oi2zbfyiDLhweDaK/987wUuHpxp5Os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707278297; c=relaxed/simple;
	bh=PY8ohEdCryepQsUhZZs2sJ5tFscaUIPCCfmsrgFCk8w=;
	h=To:Subject:From:Message-Id:Date; b=GKMbfuNAqGRGhms5zf5XTRLf2vXczSsX35RXjprHE1RSId4rmcAXzupSZVsdNMhd2rx2q+bfznHlmh5LlXPOOdq4vZ5+qOJ0i1bGj1wfyTzsrquMpXXliXj0eDpZi12wUfw0x21U0iYn19Uz6YsSm8Hj97eI6+dFnV+ku3+2YVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QYAw/dST; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QYAw/dST"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A0E2C433C7
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 03:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707278296;
	bh=PY8ohEdCryepQsUhZZs2sJ5tFscaUIPCCfmsrgFCk8w=;
	h=To:Subject:From:Date:From;
	b=QYAw/dST8cndZrd4H9+1JwJmEnALT5GTrp9iJIJA+bnbIibdEQug5EPi29RrUH6ZW
	 sfkFGhPUaunK/17VixSyibv3MifQvXQnpecU35H8TulWP9uop06xpls8TPktUPdl1A
	 3aJu/6RUQnMmYKiQf2OGSCdtBt5x0Y8mWuRbPhqpYazNp0bfTM/ksDD8q2q9RrVjwG
	 Ki2kPnaQ6NtjeuqriQzuvbLa64nbRBXn/xjs9O3+fPWsN+ocH4PxMxP9/nQvOO9AQx
	 xH9k3tOvkUMkp5acxMso/zxUPHBTBcKtISYdgWXw4RMaY/3fdWwIXPlQ9ES9N2WW3A
	 fMzAAWlI9kwZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68BB9C4828D
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 03:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170727829639.23856.15248662400267561065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5749a1d0a8d0db0ae81449e90f924fccb81f7d982aa91200c8d1ad263204c071
Date: Wed, 07 Feb 2024 03:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707278296
