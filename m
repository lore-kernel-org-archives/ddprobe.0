Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B83322C6D
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758628794; cv=none; b=fP6irCgBlZmGzyeSqdzfz85pPrYTlzfYJarHYsYPd/9igU08aEYi365uyMZNEOG2JqfMUeITZYOgUYGocxRYcXPnl+M1zs9uwtjQ6Ox6P49ujHT0a+81CNeiHdj2R5hR3cgbHxQEyEMZvP7e1/pTqkd6YT8h9RwtPD18fz2R7sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758628794; c=relaxed/simple;
	bh=VpnebzpyruBfY6c6IuP0huDFnyOX2aGu64kUeJ03WA4=;
	h=To:Subject:From:Message-Id:Date; b=gswmmZX80bWct/1kzHbKI8g1cpZFZFGqNqTlaC5KyeSCJ3fWM2AjU0zh+XlnuyVQqen3g/kgwmtKwDne8UYla2INCPQHEFDhvzg/IhhaEAaMl9Sk+y8X0/3uiY/QSGPa+tq4bVafsBp08ztev7WmWe8vXwhuBUmvGap0K70CGAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dsxoeAzL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dsxoeAzL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18C0C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758628793;
	bh=VpnebzpyruBfY6c6IuP0huDFnyOX2aGu64kUeJ03WA4=;
	h=To:Subject:From:Date:From;
	b=dsxoeAzLIoJ57rHEooOtA+kduaozLwGNwj4P/fu63NdE1P8WZrsfJhq7ceh8h1F5z
	 BRA4W4IgcO7NFjXBr/UVjqmf8TSwuvm6qNz7wZbKM03x1GLv9Gzs0TgrmuBTJuCpoQ
	 C86W0MySRb2N9kadenJJGR0Wnmhe3vyenRy/HgvOz1/uUuLcNFYnKHfpqgVZqUTS/3
	 qJYF2K/YyzpVTB57Ooi6iR8+P1UW8d2BDbWJ1FfVE/ZqvxhWTzlSRM/zx17FspIWJ5
	 l0YZn0bGG1Y1bdjXlHsNo4noJaqaDlvmULIunhhUXxyV8P3zV1pX4Q5thHZszuJvef
	 QeNYVDu+uEgIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7C8CAC5B0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175862879357.15247.9603141828441576548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5653790fc02a25075bd2a2162b10006aafe696434a9740eb374e4bb152f9255e
Date: Tue, 23 Sep 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758628793
