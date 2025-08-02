Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BE9B672
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754104794; cv=none; b=EvGwgYtw80wRJwnzHwNObiisLcFjn7/b8TFiY1pqWttatH7YdPMh43B8G3EmnqkbNYDvFlR+m5gzKKKk0y1FeKUJJPeiZDoh2W0MkMk7eaZ90hDsCR5ybJ6RZJmN8lnovpp4J4RxJq3uVCv7NRLMRgxWyByJEp4CpHhw4WHQVYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754104794; c=relaxed/simple;
	bh=OAR3bSZLcLrUB5MigUMDFwhs/fp1ROgC5x4R4eMT1QY=;
	h=To:Subject:From:Message-Id:Date; b=VxNslFIKcBej0HgGyb+YdpDySAgYk8c1uGf7ddX94q2NkYrcBPFe/d/CK3rb4VG330wT13oHwKo0QWbqcolnIet6I5P1SAVTSzxZgpw8ODXa9NcW96nlf5Xc4Qqb9L/tb9zLM7HkMHB77l03qjpDIPFi6Nm9YlxD59oyIdbDtHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vCH/QQ7H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vCH/QQ7H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A940AC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754104793;
	bh=OAR3bSZLcLrUB5MigUMDFwhs/fp1ROgC5x4R4eMT1QY=;
	h=To:Subject:From:Date:From;
	b=vCH/QQ7H6VA2GHh0ySHJ82CUxrGkMvg4R73C236S83TBA5h4wWgjTq4LoTqrFfyju
	 ycqPtz5B3oAjz87W2rKlvu5sTPcrT5EERNRcePXvRiDI1iFQlY00XqYzV1hN+E7WMt
	 tq3+A00XcUWYscD40nKuHdbHqaww6L7pfp7XF2F6Vd2zWIMlzAyZrHnR7kERXMmFzT
	 MCXJsBWTR1GHWUH0IagXA2jsp88hXTB4a8sNgvRuXO8zKLFP5mnNcYaqwswUIkuw0q
	 EfdEG3dlmdCJx7ARRMBBJNWeuqNSqUI3vShaj47z4ANIHiIeO83O0LkoZ7NHjh3lwQ
	 50H6Zk3b/kOdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E54C87FCA
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175410479357.28143.14180869271694776068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a3245a040f65e4beb2aa771f773a6e280b01ce2eb50644df1901addf1e1f30a
Date: Sat, 02 Aug 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754104793
