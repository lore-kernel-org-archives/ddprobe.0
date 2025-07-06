Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3347C4A3E
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751815194; cv=none; b=WPC5lbs5j2Fbs89k+QEw57njHWrDM2WkJyv6MdR/CL3398742yTJJauTclPTSQY/6HRWWkxn83lfFP0q5TfXPCfYg55kEmZvy+MMbWBPQaFhRymTxdiUoda/Td1C6Rga4z6hUCStqeDDJjF9c3qV3At7kpMoXCYc6PqkNJ0sTgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751815194; c=relaxed/simple;
	bh=NK/PszlAXsugxmczlHGnAZRMLxD4uAeFWCDcdg1HqKk=;
	h=To:Subject:From:Message-Id:Date; b=bBciwYC72zKopLvjDDoDeGNhYG+Hsgyn1Hr6nZCbdsq9yZgijRjvVshqVUnJM95iNnHGQLw0R8FNQOShPjqR0Aawt5SA+0JNX8Ld1DZB5lAYdH0UoDiRppTxTZFGoElpw1GONcRsLezWJa5sbUkpZP2VqjI7KO88NdIqakRdAIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k/GIsDj/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k/GIsDj/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1940C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751815193;
	bh=NK/PszlAXsugxmczlHGnAZRMLxD4uAeFWCDcdg1HqKk=;
	h=To:Subject:From:Date:From;
	b=k/GIsDj/o0qvS3CcqyzeXGF3v0ztOJKpItaMVVh4LeZgLFfyBKU5KZVzG3nkoZNGy
	 dHUVBOBFespSaOie0gCPvU+a5Br2tk4UiIekiMF3pO/6ks+IyzjzGm+msRsz0CjVpB
	 RT5KX2tvOqzJ7z6poRrhXAuwIX1Qz++Cu3DnYr0C24PpU+Zhn02iVx5MMvtVAQid2H
	 Ok7edaC+2l+wTCvxoLosto7OqMq+lKwVsMTxaPWSp15ow2N5HcrrlzcBUfP59IA+mo
	 aucTYuyRbDyB7r0pwtpXMgS2894QBiK7Yqat9BbeVUBytFTcSW3VvkfHSeGw/oDWjU
	 YpaP6fQ/YU3Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F28CC83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175181519357.26143.13236279096160090630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe833ddb8012b0ea58b5e192dd879be5274170b511b7d5a016544cf308acef4f
Date: Sun, 06 Jul 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751815193
