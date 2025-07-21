Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C14E469D
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753072194; cv=none; b=knBEEMVFM2scEF6FtyufyETTc5umAGhWF7J+N6yS3d3EeDCD15gwhT275BL0Vcqcr+Omar+6F75rSQLfKDgOAgXXO+XL5JIzbyOc7arwsaoL38WPgprOJD8vOLWJ3xdE0YsxmnCZ3r1z6mpQvsh/Mig5LZbrdmmjQCHjlXO2iNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753072194; c=relaxed/simple;
	bh=0vdVXFHELiAIR5CuTSiwscUsLc8dGttriKHJnPrfms0=;
	h=To:Subject:From:Message-Id:Date; b=KK29lh9/exfiU/OHHmkS8gSZaU+A/HUQod9nlHvkp6YJiA3O4UVG4QOGRN3oXPxHxejeC5ERiW8GbK2NJyWZ52Ub5uM9JfjI5Jzng98Xj+FVlgGRLTX2PZfydvgEcUwM+cvoK2i0pFoo8XaVH+IlUWdqd3ZCzFKmMP2E3iDjQYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IwRGKfX/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IwRGKfX/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A715EC4CEFC
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753072193;
	bh=0vdVXFHELiAIR5CuTSiwscUsLc8dGttriKHJnPrfms0=;
	h=To:Subject:From:Date:From;
	b=IwRGKfX/xsxWw/iSc44XnJmCoxzWLXW2H1wqsstBWfqptuwQXz+YlYkpR85FZfJ2b
	 t4JbAWIoIwM/f8L6ZiYoNB9icE8cehZO/xfvVhcIeVywhGawryV4rJf1un2ViIRawK
	 FwpRkdeNMdy8DOrIc8bNmeEIMiEo69BIzwceyScyO2lJJIU7e8FoiLWBvgjO4NRdKE
	 gBU+uILsJIbvNfqnbJZtYwqB12SKFm2ex47HjQ1xqw9OS1gW2bVYo2zgYLFg8zHT1/
	 FDVW2zQWlwcBalp/l3fjPZWtMiHW1yoefM0DywQEqZSGVGBhbJYDnS6zPb4aMyVgFG
	 tik/RK0uNQfsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E6AC83F27
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175307219358.3779.18426257224337280637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e45614c7ccef0e406b4d7e7b2c5f4913689b423c14ba1a7e36a905af3d695f1
Date: Mon, 21 Jul 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753072193
