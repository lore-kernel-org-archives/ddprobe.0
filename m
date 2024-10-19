Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDC41DE4D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729335354; cv=none; b=Iwq5YFj+7z0mTqwEQD1B5vIIC/VCJdBanh8V2d1G29CTtWe2/n4BoMSSH+IbrX2+ZWD9shdeifYOrMxaePXFmHldjg9yRGoH4TPQ69G3WnaARpjLFHHd8x0OhhfjCxGQCDAoEfUCqgGnm/93XqPeKBpL/wdNYx+fYYeWPksYlCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729335354; c=relaxed/simple;
	bh=g6hT8a9zXSXDEzK4bLPT2rtCkgCeeaZyT6GVrMeLnKc=;
	h=To:Subject:From:Message-Id:Date; b=aFpLrH0n6G7PcEPVGYwp6Qv6ajb5GybF5TVXa9m+f6zbK/HkhT1f/BQMx0Z+6eKibUqY6lYShTEr5yZmqCrYqsMMMiZTmwfg5HO9V1ula7OuhT+JO5gILNTnMQIjUCmSHqnI+neOnO3YeYGZZx92gwKlkypPosx00+307DBLLVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ogIA/EO4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ogIA/EO4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A940CC4CEC5
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729335353;
	bh=g6hT8a9zXSXDEzK4bLPT2rtCkgCeeaZyT6GVrMeLnKc=;
	h=To:Subject:From:Date:From;
	b=ogIA/EO4mZutBmFFTeLIxYqyT52hYVcIo65WY+uA8EvRKxsvGoEiSOxWm42Fwk+z8
	 V6f8QzBGeRB2+BZ6NDu3m9ewTrf6aE3YydZFmiYfEYkc9xJ8suG3PLJ3p2w5f3bVGs
	 UIG+Yky2437ISwKILW6NhvISMMY1qt/GIg7h4yDpudBgAcEpry4iwp0A56y2tvs3RQ
	 I0cIvtUen0KI8yV/dUed0nrskKqgnKLIMpd4vf3dIjmfiNXL9aitveIC8RIBlL7AZh
	 U6g5sZIFpyga7r2FL78YJZTXIj2S6q/df/liHWlORbraZ3hYbBNnw6Yl4ImEbfuqZY
	 kDPaYuNyqf+Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A1BD3C907
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172933535357.19318.2359346866792214387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d49a70a898165e01be4b524da5bfba3c48603f0303d74a682d38a0d5eabcc5fb
Date: Sat, 19 Oct 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729335353
