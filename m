Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4781B209F54
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738595755; cv=none; b=mEgkwUZOcaPfKxgivFN6nnWmH0yrXJNr3L7wLs6jPGtOe/NqWFRbWZxWN/KDa+1YLZ/g7Y871j/DVjH9v2ZmViSAIx+jjwTl8kDkvs/84SftUpKOWRdMMjtHpNAtayzoUWuNGm6pL49fDM8zCQrXYhSsaEQHUQNkNSKu/aN2fFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738595755; c=relaxed/simple;
	bh=cn3Ae97t1IfR0w0daMnQ7hi8Fr20RRdKWu+VImmcaxg=;
	h=To:Subject:From:Message-Id:Date; b=sTKWNUFeXjJlzqSMIXIvuqVAK6nJAYdhYjL5InOYgyIFOpXTagiAQruInQQGtASIlVE6lOcbZ72N/c1hJf+abk0+qevmCQYQTqxPaXYfNUvF7wFFPQc7ftiDTSRJqbTCGTLh/Zh/HnzBUUEvg1NxksM8jj+bp1q6UWxQs1iPSW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RkFPy785; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RkFPy785"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B637EC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738595753;
	bh=cn3Ae97t1IfR0w0daMnQ7hi8Fr20RRdKWu+VImmcaxg=;
	h=To:Subject:From:Date:From;
	b=RkFPy785U2XDwXV31zxX3hic6zQIven7MJqgTYG/LNehmuuV7jh/ovSA0kxFvqy9I
	 iJ04j9rjZ7Plw5WXAthcxnX/zjsHWlfKMaLOFDqbhlMXrH4wxqcgppCx1QomUBGurx
	 DA4Nfis5Fj95nC7IjMFYhDrvCvpRa4FXkYyYwspkUDNVcUttQn9tKnbzni1aRYwkZO
	 Sejp/HQbZTJ498Fy9fcLoFkppxSfbMJNZG6l/TIDAsibrizVqAeYJvxaCXr+nxfq/X
	 m0u0FIZjQfyUOsAlBsKBDWhO/h1vObFk17Wrlu98pvTNJ6ccoKTzeGDxSsXLjoTeoC
	 H9hZAqmhkchJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6393C02192
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173859575366.6824.13455903000487782139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c4fc3a1af5a9be3fdeffe5caa8f013f234a983c255879301f01d31b1119a62b
Date: Mon, 03 Feb 2025 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738595753
