Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248811F9F5B
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736812554; cv=none; b=HPNGq9LU8Fha6bBYD0ffKSElUqsswIWW/pU0RGcebZpAobi373FRqEGxsiRUb9oHh7kno43kOt19qknVFDzj2PIWZsuRdG+cdoUCW8rm2FOHN8YesEf0GWgMGO2AKzaYzalS3QWopXfQfmjodBZDH0GMIOIBRVNf2Wjhm1qO/Mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736812554; c=relaxed/simple;
	bh=WONlNsp9+7qtMqPXR+bcuMgKAUkL7lryxtefIDuSk9E=;
	h=To:Subject:From:Message-Id:Date; b=bPbEFxvyJDULaU/PCFDUgqukNMUVyOy0TitlJGmUAsqsWmlpXqctMje4ROZuQYPgZlECe2N+ZnMcnmTjZ/AWKiSlmz42jBF7VST0r7C6PsjWqg9TeU4QwM/XGE6NAfNY76L8Bra9UAGeHTN5MM8NPx7B6D85i/5naphe4GXQCeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TR2g7W/W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TR2g7W/W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8023C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736812553;
	bh=WONlNsp9+7qtMqPXR+bcuMgKAUkL7lryxtefIDuSk9E=;
	h=To:Subject:From:Date:From;
	b=TR2g7W/Wt3N+Z54K1B7EG84pDKZMfXloKGL8tyWNo2csvYFMj66xbTS4loMGhHXYW
	 8TVCpdDcecR2a5pAyzY20zF3LmXPGTZEo2UASQOw4k5KAHjOsbXMBg6REvbVgC+ika
	 VqY9JIWLUW/H48w85lx3PHRdFyNbaaEBYsbS6mWxf8nbJ1h0YUleft2ZF65J9aLPjT
	 OANd3YrWYsIjBXaRyXn8+toaGcQ9zENwZLhSaWCNd295B4/GTWraa2Qp20AJMeZZaM
	 2Px7pDDUEopbaBTTz28T3m4JqqYdy6qqKzYTpd81li0ajwtZ/6jx3Sn4mHVYd996eY
	 yOgcxnHP/awCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914B3C02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173681255358.28833.9561275777697674481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d7ddb2ce97f8a003564c268fe8da7857cb9f7a2e4c88d1727dfd9fa6a8aa499
Date: Mon, 13 Jan 2025 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736812553
