Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E79FC134735
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 17:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711734497; cv=none; b=GT1OISVlKlz1MjFtngGLIP5VKg1i6IELcMbp+59FDsS96CYS+Ex7vCWm2i2KcRdFf/hktpnWXk5Mzv5tG8dWyvlsVTjcVpmXI609VEV6LG7hidVBAk45QLjQ9CJeueUykRlIYGMspVCx8YBfz36oBG+C2lQ7lMz67mU3XGklsE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711734497; c=relaxed/simple;
	bh=ohlOvThhaOCSJwGr3fyHyhRrjqkf1IT8YlImLjDXcP0=;
	h=To:Subject:From:Message-Id:Date; b=LB5I9SyA4ifFsx7L/QiS+0ZearUUjNeGsUPTu54dZXcuXSlmKOg0sbfJg0MZLL6NcdzNYqEtzMiY3Fym4FwqKEKg10Y1uXGC+Ak/YvC2GF+fOMxy292kXZCAglUOUzPzFaZEXYCpeYes+D8ZhkF8k+TnWoYTeg/YJwyxQRqvZWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hUVHN5VZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hUVHN5VZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80C9CC433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 17:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711734496;
	bh=ohlOvThhaOCSJwGr3fyHyhRrjqkf1IT8YlImLjDXcP0=;
	h=To:Subject:From:Date:From;
	b=hUVHN5VZU7XJQLzRpTM/nSb5ehNGKDcg6tkalZ2hMbY7S7QaIQxP2bzoLAdVWZOpj
	 95cr+itVhWhM/y1yXXtazlsz1qcpbR3aVpOjXNZrqrsSSwvUf+7nF0S9yyZRvUfzaZ
	 SGbf0EaTZVYUWjcpY0kzWGlznIPer3jpbgs9WTIe61J376QR3VmisG9JNA7s+3IMQq
	 mg+IkUekUvvGOKVFaOEPDpFUe6qfznh7RAl3xGdFsX6xfHFF50Bmy3urjJwlyPFFUD
	 cjxARqWRbvqYxsvEKtgRuygQwaT2NwSO/BX99EliIrH6puKojZlKPh00BFSwE4PJB1
	 jKiB3+C3IXGSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7063ECD1283
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 17:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171173449643.32188.18269542068886816231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6eee34e4b173446f65ade497999ed869944db72eb8ac09df4a32a476ed9a47c
Date: Fri, 29 Mar 2024 17:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711734496
