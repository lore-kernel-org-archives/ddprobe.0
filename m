Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2435028F1
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728518754; cv=none; b=FrQOcfQtSZrEKYDNePfs80pQaH5OlWW557+s9i7ut1MbEG4wQWR9P39AlAYEboA04zx0NfY/cZTNoGG3eL8Z057iHex3CtECAOS0yV7uvigOpFFpIVuN7oOQIYKUbx4OnYhBuiRLVIX5bdBU+3pQWacaEZC5TSR7/qOUMpJu0dQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728518754; c=relaxed/simple;
	bh=UXGWBB3Hdtw4e7D4tfemSu7M/xDSB+vZsCz4hRODJRU=;
	h=To:Subject:From:Message-Id:Date; b=PkkorZYr0WVSweTszX8ghZoAuGb+pOz0pw+Z/hz86oXMZ26Au1abeHEL3MkZPwyc+XMw4U40zgozxB5D4pewF+iWn2GXmbmcJkgi34S15nZ/KB2fwxKVbf79fOYNw38CWzpQEXITeqtxuyGKN/a+35vaABedbmSU5xaJSYBx1OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLRkfoC1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLRkfoC1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44E7C4CECF
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728518753;
	bh=UXGWBB3Hdtw4e7D4tfemSu7M/xDSB+vZsCz4hRODJRU=;
	h=To:Subject:From:Date:From;
	b=fLRkfoC1qdkwUOJGDTPIKVI4pXdWUEN3gcxN/jIv8FVfQGzfHjHzv782M69rKXTeG
	 yAI1HHh7/ekTc8nZQzBmfJZwFKNym+hlv4xBCkD8TJrQgN26eXyOvEJt895jXCxYdY
	 kGNybbFK5RGRF7W8vvFQAeHH10Tt1O4cTLnndQfI7LZb8xzSYF4bioJZ6IEHdE8KKm
	 hYyDpMx/uySQc8zx/qqG8e0aHApc6KtT+3EBreDwrlsSvDutKim4feLpsygTdhc+o/
	 ZrdmlIc5g5gv4iqX8Ym64vGbsV5aGlLplD9n2iGeReAcg9RnEDwXMXVk4iGXMp00oq
	 0uDoHCeG6pbfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D61BCED611
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172851875363.4529.161267825318994929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0bf1c176569ac717b5b61c8b3d31d9748d60452601fc32f56dfc07cfd1fce8e
Date: Thu, 10 Oct 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728518753
