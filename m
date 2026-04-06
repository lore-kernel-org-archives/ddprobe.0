Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F1B1EF09B
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 08:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775465134; cv=none; b=mUwTRIOJjgt6WSUw3kpSArTJI0KY0sNrOYOQbPRtrqax2DuELddXIsz2nPNR3NTR0hFx2W+Q8GNQohKwtxxhDhMCtoIiKdgGhawMzKNIyg+CbxUt+MDBFxDtsCyXFYE9WnwuPqlxDGOJReVTHfVqdQRvWQWuw5fdlOyK1BNYVIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775465134; c=relaxed/simple;
	bh=fJZVnn/8KPfVwn/dhFJNDWg2+3mSUvI1SLH6Lelwj+8=;
	h=To:Subject:From:Message-Id:Date; b=FsXu9ftGaM1LCLX3uKIbJ3UuhfFxhqzF14nNk5WnbWtWnJ3lUDZwXK9a2bm6YrBbdVuQSLnHSHjMRINriGwYLFHmWznJiNHzPiGqr8gfXH7BY7xkUB8VrKZTVqWStP4Eg9JmhzcEVZEz/o8hBhATMGvT+GFQed9xYr4jOfZ1TKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pSIAVt+l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pSIAVt+l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3DC6C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 08:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775465133;
	bh=fJZVnn/8KPfVwn/dhFJNDWg2+3mSUvI1SLH6Lelwj+8=;
	h=To:Subject:From:Date:From;
	b=pSIAVt+lx9Ex2Hh3zCFqe8tjHwLJ/Rhix+w1T47dJ7koMXi5OakrCHSN+JPrudNgD
	 VwUrqnXRK+wXj+ywSZf1pXcKfdnExntlpdr7JmCgFiKWsP/RQYmw5c7L+H2gwf/jDx
	 HvRPvfy1tKS13xQyVE1qQnaZPlU1xW2t+rJ2JdVA2fTVxvJ8y/Fq4J3LQyuOwZ6lz8
	 HsEI5LKF59bfTLNIJhM4C6JNO9AFd9dOT9RWqaqNPiFXlQjmB2BfgkO6Gw6xLKJrvE
	 eXmzx91LZeM2eSLl2IAzCVtyanfaV2NdcmzAM3OQciZ+H3fmX4tN5pDfwqmR2lmAEg
	 TsNfgrlun240g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17F6EF4EC2
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 08:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177546513369.14507.11299570610739205402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3ffb6f9e7213640477ebf5c9d5bfceff081cce99c569233281e55e55fae2805
Date: Mon, 06 Apr 2026 08:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775465133
