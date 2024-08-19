Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5085314263
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724029554; cv=none; b=k/xvT/LfQf1fCTXk1mZlftRICmscOMZ+GJk0GhCC4VFu6STnZT3JahyKfvXKNH5CedyQpvIozm2disd0NVMIeaWRX7Tnark03XFpdCkoUn/6uH4DH/xLKWSwqe+j+EHx/TRh+vwfdzmqAsET9WaFjrUtDj8cqBGCMQSz0GKnuSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724029554; c=relaxed/simple;
	bh=F/lu+GRXYCJOu9el7IwlmRCln88/rmZ7EWm7PEQ3kXw=;
	h=To:Subject:From:Message-Id:Date; b=DKlbyzBUcZh3fkXGAp7UFHpPfr4o382a/K4Y+ktpgQE8A2mEADFSFTOpC26gDPeX4zD+KncQxqWXCeXQBEwBN2xIOOCaNI5gSdkrj+MtAjHGIjp7x3p4puck2aea+hEl2VH4zcAQIjwznN8KoymQdTOAH0zF5RkSDvqr9h6W/7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MORlCEuj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MORlCEuj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD97BC32786
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724029553;
	bh=F/lu+GRXYCJOu9el7IwlmRCln88/rmZ7EWm7PEQ3kXw=;
	h=To:Subject:From:Date:From;
	b=MORlCEujOkYjsO3cVWwTaBcGsk5rzYrGarQ1uY5z97TJ7b8BfRQdFJRWnleWXNfqs
	 O7nZ4oTzuPJiEWPI5qtxLteKE+k0rsL5fuuOUbNcN4ugg3xBKbtmBJb3hnbfpsrS1h
	 IxsNUiomd8DtAYTMOkkW2pLXL1UwJ1R0RgWQ/sC0QoSn8UaG9GUzGtUGUNFk0k8Q9j
	 deWDebBfg71QVQDx5LiNAfUMOti/Sz8uBE8dHnsaJsUQUQHU48XCSgAPrjREs+/ydX
	 +AYWHLzyDEoped/SSd19uZSSTDTGK7cp+lPmVFvvggfTwdB4YdMjndOzGfGQpqexYj
	 ghDb8loQQxG3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A31E5C531DF
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172402955364.31323.7301510010432904860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fa9f9bc11885f9b824bd395fca44e0932d3fdd2a1fcd3509d1869c6b3ddef37
Date: Mon, 19 Aug 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724029553
