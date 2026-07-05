Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54DFC2FFDCC
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 12:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783255714; cv=none; b=snek58kHtNJUXcxFrmLTfkGwAqmgwNR2jJa0ewSaY5wGfkS2EnCnN0vzdPdcbv8ImK9tqBHD0WZhk8cvPhdGQbwDm2XOAkUkQZGxebM0V6c44Wmv/nFbrEQg3ZYvibrl5UyPV3amA++TRqPUrc7CEc67QVQJZVC7ye4s8M45k9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783255714; c=relaxed/simple;
	bh=+psmqQ6b1tRH0jqSroXp7P/lWOjjXrApynG+2WTZWKk=;
	h=To:Subject:From:Message-Id:Date; b=UCAxyqOJ5TOT6IKZDMhXgSf7ziPpONLqkOLACTw0WdBy5Yv5MM2squV9mAmncGKfeIRKeryvr/3/IGqgMazQbq//kpB4rsx16H3lfp8cgfgHMzYNi7EWSv+FeRwkQjYIMP4KSzF+cH72SR+tv4xhWpbhxFqyY3PxQUNIrFUb3yE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AxyOp4yy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AxyOp4yy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB293C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 12:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783255713;
	bh=+psmqQ6b1tRH0jqSroXp7P/lWOjjXrApynG+2WTZWKk=;
	h=To:Subject:From:Date:From;
	b=AxyOp4yyH3Gy3pUfUna4OxFbXTdICcTCeViJLZEvl04ZNwrUFTgaoZ+L3SXWDhoVs
	 tPk9u9yfjdMy4n4tuPLtwmz2TdmjXAnyczGAl8WIUiiCc0BMF8f+HeA38yT4/A8QLP
	 DRuROp8czkpPdxYGkt3I2RwX0B5X+AC4Z/mndHlBf80cxw4I8hql77vzIYnp9dtcNa
	 Hp9ONPDdI6iN3qM4P0cp4CDnUMBcybBFQCj+IV4xPzJXjP2j6RixJIz01dzwOWvxLD
	 yylcYv413rwkc8qsGxrIcJXU8mKMU3t34eD8Pydhde4ev+SjLMfiy0cJgLswOS9sBl
	 Wy8RFpiRAG1oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8873C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 12:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178325571368.24679.12868539932359030260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bac83aec2b8d06c6a15d059e6ab26e13d7c6fbbd37563164bc46ecf898bfcfb
Date: Sun, 05 Jul 2026 12:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783255713
