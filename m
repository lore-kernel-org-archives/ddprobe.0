Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D1021D3D6
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 19:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776023854; cv=none; b=W4PIIGHHKp/VtNU5tnMMUYDjp92EX7HxX+FpkLqDNgQ35yz5i954+/tnHk0roV37bZjTsFv98zEaMHOIJ4FGi6qFqMfN8sVUMf5kqLl2/N2cM1bnHtX56xS1bn3+xd67wH5j6FbnwbkwkiHNsqhmABiktMpZ8ioX9zKxB+W0468=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776023854; c=relaxed/simple;
	bh=FR0ZepUposkPm/qsqGNfA+Bqz5zwdTwhJ46+QXPeaTA=;
	h=To:Subject:From:Message-Id:Date; b=bAmT2B9yn9mwMqFFtlXtaoo6PXkWI+cDoo4/kr8nvxtSOxt6EYA3xe5r/bdexpNf+3/O6WvHydbxxzMjniq00oBKpJ/hHknLz/51WVZVfLnQtDfqSMeE+wzczoQ5suVZ1T2N32kaMpb0ySvHKAe2ZcVStOv4+OC+E6IEnSmNBsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VFqbvulo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VFqbvulo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C03D3C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 19:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776023853;
	bh=FR0ZepUposkPm/qsqGNfA+Bqz5zwdTwhJ46+QXPeaTA=;
	h=To:Subject:From:Date:From;
	b=VFqbvuloy9BkMP2RG0A2RBPWDyim0l45XrvMYABkHwC4q4/cf/j7MUaQMnAvY+hNT
	 IZEuC8RhwV0RiqwmmJhZ0c1ub4UGXX0kxhPh0lDEKkWCF8LTWXVFf58aXRphly3PRX
	 pgUa61yOxKzH6I86k5y4C4F3fY5dVT8eXFOvceYwa7u9rXw7NTzksOzy4/4in1plvT
	 JydbAiybD69X6Eji70F4AyzdjCPbE1IgUldWybdg7NfP+3WuzJ0JcmFg0olz97117e
	 NUu2krgUpJV4B021uptwxPYilm8p5YU8UkE8OhVSR9YGLhAaFnH2e/J9ED/Tnfa4Rx
	 nY5dE3szzExQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCA0E93802
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 19:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177602385369.18751.16188906703065647616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85c787071d25f65b2e727387b445128910be1237ae3196afbac6beda7bce2690
Date: Sun, 12 Apr 2026 19:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776023853
