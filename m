Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42DEB2EBDE9
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788241234; cv=none; b=lGLGyZ0uB+r22U8ivI8TJGkw567oB8ClGg7DVjfhXBaFGV/txPrYi2HzbpJf0Bm+BS4nB4pNsyzSKEcfWCmQ11OUuHUzMMQfwXZYD8Mt5P3s0qKINvoVKGzgzaXMTavqvoGUAKYHJuFakW3NPpMeAmn92ypqtSYAtBK+ylneofg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788241234; c=relaxed/simple;
	bh=4wXyknwRliS50yuINbleji9bagmrbtc9tt6YKUxdE4g=;
	h=To:Subject:From:Message-Id:Date; b=FOAJ8nXSsBxumVM8m75HxXwGBND978VnPmbWLDs7hPCCb/aE38yewNUdaXggebFklewKh9zBu4ZUhZ6YnZa9Cg4tP28JtWYVBcfkH3G3trEIu9XTTRRceBN4kx3+c7Abw4bDn8v6zqSJcXMISYb5zgvlMB7NkLzZOzhxTJA4U8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mpW+hD5A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mpW+hD5A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7994C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788241233;
	bh=4wXyknwRliS50yuINbleji9bagmrbtc9tt6YKUxdE4g=;
	h=To:Subject:From:Date:From;
	b=mpW+hD5ANCHDOxK6x5GW4DxUey/idmjki644wV5i5a7Oa0YIrQrqkY8DNUoF+Ubn7
	 nIqoS1hh1KkrQsiSCnwgaNrwWvMqch4oHpWa7qqF9j4MRvSKQIjALyhhd7gZ2PTpIl
	 N5v3GrHLiLwIA/QSJiPFE+tfEo3Kr5UwLS2owctLuq/dqQY+OBtKGtLC6eGdS/RYN2
	 lNH1S2NAOyLMxAsYnBnabKuQGaOP9jOvS1wOoZ9IXVBCHCalq+SA0Kzqtubz8NPiMM
	 lWfPlYW4UEmo9byjkNzqnRCvHSASQLqCiET0X6nYc9ysm40+b+klZd2+xp8IWvMexy
	 eplHsWukZ5/gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA6FC61DD6
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178824123368.18041.15869042332069495667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf887868abc61835fe4a479af1abe9f5f92d4a5ef43b414117facfa093014c0f
Date: Tue, 01 Sep 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788241233
