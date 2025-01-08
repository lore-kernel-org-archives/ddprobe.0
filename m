Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327E8202F60
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736363154; cv=none; b=oW33VADOutMQW98pD+k3hqTo+osbY8aC7oCcPdACg33aLjeiVJbA2HXKgdlWxbnZTpnZrSxwhLMVwxlhTMEmnZ03VPF5OjqCnALUmLOi6QozilACi9vROT0VrAYLydtkp/tMTmgbwW3it9iU8j5iaMSUxfzN+qOlH0sWo7CcPno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736363154; c=relaxed/simple;
	bh=pchYdSYN7KGMfuZhNTcV9aapd1V4/O+p8mmUO4BE9eU=;
	h=To:Subject:From:Message-Id:Date; b=DCXrIsmfNEA5Whvt93E/qpuDaURw8NJc6cjEmAha5Ot3/fwDXa7Mm7ojHOTFkgFzwkRAh3n25flv3LI6W3fbZndT+nCDH3ZMJ5hT/TXlQsdWkqz1nEShZDAZZmLM7Axt6cCWLG05Cp58Hzoue13qDIgA070uDzpINfYfpAQMtLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lQGLzlrF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lQGLzlrF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4427C4CEE1
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736363153;
	bh=pchYdSYN7KGMfuZhNTcV9aapd1V4/O+p8mmUO4BE9eU=;
	h=To:Subject:From:Date:From;
	b=lQGLzlrFoZdDEZvxUAYpQTVGgMpf/U/hkO9Az/RP4XZ67VgiqFU5VOV1PGsqnN9a+
	 NBydVQCoCXVrf6cLjdpTON3fxPB23lBjOiB1ZTG32NamKjbiTYvy9DtGnWwH+fuRH5
	 jnmSY8tL09SWcJpkiySVMvz7kfi1Fv38GkYp6egDu5HFveHN98uKmDQoyXOqmE6LTQ
	 EmeZBVNcVqglRz8/0lelaaApfmky4GVOMEU3Bpzg7DydZi9TWsJNCumVdLdS9nYoon
	 w03roqiTByG19sSGuLTppOrrzrX+UsptpE0buF8WKdc1BujZVOffqrDFSXHkg/ebSy
	 hdFWcHn4efi0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE2AE77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173636315358.25098.8664216359428980987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af22cb31b39623cf50f77dcda33480be2c2f9aec8392a63cecb2418781ee9c4c
Date: Wed, 08 Jan 2025 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736363153
