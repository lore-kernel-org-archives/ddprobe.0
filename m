Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431DE101F2
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748751594; cv=none; b=KW96dWnFi8uX2SN2WXFC0a7r4u3setaM962rewgjGioTU2rUrjBDVIVOxztPSLhckUySyp3rA6WAIyETALnkXtA9M4Cyang3aCXoJyWK8qSxcHOCzp5Oi0P/1JKhAlB6ZZDSLxml7J9xGw0vaKFGLmdZ9ZG8EbqizL7P0dRy9EM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748751594; c=relaxed/simple;
	bh=c5MXnMjEjW9k896220AW8DNLsgNfHsHthdAvE409MBg=;
	h=To:Subject:From:Message-Id:Date; b=YyVv3zAanh92uFiIK9CjtKvFB9cK8KQaGMgqe3mpJBNHTJt6Le4Y9k3Dufe2wTgQl2dFSpdTwDC2kqqv1mzzpQSxbp6JRDBX5qwMyaSSDD2uKFGqiz84C1bz825BSQfjWRizT6sYX9E/UlZssalie0tc3OHv983LmLU3PTkRFs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oq1ipRi0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oq1ipRi0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE3AC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748751593;
	bh=c5MXnMjEjW9k896220AW8DNLsgNfHsHthdAvE409MBg=;
	h=To:Subject:From:Date:From;
	b=Oq1ipRi0dYAaG07YnA6nbhSJ6gpV78gjKUjHcuXYyazJo3ytB44NoekCBuTPzhyl9
	 5Eah9RUD+oa+ub3lseDt03u/WY8wiPDJbp1BZRqR+iyq/L9hqdnBAPWHxtT4Az3fxg
	 R4pWG22DFiUV/v18LQOMev43wrXFFAGwGqXz+YnS3RtBZRZE12ZP0GpKiJx7J72q7k
	 ZFifBzb6SZUlYUjBeS7W12Dg6xYDnJ5Z4Uhg6HDv1e1z24wr22ch0hfLJf7++PuGkz
	 7hImUsUZ1qzaFRWrmO5nGKsQMVdHC2h+GaOs69hLTHanO5FR4nC7GBjfL2oJuRwPBy
	 ANyAwp6hV7/Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FFDC54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174875159359.12354.7098784479087179293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1612414117561b491e2be5f4e261c8764e2a210276e07c850d5f0e62a914f165
Date: Sun, 01 Jun 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748751593
