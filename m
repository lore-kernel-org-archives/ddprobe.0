Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14CC43451DA
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756756195; cv=none; b=ImxRKjU4lJyjOOLVV2XGcE/aRZj7xUpEfpSOARZlbcLcAesqPm32iilDUkA7tUwP3FoTAy9NYzoA0pGP35jyiOe2So/MuqTecBzKdSZsrrE7hTZztv0GpDbHH3UzT/yY5SymF5I+tMTTFvGEEw+JWdP2QSPEQewWbx0jvYZg14c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756756195; c=relaxed/simple;
	bh=THOLstYgDli0kJg2pREOYQIOaUOSLXGCphkDdwWY14U=;
	h=To:Subject:From:Message-Id:Date; b=iFjStwUQ1NKS7EjyYxMj3AND5aCWRIj3nX9Pzm/neVgRhaZGToKWFQC7LZeBphfSbNYqZRh9XSmJQfivdXJX8igH9CZgYTVGCx6SapZwb9S4BgGh/Cj07TBf9kKSGNbmcF+2KmwuWWDkWd8E5eg9r70n1QyQlOYzapWEkeglOzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lWr3L59I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lWr3L59I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F892C4CEF8
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756756193;
	bh=THOLstYgDli0kJg2pREOYQIOaUOSLXGCphkDdwWY14U=;
	h=To:Subject:From:Date:From;
	b=lWr3L59IC5gYSuyQlBe/HF9esnwviEW5zNXLiXhm3cNs/1ezFxjp8RL1IzmkXk3dx
	 NMTHj387zceZu3yOEGPUFI7sDN68rEdpkus5vHvdKFKlztsRIMszV9RDs2xKpw1bKa
	 D5HbvUkUcnIHmvw3+SJF1XGl14/pW/2I50cwCyvgmFwx2cEUIsSLAuWl/LQdfXoTP1
	 F2MUFicZA0vBQ7VS8FAoF6tu/xaEQmIJym/NxYZ286PY82T/Aa+XhWDuMHMFqT2idh
	 i+WOkBLzj4QshqpoaYn20EwYOSBgRH5+rmEk8r7vLrqPHaEji9ZxPWHz7Cwpfu2e7e
	 5G2gV7oB0eMyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F493CA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175675619357.22517.7772179566727922818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22be5e2615f29828337922309bfbb618062005b21de8b35501e28dbc62468d34
Date: Mon, 01 Sep 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756756193
