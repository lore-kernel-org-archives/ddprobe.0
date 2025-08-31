Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290D129A1
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756631394; cv=none; b=Kk95mUeyTqCdUvhuQkCpvfRuXZKMeFGk7TqYOf26kGy4VgB6V4jI5o+2rlgQkUTZmwjjRic8U+VWKiZfZAkEfVY0Kcx/+0H41n6oyVBwH+p1uLQZRIUJOpAfGMApMcFjYUjBOKTztVqubTbteQsIX4GDtJTAumjp12Rlb+qXjCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756631394; c=relaxed/simple;
	bh=SrLDI7qCneJnxYcvW+dLJ6bh/J8guxODbw1Pz06j1Pc=;
	h=To:Subject:From:Message-Id:Date; b=JjMrA2QXit5KD5iEWzo5ushEKjVT7R0dtUU0ZyU34xt/zQvDsykpqXWrb1VFkKjAvbcmkVwX1FL8nIOMdHQl2Y7IDdNcJdIJy4uxvBKFhEaTSh+XeMXujALGW1w3w7W7a6nvkNES99sY30x7nSqkv4Lwuo8wPLstdjiekZPjQaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D53/nHoL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D53/nHoL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1691C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756631393;
	bh=SrLDI7qCneJnxYcvW+dLJ6bh/J8guxODbw1Pz06j1Pc=;
	h=To:Subject:From:Date:From;
	b=D53/nHoLSMXJFKE2e3dL2/YBWHNEEGMj0YlklvCIYEh3IqcTZmrOKL7hTmThYsSKN
	 8IONCjZSgMp0tOOY5P2F24uCeCzyHSd93ACkYKcFCvKECTsE/XTqF0LGZLEadKwjwI
	 k5XTZPcWQ8B2+PD7BJISE5mG2NDgL8LbvI06MuPjhgnI6jcxtmv3zLfmVhQv0bf9DD
	 OrQw9Ow4G2l2j1lF8adbVaYsT4iFsyC7HicugSWgesaXLxf4fI/vRfWL+/mrj99RC9
	 1+PoOMtkUNbZdtHJ6jcvve4PsAoe69ZF0RfHNMaqxY/hK5AHUnhtSoWNC1ucrP5O6H
	 ouJZTYRPQOhYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F404CA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175663139357.6506.6277347935386980967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 277e887adfb7d1d9b6efddc6865f3a52b652dc878b5575b96c52dd2f02657390
Date: Sun, 31 Aug 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756631393
