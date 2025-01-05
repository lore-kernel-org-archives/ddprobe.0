Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A1C0126C0D
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 06:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736059554; cv=none; b=KQwzZ2QopLCuz3gzuwZbzrWA0tqyiiR3U+BkDFZVo+HnVSdvJnhIqcrjWeonvDVNIFukPPTxUJr03TiAWazxFktHvrtj/90jBHtScNnlBCO4gH3opu8WLyL4d2ZYKPsQq+XKtA4P1SWSFwLnghz/8+DjS+3MK78lz3dGNGCeEC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736059554; c=relaxed/simple;
	bh=bsYYcql0W9f+XbXp9YGh9Iqbp0DhjFIEdwKf26xKCu4=;
	h=To:Subject:From:Message-Id:Date; b=VVitchz2YenybUlIYFRqvf6rTinG7ht/XWCoSBGI2B12clPMIFtW972upQEnRksN4Eb4zZw8/giXaLLFAfXuLjy3fZGF7vekMz6177AANuNXOlHWeWnKFiotydexq/acaSKsB3JyJqU/WJ78SL2vrFLcUKez7ExCEF8weOAcc2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i4maYJnG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4maYJnG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2AA1C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736059553;
	bh=bsYYcql0W9f+XbXp9YGh9Iqbp0DhjFIEdwKf26xKCu4=;
	h=To:Subject:From:Date:From;
	b=i4maYJnG+8PCsn7y5meGBoMEklqD4RZOwY5uH/d2he66/Doq7HA6M1h4St5W0Yzsz
	 qziB+/hypGXFzDCLQxwWLx0Z9TK7OetwsKalsCDX7onK/wb0JeHnx+KwSS7jKoYXJC
	 nrrFGi1PmT+QggKkqnFRNHMtCdK7vfSVp6+aKBQsNoaZD9G6RE9tZwKdPOLbr+rNyY
	 uVOADrOB6aN91GTeqoVTt7RalcrpDMj/Ro4FM82kowOeGKQfV78hxwOh/EtH2GvwRq
	 NoIN2iO/a9Aqz/KGZPga1qpIe49UUfHI3x1yIQ3ZmbADBJz2C2XMxwScDgdHcUZP8S
	 jUqUdmsL1UxEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE75BE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173605955367.2774.13206325483144933597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4928ef35a0322c6954110e047ffb1fbc7bb07b0bff97af23a429e036072530c7
Date: Sun, 05 Jan 2025 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736059553
