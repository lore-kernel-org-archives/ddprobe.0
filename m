Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DC224C077
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759340394; cv=none; b=pZxuW1j9ricbsqonRRu0utFQwa4gJLGtkfQFj5PzycvjpHq0GPLSyijR8+sDmjCqDpda6cJFf0FqX49mZr0GFkE6dWAW2LTbhFRr0tG1UT2XYEEKIaVJ3apRa5L5FRzW4MwTxRhKp1oO49HcGqEUCP/ooZN08yU0kHA8d1A5ERY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759340394; c=relaxed/simple;
	bh=CLKHQOxfJttZLIhXTIYpkc8NMuG3K29mW1RfeEqCxVY=;
	h=To:Subject:From:Message-Id:Date; b=SVUlFN4fA9hpleoTEM+yEyPP2IWhVM9qxqxosv3Y8I3hiBkdmJ2oekFr85c5J7hccqzqB9CP/R372XveGToRkQPY55xr5F3ZycGOX5ZqTg86P2iFy64tVYLWYkM6c7x9Az528cflnKuvG66nxy4RI6Ybr7/32NGUcLPuBSlc4cU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FErSfdvR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FErSfdvR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B26C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759340393;
	bh=CLKHQOxfJttZLIhXTIYpkc8NMuG3K29mW1RfeEqCxVY=;
	h=To:Subject:From:Date:From;
	b=FErSfdvRU8JKOv+sT9cjbiOTQqUfOBo9c9NOx5onxYqYa+XzLt42CbL6pU6GnKeES
	 kDRJukUTy6KnF7MZX23iNAYNU6E0BZl8fMDuQvFXt16nRQGHtQm4HNWBYGxpVcDUY0
	 1JN/dvc0VMeCFx179m+IbI40SfsVVhjHOM+hmspALn0U7yam3yXV5tBmgJswavuIiN
	 YcKyDHxy+sLDMi1w1F0z4nfhA/FlJ5HM7CWVHo3czBxMkkmesVqkWF7n6DoIglkQAg
	 SyOCf97+GWne1iUOtWWskLb8+SjBmMempjbozeS8w3ZDNy5QHj5+0W1i3XkqRKS2lP
	 O9+UEOEdUW8DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA8FCAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175934039357.30827.7844793862223037954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fdcdb99da50dcc0ed214c6a7837f9d2241c08ac6bbddca3952019ce055070c7
Date: Wed, 01 Oct 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759340393
