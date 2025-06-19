Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2681A238D
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750343394; cv=none; b=nCsGCTmaAMwGawtL9vXmxvPfH+J6LYw2Lzznx58/jY1DV9VtTpWji1TK4K2eTx2ohWtEm3d4JU/Fi9/A2WgF/p2CVRAJ/vTOnxqYrST9fRicHtAA363rNVviRmbuZ5BpCygGZ6Ud2Qu51D355zoMJbtwBQ7qOzkqm0I79JGQsr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750343394; c=relaxed/simple;
	bh=fd9h+XtZeNv3azOywOldqjw+R6Owy9q9x8YOb6HJxPk=;
	h=To:Subject:From:Message-Id:Date; b=DXnehf5bZZoOgRpfwL7OBDkmWJ6fysv2DC98W93zM08B/aK6r939ljm5Af0wrVllxwx4STY8yc0GS0iWiLbam+3XkwRj/E/WG6Adc6A+diNQxfbAjoDTxHVqcMlhjL3D7yuNQ9ZQgLCLvcBVqwZFefuNQoyuOX1ipHucBknMl/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PlHp+ve9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PlHp+ve9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BDFC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750343393;
	bh=fd9h+XtZeNv3azOywOldqjw+R6Owy9q9x8YOb6HJxPk=;
	h=To:Subject:From:Date:From;
	b=PlHp+ve9jYd/HV0D4zBc8m/wR5/pLvCO9XgGg692YHGd+FKmbt/9CBprS6OYWHDgI
	 QuF2r2ZMBLUCKGyP2BsuBnOQw8Uhbtttu/dwyQ9VO2rYAQgzA9zquWuEdxCZFIKug0
	 WZL/b07QbBTC0/oGnCipor823vcZl5RbFpsuo7aXRaby0YkWdoMzMj+omDev8F3QE2
	 oTwQSsYYjgFglaJ2PnI8x/dseJrXbnYfRcJ0aLT0b7OXOxwusaj/GShK/gKwoqwtur
	 kiY32frghlmc2yTrYyka+OtEblJS1axcJF1ko1VxETUQ7gj+GomMNmQA/i0lb0YI7R
	 drUkWu0rM3j7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F045C7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175034339357.24429.6260833531318400609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c554fb7df557cd285df0869f5c1cf74692ead759438780d359424b0aff5f44f7
Date: Thu, 19 Jun 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750343393
