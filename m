Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6213009F6
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760452794; cv=none; b=Bwro1cL6z1vI1mXe+JEj5H9cRKU+WqPHEduM3RrDOvjgQMlCNRlxNW2j9ChE6DFmWd8Qk9LbEyeUvgJZDitbQg9RyDu6sk+ZJYs/zQ72fr9pC2DCkus6wc+owMkQEKSkA6kRMPRZazCHMd/42f6tsSEpRxwuhojuQj1xxn84A44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760452794; c=relaxed/simple;
	bh=E6vMzozFkrngzAh3bczPzWz44w5iCj6ZChjwt/YIwBo=;
	h=To:Subject:From:Message-Id:Date; b=Rv3CSRDRP5il6XonGja6yaaIiyQVjtDikehotmdYHrCc4kIX4bkm7S1g9L19XdbesdsAzsNyqEbx1i7TEIhvb7hpUOyA85xmlRN/fPQJkkcBMQyRDuJ/G8o5hWr88CehHSApcgSlEIwvy9o8WGai9Nqmnssg3NfHo1lwEiMn8ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OWq/CjyQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OWq/CjyQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC82C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760452793;
	bh=E6vMzozFkrngzAh3bczPzWz44w5iCj6ZChjwt/YIwBo=;
	h=To:Subject:From:Date:From;
	b=OWq/CjyQ1Y2HUa2mWSX5u1SuAPryMgy6BcYnmLYD8SDXh7/pMvutPEhKWLJxpx/cI
	 Drjgka0q1smspTHWQG6IgbCFioSXkn7i7MoHe/WkI2sNiiGmTHkScJEPlfTecXwwGn
	 ejsOQlCxfUudtgcTfQl/OFnwGZ1X8O6dlVjBi0Amj8JgIQzBfVlMq2QPMj5J3J+c+U
	 PUvdGmZwymM32yqfZhPOrSwl/C8CxNg2OycwEsNWc1y4EnQVORsrFvG6/Psg9NmNud
	 YDbiC4O8Xtam/L/nHalFCws4b8ywWj0v9DDewvuQ/hD49cJC8JvWKKIe1JllJZ8c8o
	 hs0TWFFtsAyRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB09CCD194
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176045279358.18395.634821808124077594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 367a67d3666d9c2c8c8f6b8637ff2658bf3aa2d6bbe20b10188eb8e940272c27
Date: Tue, 14 Oct 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760452793
