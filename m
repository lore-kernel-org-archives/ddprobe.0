Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C7A7A50
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 01:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717897643; cv=none; b=j4yoLexDlfdt7GZezWeOPCeESO542e/Gj/2cnp7aYEEXZXF+qOBwOQpoKBgcngGHWVV9Py+zB3DvY1ScSRIasDAsnf0215JnZrjzC3boL4lCoViYbXitIAnLBe+RbOEyp1MLB05kGgW9SoPFVuggHYCR/2SYePs6Q48dhEgwufI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717897643; c=relaxed/simple;
	bh=bLN4IFEdlDmW77pUBzYwYtvzqaoZ+XOgWA1J4+RYG8k=;
	h=To:Subject:From:Message-Id:Date; b=cOskdXhLc7QiG7Wrazv6F9atgu1KRnZ92R4OaKNxn65ZburkOJhH1xh8IAll4p7b/HbIRgpIH1/6q7Lzl10Hqi1FA0BMdPoEMwveg4hVW4aiAAyWURuF51fLfwRR7MGYDJVT/X0mfHoI24VibikwtC8nSI+niKPuK+GUzrETE6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=crKJ2cbv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="crKJ2cbv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7877C2BD11
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 01:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717897642;
	bh=bLN4IFEdlDmW77pUBzYwYtvzqaoZ+XOgWA1J4+RYG8k=;
	h=To:Subject:From:Date:From;
	b=crKJ2cbvU6Mnj9EFTHAB19MH0bGvRT+xvXuHe5oOesNFreCn1dWB8R1mFbT86Yi0N
	 VlH8hBOdH9ZaF48Ilyb7Z70ly0Jjp800LpV60pc3VFjXkAhC3d5mrkrAdqcsD/H7yQ
	 UwLikmk2v4RNZwurgeTxBJCx2FIt2ADB5tkPL4/4w/kwQxYgjTS/9ulEfKpgCtUhWq
	 BI0nNsNvzRA9LbUIkydn+NxjlXWmulUMDZn7MVO8D9AKH3/17gcW+Ld8+nlraGRmEo
	 ct8al5lEVgXnPIra2eog3l9Aftb/0YeGSVvTay9ymmrGMqxgBTEV15X/MQFRnThapk
	 TPui7ngWbMeSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF2E0C25B76
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 01:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171789764279.6560.15996963924740337727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9880c514d7ebe508075c63c61adba51f731163cc1ee8caaa103813be432671b2
Date: Sun, 09 Jun 2024 01:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717897642
