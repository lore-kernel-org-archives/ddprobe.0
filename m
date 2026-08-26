Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05F3C441606
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 14:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787755234; cv=none; b=puwoimxmifU5aGt4/v60H8T12OlsUk1h1OwYMz6g4Ic0v7ArHN9w2HxkAdIlerWZNQbY4wpWU1XKL2HvFsQCKv7vkxeB8iD7Rt9PMiEkIwd3DOTmbs/5IdpD+Dr1thgvlHt2OEJYMkpvxi5X3BC7ctAfgWzSdHhruHHvEYQgjSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787755234; c=relaxed/simple;
	bh=PhB6gu5YZYoCPJRWO3vy2RwgxBAt16GHEY0USZzOXUE=;
	h=To:Subject:From:Message-Id:Date; b=Yd0KN6H0dGmEdyQW/j9bxsgGEYdnEKpP4+WOlDsbDGOOWDBm8TGSgSRql2jwYnJkBkxCW7WiO/ty+k9ZbsCm1bZDmSk1FgmsNotNNeC+5KfyRe++y0KxywOxzVG2C7/2zskbFPx7RZ/MshZGO7ijHP90bQdSqYxQ+u9O7fO1Yig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OCG2YZTB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OCG2YZTB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB454C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787755233;
	bh=PhB6gu5YZYoCPJRWO3vy2RwgxBAt16GHEY0USZzOXUE=;
	h=To:Subject:From:Date:From;
	b=OCG2YZTBVS/bboeF+sInzT0+I78snDwDHA2NhhhSIVuOD6sRbqcMKvKrnC9DoqMnD
	 IQzeS1jNYlfRpan5xI9Kx25xw8vOnQANs8Py5N8jbfi30CXTvcaDwkSip/51gj+wxO
	 eTKTcZ25Uwy9DA4jD6A85+2omLjqM34lp9uYLGJyzFe4e7kItS8CbF5pgtadUPsTiC
	 gsPvIbIMfJ6vYJ6+x+Y5Z1zJKuo68oG2b+3M59sYhpIYU69Z8hexusjCVDB7QdcNAb
	 p74RNqpOdKPnQPGS5VXP3SOUMB0shR6m9uN00C0uDV114wJZilB7nDh6P9m+1qlWzJ
	 NcI5byQNSvnJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA0DC5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178775523368.3422.16789486183878406509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cbb883ffe6528cdcbfa591356646e43e94303aba89277bde951d45883dee4d7
Date: Wed, 26 Aug 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787755233
