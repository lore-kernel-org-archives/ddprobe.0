Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272911741C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727322954; cv=none; b=ugCrXS9bX9J+ljYoOJflbTkUTRWQLw+R5FZ/yMs4cjrkph4DIE9O/YJbg3vu2LewIOCQcE0F/Ej8Lz1kDO1uux6CDARwcBBCYryWQV1KZ/59ok0At8Aij4ixQoDOBqPBEq5P9XIk2QjAyQQ16I7TFh5dMrpsofTPL/DDNsNSeuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727322954; c=relaxed/simple;
	bh=PLiYIH6bweRO/ZLbmZC3Xi6EbDAtvjHjmw5VJwOUo74=;
	h=To:Subject:From:Message-Id:Date; b=i5p14E6u0jnk2taAr9HHOLC9HB+HBaOXKMaY5EzvOP9YjI6wa7FfgSwI9fpl81Hgo5ck+ggdCCHprpYtFWXxgAzRnm1dL8JBsaFZeFE1crcKtKBOKS7MgiFdfDBSZLQof8xbHktQYgGxM9ciArSKBT/SCioTqW/3yrwJXMWk41M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L+RpRbVl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L+RpRbVl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD44C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727322953;
	bh=PLiYIH6bweRO/ZLbmZC3Xi6EbDAtvjHjmw5VJwOUo74=;
	h=To:Subject:From:Date:From;
	b=L+RpRbVlvGruzgoWOpnioADgGvNeJbetoBilon6sF8tyRkHr8dXOA6XQ+7CRTAUWf
	 w/dTvJEZRR7PdLqZ4JrKqhE9k5qi/BXPzfCrQ1mSDhzKTE9yMaHxrJvdvKHKAzJuFR
	 m5TEi7WhqYstz93Im3EcNQUZMJp5OXzMX1C7hD6JzT1kPg9iWMN8liv0piB/PotIh+
	 fq7bx1rjzOzTy9vLfzPywLxDdCVjyDxgjg58iVn9bFzQ8/qEwNXJnDtSv2g2DRFPmr
	 REqqp4UrCyjitjQNRChoCWb8PETkEXVaSAEV3SPz0g9yGPKUao5N3Dq4fwQvJH6m2W
	 CziWLaOT9SoDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D8ECCFA15
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172732295358.29049.263711956346257843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eb02e23ca62a456901a1a867b3956037793043d4f80a529c37b9072dfdc9c32
Date: Thu, 26 Sep 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727322953
