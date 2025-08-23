Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDDA1DB551
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755937194; cv=none; b=oQF4ky1vK63ftNjAtp21N+HleIcE6IZKv0x5OpbzXjcMhMzmY5Jv0RYl2whdvFN7Ro47+PThBh3a0pQeSzQii5rt2W9PqK83NBI/DU/9qR1Za7wEtroC5a4VTG4BFikSX+PxDWMl8rRx1fssMRy8KV4T3tp6e8otZY3BGh6z7+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755937194; c=relaxed/simple;
	bh=DbSifCel0U/lQayQ1XsG1kJnFoeeJ3HYnIdJi9pnZxc=;
	h=To:Subject:From:Message-Id:Date; b=LduDYeOkOxL8nwiYmPaYJwlWFA/HSH/Vysy93npQv90UhcpU334zdFQxT/uUkp+nnAmjf35WNiuf3ZA/X3B5aBwEidm+RmeqMarGNoDm63JNIkbg1Z3GODq7d+BauZ1+rnBgiGfupgkdBgThGSxOm4aI/MDKYsxennVfVUHQ0PY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IzbivQ9M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IzbivQ9M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E2AC116B1
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755937193;
	bh=DbSifCel0U/lQayQ1XsG1kJnFoeeJ3HYnIdJi9pnZxc=;
	h=To:Subject:From:Date:From;
	b=IzbivQ9MXPc0lbwxjzB5WXUvcRRQqyL/BJ/v9+lxV4K4tiK9AkJNhjvYQrICVoSVO
	 RDqXDXaoCG/KvGk8I6q8ThSOllThPcO2Z/3ReFYh9sORfJjaviVfn+YSHxMfVys5Lo
	 oedYmSKOfTymIfN3em0JvO5/TXuaEOY/uQffONX3mHu1eH+1znN01gCXsfEtUmUV2E
	 r2By0kRagWvXEPwBAwoFf5/L1H+366sOag9zbfDX+g7DyovjRD+UN9bYyCPj2DRNTG
	 0KzhYGVa2P7g9fRD7CLtQPo8iD1yeRnw7Zy8ds3Mc+TbJRG1P9h+oQinbEhY07kb7l
	 H9XWWj1cPxM3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE86CA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175593719358.20437.2661955359802355277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76d0821c2e1500f3bea03922481c0189fdaf57638690b728871f5e1fd1d896bf
Date: Sat, 23 Aug 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755937193
