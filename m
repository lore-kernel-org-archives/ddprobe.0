Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F17354707C
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790477434; cv=none; b=ZPdH0iMSX6mebBJou98MWQ3OYK4t5VSgtYSdYmrIKd8DmIKixl9gbD65FYMNkRxfE8LjiCweH6E5RQ5AWCqZDnI/CAry2FWwcDuxqAgsM5nLMx6gRKFmKz0VxFZa9toHMCBdDOxuBkmd6OHGhame8jWFFcuhD6wXxalQSNA8vEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790477434; c=relaxed/simple;
	bh=O70gRy7jWZVslRZSiFbEN1ZDIIOGKDLT1TMt3pGrCqo=;
	h=To:Subject:From:Message-Id:Date; b=irALZ0W7hQyGRT1Qp4c8Ct8BSxQay20Ss5TwjD0JLk1n2pEn3oUuu2rcCmlfSf65CIw+eh2C/tZXQqzJ5e6ABOrgPo7D0fsvLH8H493gMX02CSK7IGUGlilD5H4ww9T5K5fHBrg6907QgKMGFa/comzbKMe8MoG2VSaNfKvf7Bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iKSvFRCW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iKSvFRCW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D140CC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790477433;
	bh=O70gRy7jWZVslRZSiFbEN1ZDIIOGKDLT1TMt3pGrCqo=;
	h=To:Subject:From:Date:From;
	b=iKSvFRCWVw+R0zwo1P4m/ioyNUoCPEzdxmwWyUCgpowWQ1fZZiQFObdeP3TWBohc0
	 Z84wpk6Tc69eMEXfcoTx5QqPBZ+rgUrnJ8pGXEh78C9WdnfACwC3FuZNl1yKvECuM1
	 n9MO1sw1MF0Igup4KWCdoVF2+gBKiUK5z0t44bO7Gg2zHbDld52jFvUIqzcEdwZJpc
	 a6abWmYFWQ96eubiyRyYgG/R0LQD744uW2MHcsmmV3QHeP38oS58pzn7x283rdlw3n
	 5K3o0QyjnwKNjudP+1HYotSI3MxiCVl7tyduomP2VUwgxxB1w++8ajbSFkB/ZXHqSD
	 p5d4HrATD65QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5E5C9832A
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179047743368.23285.15440602370892451958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ac749f290244e43e66f2bdafe8557f742eb7185715e3025bf0392a312006e90
Date: Sun, 27 Sep 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790477433
