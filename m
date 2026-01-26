Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C89E3382F2
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769442234; cv=none; b=EpNEWQJjW6E6E2rW+jWFVA22i0b/24nPweJwkm8IdH/MmT8vEyrb7IMwdVLscViDTmBNDtdQO4nb/bTUMekAPKS659F8VELybBj07ldoSGqdoCqJRJXbsaIZoECTyFe//PlJrHiQBbpp8PnZ5MxUYTTsn1GHj8YoW2+n6Q+xlw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769442234; c=relaxed/simple;
	bh=E/v5QbmVblkuY1cl1tDkHR65/BulujXXwxQBhJv5/B8=;
	h=To:Subject:From:Message-Id:Date; b=UrmoGrpfrcw/C14g4MXDBt7bS9tBq06m4Tt8mvaX9W71RLcdr6tloSH0PXydMcNgRQDA9VKJiERgqDutd2JmywjdkujUcHZO0dPJtnbB8avIDNBH57NLyZYGryq49CngTVjOCwEWZWCqCJtg3Qk+B+VW0I3yE5aZpUCEOpRQL8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b8ZsndAO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b8ZsndAO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B7FC16AAE
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769442233;
	bh=E/v5QbmVblkuY1cl1tDkHR65/BulujXXwxQBhJv5/B8=;
	h=To:Subject:From:Date:From;
	b=b8ZsndAOUs7Y295XWP5Y7mcZv2aMfDtRcAuflvCuDrnovQgOuhCvgxX9mZphWZ869
	 eaYWj5vqUOoR+moyI2yraT5PAkdrVM2BE4B1v0bNP91Q7aD0X1bxgkgLO76L9U9kpS
	 L7uGGCsiPQtNaWYEBOoTyZLl4Zuc9APJ7tALU9RQoUa5pxQ+oN7+vmrZYFNT34zDF4
	 eZeVlx6gnDsKq32tGfH2CdiMsCamCcnFjzBmJq8aMD5G73Zi/TWNNWf7TFnLSXH61s
	 yX2OkFmVozhwhBtLOoArKD8yZcM6IJVzp8k6441lE8ygzGkbwomZ6gCXMKv3TP6vp5
	 Dgf9hTIqZ/jSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D10D13C39
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176944223359.4501.8395593548141944146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3976e6cb8ecaa1f957c387259039cbe3b2dad8c90940396ea055d543fe1686a
Date: Mon, 26 Jan 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769442233
