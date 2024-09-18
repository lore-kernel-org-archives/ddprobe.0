Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2582628C
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726662954; cv=none; b=Anv16NUH8ErMSFNlw4h2p6FidroOT8UyGfkVZ6Eyz4lqe/XPzB99O5YgVFMGherDA16r+zaKomwpaf2PBYhQ3+vwG23WQUQ/rFesHqFr2IUr2AxaGcp/XTX99vMzLTvk9vkVbtD/CfuSsRO7swu2AnHdnM7Kyjkxorur1bVsDSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726662954; c=relaxed/simple;
	bh=JSipfppdd70k1U2LywXYkREKCAJcp6indkixaKL4neU=;
	h=To:Subject:From:Message-Id:Date; b=pxwIxhOaj+l4vZbIDfnoj1efv9NGiZp/qZq6TEFOJiqikq9qLq5ywRlKLriAML4SYqvWTxbMQLjTLO6x9JuPDsac7uBNLzb1P+obMrjTDyD9ou92UTOksBkqbKt60jgI+ht2BRHULd7pjQeweBkbFAO5wD3QMs0+xBGAwB9gKc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QhfcCWH1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QhfcCWH1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC915C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726662953;
	bh=JSipfppdd70k1U2LywXYkREKCAJcp6indkixaKL4neU=;
	h=To:Subject:From:Date:From;
	b=QhfcCWH1ZU695n5oHVhXb8KIiOcEPB6rjIw8GwwwLdWHomD1Cxk7G1/kFAgWe1PMJ
	 ljTgAFrmMI8PATuZTGlRoCjTNtZ3rTTf6ULJBeElXRjIB0QE7QrG5Az82cFSKYXQjv
	 dcEfHVo7RErSHj5mCcVcIqq4AiQ7Rg6Pg9D0yfMsRo30lUJ/ctAlscZBASGkk7+yzo
	 HHU36qIh3XMzVa7+8SbNJgig+UZmEWUk0fQlDN7Q5T8AvFxWbAg0XSEHnR+8Dwybvm
	 ll3Gl/3pOsnP4zNULUILE4y1QbUCDA1pwPiVfbpAEe4m7+Io/J+TfkSv4zQwZsLktw
	 v+xvfEBJ1sUWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0BACCD1A3
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172666295369.4683.4496024492634276025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd8ed671a7bc2f4c1d17ffaf6c141f7bc09f3399ee6b57a5c7544707956c2162
Date: Wed, 18 Sep 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726662953
