Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FEE81C5F10
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759039194; cv=none; b=n92PBc8kRpHKOjfrlB0DMW4QghLgqNS0ZVoVFrUf6EzqeTRCwj+f45xqFWXby6O5hZnLxEDv3hj6OY53C3MHtrsKFo85qD6nZVoiw94YnLFa+GcVClZK78Ldsv9KslESX8FoxRfZvHiu6URhE3EaXqCGKtn3/J2KY6yk/HP55nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759039194; c=relaxed/simple;
	bh=EG0rSEoPSXGAuWgE/aByWXX7HL0JQUlfh5LhZBLa6cE=;
	h=To:Subject:From:Message-Id:Date; b=CuwvV0yUEtxLVjZzzTq/HkmfFCYHx3i+LAiKxdz1n/zK0s4vZcButAuBif1dI5YzIIuJy4LCHEHQbACWFXoewz62zHcVrDl6nI2YdViifuEQZkSdtZ7a5j89jjlEPV9Nh1vq1q4aPRRoGh3nVK1HmDPloOwj//51GDOmOVOZNTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pgoR+Hjr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pgoR+Hjr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC242C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759039193;
	bh=EG0rSEoPSXGAuWgE/aByWXX7HL0JQUlfh5LhZBLa6cE=;
	h=To:Subject:From:Date:From;
	b=pgoR+HjrlE5UYwSva/s+fl4pX+L3zQ75VQ0DvOjh6B6tflez1YcD7yCsb/kqjxp46
	 j8HO5lsD+BSacbx+XZ+caiMtDTvtW5Hj3+qly45r8nzCYUjaMKkTFCYTzr7uaB/LOl
	 eOXlr4b6G8hwexbsl8/Oo9+uQkKtXqEQwO4qVov+SQDhoF+SuC6EWadvVYFfHhNJSA
	 W5wbZPf/UZVO9tXg2WKvlnjWJ9/1A0/JW5uPVk33ix1Ti+ZoYEYNE1NIdQHyGtjtV2
	 JCdibeLlPOo+amMhM7V1Gl5RudLfXeMs4sIW1ozDv+Pboi5nnk6yPcVRA+OCXCM5ee
	 A4saGOeVzsXWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9722BCAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175903919359.21520.11145067446606011746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12500218e3bcfd6ce091b8ba430fb08c5020ddff56625861c3405c04a5199e4d
Date: Sun, 28 Sep 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759039193
