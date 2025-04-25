Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3850B17A316
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745558394; cv=none; b=NZfkgLqiTfwbR+i3yqt+oWOOKcJrMm55/k+ObxJnbuK9fGE5raPT/bqiAa0mFWVNbt4nFlhnQ6iolWyRBvhrOos48A4W25C4izAucvAmUAOSs4UDVQUrNnemT1hsgfl1hWole7gf2oVeP2Y4bQKq61OJPFdRdFrUcrnu6JxooIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745558394; c=relaxed/simple;
	bh=9HdjHhKI+IDV28JiCT7EcNPs4oxsvfzev8wPlYWPF5g=;
	h=To:Subject:From:Message-Id:Date; b=Sa/c55E751GTiBrLuvmGjwX7uMEBlBzdKI63i/Ocba67LiqgkV4ALStVRsXk5XFkGVkL7GOAq3nuK8XKK9x0yjqFLzrASn7EbrXaiAX03RP7qYSUT1hOzHYJfrJeYn14Sc5+jCtnsVhAw3UcdK8TWZmC7l528GQm448DHiZFtrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c4NzTkq9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c4NzTkq9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61C3C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745558393;
	bh=9HdjHhKI+IDV28JiCT7EcNPs4oxsvfzev8wPlYWPF5g=;
	h=To:Subject:From:Date:From;
	b=c4NzTkq9sdodyb+FXg+c9BwJeck8pfCKfWa8IhfTPhYuEDnl6aVAmPYLx2D2BTKmX
	 IWLnloO0ch2UWB+nepY59Ttc4GmbAZ30F9149zwxBmI8K6S9ALKYdXEkm7blhCtM7K
	 GU5MB1HS9HIxGOpXDVTYMguspf599diq/Aq0cKaAsJgnCLLUOXEvYwha34aXE1ecU3
	 vW8qHWJG60++0kn/l57F6kmMg+nMTy5+kxIAId8NiOBIiZA1bzEZUhTOYFWK+vQQhh
	 U1M8LFl4mVLX+CkK123VmirZvmg/9sGn+tiyJlYPqUVso1euU8EXJWgxpfdsw5e16y
	 YlE538qaFpiGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91794C369D1
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174555839357.21365.9734500278005100965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bcc6173a4b6e2844807a4b03079d7dc122a205d3e72fb3f0f714327f2d592bc
Date: Fri, 25 Apr 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745558393
