Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319A027F00A
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761772794; cv=none; b=WVPrxAjE4h9k/AkRCf1D9rcbTKU6LKCBDjt9EdkZBvuSOIztbTEwaZHtnLQjeJcYTiPm9Hpv+QEgWeD4UyZTDv6PKrW+/HCV3flIB15CNuwJPSOtU5McYOLSiY9KAhAXSBQv3qWbVwCZK2yd+EsA9pqXwxZAhlp7mlaNWGK1JYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761772794; c=relaxed/simple;
	bh=CrKqtg7X1yi2U6jqqyHrCqhrSZ0Yonuzyyef/qn1yB8=;
	h=To:Subject:From:Message-Id:Date; b=D3wy3GzRmXtIn+uqnwl+F+vT/yyxWGIsNcPlhiUbcWALA10zby7Pe0ZKrmebKP6wXQrEElTS9sWA9+n8OSjX5/76gdrVk0vGbSHVEbTOTC4yTCdnPyMjPG6louqgOXE0eyP6F3NSUytJVNaI/d6n0q2FnDMEQDIva3nBcYUwlno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iTKS+aB+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iTKS+aB+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D1EC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761772793;
	bh=CrKqtg7X1yi2U6jqqyHrCqhrSZ0Yonuzyyef/qn1yB8=;
	h=To:Subject:From:Date:From;
	b=iTKS+aB+xTOdpTiD2jXhew9PAOt3YteihLoJecJeyve3Pg78LjG8xj6sw0VxN984I
	 RGNfZEnDt29QZi+JNMpFuxSe00ViI0fYwdMi9QB/n2P7ZBhJlY3w8gsqXP9ST7zsvJ
	 8egM+utGzyhT0FViv+/CyiE2lQ7qc1+k6cae4oFo3/PTFACWrfr1anD1oCDAiW5bWt
	 mVGV7JGxPzR4O/YJfhzQ5uh2K/kLCHg22w+8GhpMHEE6GV0fRKoxX5sGh/ImVJp/3U
	 kJb1jCkHz/g8axnnY3GLzMINkvJ886VSt3c1w1PB3qYYHsLoaGGfrl5g0a6e0zgsVA
	 r/qck0EqsIrdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D83CCF9EE
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176177279359.16353.4254758307126428163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca9bec367d002e5a7d46107e524da0ba28e4707d67fa77c9bfd9f7b5626de71e
Date: Wed, 29 Oct 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761772793
