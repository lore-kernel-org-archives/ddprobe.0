Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F60829A309
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 16:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781454994; cv=none; b=RLxctz0Em1Y95cf2vLq4YKyfXGDFOs0DW0Dn+AJqwtMNHz4kegkuGxAjAIwxGtxYqb4IKIsUzwtATZcO5No6Q1nfogRoAhTVhCm3agDjHV7JCjvweO7/U5q+oKhgV6Ko74tyI69nLORdlys2mYreXusa3AsIy+LMhglaKv/Y6xI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781454994; c=relaxed/simple;
	bh=reIxaIh8B/xrtomshAhi+dcmz5aXKxmw1Hin526lSKw=;
	h=To:Subject:From:Message-Id:Date; b=eaV+1U152gCT9kyKFSNoA7O3ltFBdndNeHf2UZ9G7wIeTyOviH1ZB96gu4vdEbKEeRykPoeHNaqNCozOrVs1AeseN5mJ6Wv6bHSRDMRHTOCnBkPByj7x4ClkrlnpfE/LxnGQD+opTgBqIf4pOAfIgy7gPfpEzaaTBb1FcitBq0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RoUNSNIP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RoUNSNIP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD87FC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 16:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781454993;
	bh=reIxaIh8B/xrtomshAhi+dcmz5aXKxmw1Hin526lSKw=;
	h=To:Subject:From:Date:From;
	b=RoUNSNIPENmXUkOzVIskkjEH9iCubgGmssWZgw0kUjhIdy3A+jtZeieO9FNfjrKrr
	 4RyNoKi+H4fBc6z0gDbdWrqdkRzHiJs1F05Z0PazG80pGb4lXrC7J7AhGZKORjsvhJ
	 Nx6UKn/py71Isy+mJM8UPVeIln9fcHE6bkC38GBWCt3nrdfHBzgOvGzbdtl1lTUfiA
	 UTpWlPKGg2yEVLjLJ1Aafrir2kz0a303FpkX2SuyE9AHRzhJQ2axkoQgEIBZ4Qfc3Y
	 VLVYO/vXUEc1+GGijMJXaeFhKcGbpciP/VCZC/xB+7DMaroNNVm/gvSVUhN8q37dQU
	 MCtMd24WlFVBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEC3CD98D2
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 16:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178145499369.17472.6373670757978347030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d39dfaf633b1b9bce7479df0f77a48328601c51ba158b69efa0a98e017e8909e
Date: Sun, 14 Jun 2026 16:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781454993
