Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406572F3622
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 20:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781469994; cv=none; b=uKzls9CBFpTf4CS8X/2hQkxXadqU//L27I7u6fOMTXtl8EH0TCuoaQz2y6zz9q8rftBtTa1QPaPYMWXGEzPySQtBlyQQRCXwJFTBumrs8jFA8n6cPdp0IFRIfiLX5E88ZjsSfK5BuvfQc0uTB2/LjJTZWHcxWCHb1o13XOlqcNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781469994; c=relaxed/simple;
	bh=bewwSuHkbtRn4bPqI3LDHhlxtpmA0vkvTe6yu56sOWI=;
	h=To:Subject:From:Message-Id:Date; b=ttTcWYLVJY39nDPxTVFjdF8Ot/nCgMBVnKhUgkGnRQxnZhqNyXp2648iGFI6iycOqR7rUUssrVwDCSVxy52jKaitirABJ9W0VMTugZyBPs5D2TpPOgluhrTv4GL37giAi62/M1DdBavtKLJfh7W48WMfxs3zIypjWc1gKNVKWgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Git51+C9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Git51+C9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A0BC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 20:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781469993;
	bh=bewwSuHkbtRn4bPqI3LDHhlxtpmA0vkvTe6yu56sOWI=;
	h=To:Subject:From:Date:From;
	b=Git51+C93Zt/fL2Wt63/Hl9TNn1WR2KBlFF17SM6x9cRI+7nKHsByfHdWesKdPDHB
	 WGSrdLlcm0XDVGjqUyHnLTqELX/4a3Mtev7jsxItwOJYaEXUjyF4pJE/sJz2tbtvf6
	 JmZWuwfQy+2jc/P+hRAWiOmOeN8k9XmBElyhh7WtrOsyZ6H19xyy7TZd7B1Rrt3kaS
	 tl85NO5CKhcgtFzlKxQ1n/49J2LtQ9oLBuqHFzJ6GgkolUXzCmlBhYiYQT9Fhr65bA
	 ePctbqzsR7I5W0Rr1qzluZkmIu0UGBbHY6qg8p/TsYasoluZdJyvylXlvTCzkpZ7W0
	 BBplnvTaklxMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3294CD8CA8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 20:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178146999370.32062.15785117924484439954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec36c32cbac873f770b48199175c3a917f87c1a009ffe7d514623145bcd4ca96
Date: Sun, 14 Jun 2026 20:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781469993
