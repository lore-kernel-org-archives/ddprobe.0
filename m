Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B54303A04
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792335634; cv=none; b=hfVCQG5r5jOXrGgvg5o2qgkNpIq2FvTtkPB2gl1fQh3J9oHUGgtnhul8tKUXyVMau/ltdeU40UDMijkgl0z47sJXFspHkcXl8siFxYP6iN6VDj3UKl+yTpH6naMmTbjRFejL39E021+DcLx2fzkDvMssZ6JGhuEY8M4HPC7eFgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792335634; c=relaxed/simple;
	bh=OdL6bJSN3lpZmdJdaJwr6+oCVVSu5Rm2A4yvCz6tQlk=;
	h=To:Subject:From:Message-Id:Date; b=a+nvglJa3z342UPz+XssOC+DvlsB0Sl6+7d5SoSQs0Gj32RWhI7L1JOnGak/RhNTpNjF0Axht/QAwdTE2/6wmqNb6sHqCyunC8H3xDNyYTM5SX5biTFR8Vr1CBQVW7MWIl+LUTOU2R1BzIZu14xh+Cu4JnvISyvdcYjbQv638nE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSK+9ImE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSK+9ImE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3680C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792335633;
	bh=OdL6bJSN3lpZmdJdaJwr6+oCVVSu5Rm2A4yvCz6tQlk=;
	h=To:Subject:From:Date:From;
	b=tSK+9ImEdc/9yUxAFe1jhebgNUMrGTwzCiqk1IKLagKcNIkss3tPamGIwgmrKMG1y
	 BjHDJJ2Tv2PKud/cOEO2Nt3fXDtMsdF/qTRaSlnvMZ0cM3Mi9MvaeGGsKFaH9TZ9lV
	 +L8hzQpcLRPK6CRb6Jd8F45hvKrsm7d3iAZOQ+yl7MmJqE6cW0ZqtLoikEzwlXkm64
	 fWW3q+nkwGKJuxwAfUaJMMZ0X11tcVUtxpjPzw+4qxBBiruMAYjLwhNFd1v6vxqww5
	 3/zo1cJilU567sLw4jnW0YYyeUX/DcXAQZZukqU1f9XTNJyUJ8KB3EDGk5yWZxHpeL
	 r6aHCWz+U45Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF98BCCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179233563368.1122.9215249583087840640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b7706a4c58e06ef9eb3c0a8eff02ffa415993bddd927e049406afc4d1be5b56
Date: Sun, 18 Oct 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792335633
