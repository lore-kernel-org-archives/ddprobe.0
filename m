Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECE4D17921D
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724086554; cv=none; b=gkfqKhOx4eACZe+BeHEcn0J+BIUMrvUsI9qQINYfCxN3yDBjoCWm63WNG6qEhPQ9ytZNFUPdvyJeJsVJv3ewzfUodfaoko7K9QaEf7KXUwxh4xqt73zmO3ZJpUXGsIfHi+py37ltmRRD4owhC94xYHVIs/jPuewC/03vqL75CHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724086554; c=relaxed/simple;
	bh=DsU5lZ2+1ftdCXyK5Sdp7yaU2Bose50An2+2lX0WG44=;
	h=To:Subject:From:Message-Id:Date; b=SV6l8YQDzBHhBuOnahhRB/4ixDM8tEL9J7ZRCXWd8iSnX0sMMXzgQJ2xTABeonvJBtjlAn9Nt15petyU1eKhPIENPP8CUAOLpYIILYqM/C1+tnfE6k95j2IgwEiSjYwxBa8vBzbt5eJ3c8e6YvlTHvvoIh0TuF4nbVI5zOFroAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g6BzT8ci; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g6BzT8ci"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA397C4AF0E
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724086553;
	bh=DsU5lZ2+1ftdCXyK5Sdp7yaU2Bose50An2+2lX0WG44=;
	h=To:Subject:From:Date:From;
	b=g6BzT8ciEXMJWORvu6PE9Lx1WwgsaTPxplH0l0ofDCHK2DIolk53mLooJaeICzZly
	 6CNI/xoB4ozSNbRzjEN5NFAGYi0vq9o1xCEIBUpfMYGFeChPSHM3C7DyF5LF7e49tZ
	 Lg6IUe5YlwCYWw1XjVdwAPfYlOOCPmdmQ1mc8i5MzRCFtRd2tdmV9iLzojh1TqXCPn
	 S66ruwXvlvIRLargPR6//l/Yufe9e6h1ynB1l4OP3o+E031tHtdu7otz1E2CqncUSq
	 soJNPldbYz9EcNCLBSNYNtmsdQbeJpIpCxihkIMDZPKaYBZc0Pwj4ZZHZZwnLkJk1I
	 zOsUEDmp38AXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A122C52D6F
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172408655362.28030.5919418941341264727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cec5d126782870f11c7881cfccf25b049a1fd731920fd78f91ea0a3dcb18806
Date: Mon, 19 Aug 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724086553
