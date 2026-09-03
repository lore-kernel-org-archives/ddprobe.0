Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2676D4248D7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788468634; cv=none; b=hhMzOZAMG+uH80D2tAljqYAhvd9zAst5ZcVNCcJrxSIt61JN81DT+Fgjj1gizFkchVKcVN2q22aipMHSdJ+FZVZgJlsYeypaTNlA6Gl6oQtMAMXmTiPjMGOVNsuCwFG8Bz6v7V46JXNbMqyap9OVuFEPE2TIfv+pwvdQDJ/B+Lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788468634; c=relaxed/simple;
	bh=otcpkOIUhWJXKs64uCC0gUwb8L/sOEQJ0kQUr4GpKQs=;
	h=To:Subject:From:Message-Id:Date; b=XmiyzYP5K+b6YxRD80R2kph3PBD0zQAjhjRWBDbVAJfmM6o4NQDHoFgrI8KtYOtcIYTwaQiqmfnDHlMDhdbBBO767Yr7ahu92JcQUbhiLG/tJ05ohilb9Cx5WCxbc4bw1MUK8u6cJFK84Vce8xVR4OF68IUNHHVsUE2pSabA35U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WLFrf42w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WLFrf42w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE896C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788468633;
	bh=otcpkOIUhWJXKs64uCC0gUwb8L/sOEQJ0kQUr4GpKQs=;
	h=To:Subject:From:Date:From;
	b=WLFrf42wAtYO5j9VXKkxngIqOl4XMjx9QzXk8pg6IA9bGyGk4IyipxFDsKwWt0x7C
	 KE5KsJucSzJhQk9CfkwRg9MRSfmWTtlaNOALbvijUGiGuXQJlBySHnhovbFwm1NYPN
	 eJhhql4u86o3S044b0vBNrMXoh5N548tYRZ0ZwZyyeJko6kpErt2L+hlV46whuTiaI
	 dmM+r+t80epYSNhkI0RqYXOl2ntqtoi3m6xAw4pGZCnh0oUyRau1m2KmHNFEK34Mhn
	 sYWCIXwuGvDXtms6bV943lmB9bnq7mabLpH0g9quA7YjIgY4tAiCfhptyXl+wY8mx/
	 ocTXj0sTZdahQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB941C624D7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178846863369.7796.10603654829438378143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eb6dc3e1e0eb9a3f488b0869f1c79c1c3accdabc31525e724e23c4f5a8344a4
Date: Thu, 03 Sep 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788468633
