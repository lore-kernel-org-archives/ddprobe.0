Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218304CB5B
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767265434; cv=none; b=dMImAiTmTQH6lITeRqr8xWX+LLzGvdh3GeGB35/d45ePJFrreTKoTydVclUhtC5MXoo0VX70PkHZMynh9LHPjOWTtA7+AuPh7R7Yvk3d0Xzxl4F7gfQZYLSC2MKaQvduJQp45RzB7cnXgpGTXb/5Ylq23iJQKNn0pmBBQTKG/cA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767265434; c=relaxed/simple;
	bh=KW+dEkk8HqIoMruU4DK+WgJ3QMoatQUU4K0Zg5xA1is=;
	h=To:Subject:From:Message-Id:Date; b=bVI0x+crsy/jqZdEx1+cMXCwjgOv/XqX26saDW9lFKfpocG0gBh53BhiPtvEyNWACQoJV1M/hy0+sqtdlDHyqcUQer4Y2PfEhsfQzHAeiUEVbFAagPd0mxXc7mZ9VvpuuTK9F9XGUr26HXRDjsBRJ1ytg1aHwGVZtaapJaXSOPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NP4erhio; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NP4erhio"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6572C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767265433;
	bh=KW+dEkk8HqIoMruU4DK+WgJ3QMoatQUU4K0Zg5xA1is=;
	h=To:Subject:From:Date:From;
	b=NP4erhioINXTuYRVFdCU3vP82clKCYulVnT4j4yJqxcATpoDgpfOthIeq7Xo7B9Ua
	 zGa61w6ak+623SQ9CA4pj1AW5AHthO6bxOwhMWBWd+/EphuUu0QV1ei2afm/rcmRC/
	 gvdA6CYe9f7gaMxsCHyZHv8tJh7jH7+NU7j/I37uQL/IFjNo0pOvA8HqIsebBY0358
	 LGU4PuAiQcIYcGeqZ5B7MtYVrkxhtjAIWxSkfxd6xIlb28i6vEpYyGfBZoakP6DUpA
	 RqYDIjW0EddDbnSEih9HlWqoz4oAt28oqA7iCcY1/HxDhLH3XM14c1sVNizdb8c+KT
	 FjIvNZPlFWTQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A74EEB57D
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176726543357.2580.13354555532486826778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a7a9b9a3104211c61d5f945c19ee2f56aa1a3f9c83f14391c365f65ad28d734
Date: Thu, 01 Jan 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767265433
