Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FDC2110
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766891034; cv=none; b=k5Demopevq8V15YUABfF8SlvbKPK83VfMGNLbr1MK6aITVa966GNp9yGxuOUGsGMfTWVeyeSEN0T0Jd9nfuZhYQW7F5L1kk4BG6fn+OQO0fDmD1Xx04Rdq2s2KOsEdtiWZCuYfWTwlpDQSeDLqkto/UXLJcy1HOSO+nSTrVCZ/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766891034; c=relaxed/simple;
	bh=7knd5tMldNfwjVkXDgBjMCVow6lS92eY59FXhdLpE8I=;
	h=To:Subject:From:Message-Id:Date; b=Js2BVXcVJAzZG4yvHvuP6n4KJ+lw+NRA0+MlbjDYs3buNeyitL9J7/+zyDtTPLMr11wannwqv4GxOquo1nrVmuY1NdZHflZkG1RWIF+lAjrm8gGb06vQD3R3JOvi6EJo/7AL8FKkPie7yKah/LF1LjhXjV6ksRO8G6F13rCKaOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0LdJ3kg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0LdJ3kg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE76C116C6
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766891033;
	bh=7knd5tMldNfwjVkXDgBjMCVow6lS92eY59FXhdLpE8I=;
	h=To:Subject:From:Date:From;
	b=P0LdJ3kgyRkw2M52Io2Hwe9NJfFOHcJv786BDflYViJpXgg9ZnE4svIEfAhZNvjhV
	 fceyMoRvtE/YNd5Y/jaiNsqKACE8dmgX2Cs3Y0rRqYjTaeUTNQpSpMhZImcwSKnXBD
	 rtBh8VaX5qxULZ2/czml9k/VIFDSXCvC6/A8yXw+y1FOYUSjKz6JTngYq8WqetpAxZ
	 B08BYQD8eI/+cXbmp/zyw8OMSfy5DrYyoVfwM1nxpSzkJJPkzzgjV7nHbiVFWACMNV
	 AtiYtCw3buoJcZAGzCvLXfS6HTmAS28BcjjGFCDyBA7qrAH673wRnKkiPCPwszOV3n
	 +LySgf8quZKnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947E4E92726
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176689103358.14852.804198037491544008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaa6d3a38d98f6a13c74f5d990ff300f19d5f13dbc1036b35f3004d804a54638
Date: Sun, 28 Dec 2025 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766891033
