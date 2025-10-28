Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189652701CE
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761639594; cv=none; b=ISzQuKZ0OnXobRuUIoPb/aLJmxPkoPfdGCLe5SFPxS5AeS8FrDILNCenE6yTVrpd+3CbAccUpz96RJs/XwP8B6/Ci9t3MaQM9WL+DMwfAaIOOeEy1IqPpkf3tkvRxHulAgbgciFz/NesqowTTzU6Y3d0FkIgtjXJaR4tMzIup/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761639594; c=relaxed/simple;
	bh=POanccdnu0GAoiYgODNnEB7g7RO/XZW4zPT6ecObS6Q=;
	h=To:Subject:From:Message-Id:Date; b=OZVWF/eFzbm6/QBYqaub90/W4O8JJSZbsxcJ4fvOCooGsfuCYMWWNpM4+pdXstMp5ehyBm2tmPg1KiF+qQ8ndXww8h8E9rMzpkSkxQgZGEXHO2IvwN17wIjEVc6jz/YvwrIewwLYNHGNcpLv988nYlqYtHxc3DhKn1OyxfSr9As=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJa6vtho; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJa6vtho"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B66C8C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761639593;
	bh=POanccdnu0GAoiYgODNnEB7g7RO/XZW4zPT6ecObS6Q=;
	h=To:Subject:From:Date:From;
	b=SJa6vthoHbLTWJ9Wfgif50woPODS7/SWW/zBO/ktFbFWLOsNMR0Azw0umU0CMOnbs
	 vqZE7HvhEcoEX4hOi0pH6nRSOvci84laXl+GkvInOEz1akjNeG0kDFgitP9iATvpwP
	 eOe3s6kzE1APdtFrGepQfB/gbg9ttCQUpYbELSzooiuW5uh/JYohCk3UAMGBKwGKXQ
	 qZWQu2qwqSxRyD9UKq0JEfQz5tBl5a/v9Z+4jghQBPDTNYnfqnC18YArXiCldu4dl8
	 MbsHj+dg/R2DnRosWUlYcFwgzcE0Eo9EJFVHztFzATnxEl2UiM7l8N1jUzd0XNnrjJ
	 ycPBhSqrYHLyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B75DCCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176163959362.10965.4084805139737004355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6e84cc1e003251f68a12d505b9f114e266eefa6422cdc488c1c74e929fed1f3
Date: Tue, 28 Oct 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761639593
