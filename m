Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFDA28CF67
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753163995; cv=none; b=ftfuNClrsePadGOjgiF7QzBj2kMAO8nEgz7Cyt/+fHe67HlDuMDiJrWDS9SyQbaE5SnbJxc3dA3LCHWqUy6V9j+se/O0pGYdTl8KeTpAxCK1NO7gLHRLcht7jZ3AjQjjuDpnfW4i8PGnCdUYPHVNJWIxoeD4xobdrp8lw6peGfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753163995; c=relaxed/simple;
	bh=+TTb1lOoSIIzh5ohzpHBw4hQfPscHWclVEyuwxSlfSI=;
	h=To:Subject:From:Message-Id:Date; b=TfLwEkbGwaGBKM4ur+9j2J+IpuvJ4G85/NX+f5viih8za8h88zF3R2AfV8mMiDpQI2GA62uTSNGmJ6FRrHvkbSGNIMv9QWqydyx8VvLwwUMhFehI16qFLyRdaG58pBqnf+DgH7e0mTuLTA5Tuw/NzsTfiSrZw2aLTq5nwq62gXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nue7UAv9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nue7UAv9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E27DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753163993;
	bh=+TTb1lOoSIIzh5ohzpHBw4hQfPscHWclVEyuwxSlfSI=;
	h=To:Subject:From:Date:From;
	b=nue7UAv9O3/jvLj9P52M8zUJIIguxESEK37LS/X+wCBe0RKl1Y+A1YkM1suF0kisA
	 5FUXhoauoUcNwst2iCSDCHqUR/hY9s7k6eihHx0cUoUdka9DytTqG4Lvy9/RBHa3kC
	 OmLJo8WBQ3YjZoG2pApz5hWc5HGNUckYGwBvXRuhS9KS0mhDfmTaqzIsZEa/QlRzWr
	 pwjL97cwGiwjzPPVCGwN0UB7xWohrEGCOenplsrLk56+pSHldSc2hGSroC4tgzXcLD
	 /pTx+l5SqZWUkDZXVqoR7iYxpRTjqYx43EBiXRj7MA6Qknny6iR47Bzi8KU6biD1dV
	 L6ntKKP1KjgJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE85C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175316399358.25989.905351785062979396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff20f47552a1e991c54173fa7a1ef946d788ea53167eb42428638c0d342ca923
Date: Tue, 22 Jul 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753163993
