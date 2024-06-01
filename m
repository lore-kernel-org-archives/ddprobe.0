Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B43414E2D5
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 10:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717238663; cv=none; b=qZq7D+8QsFN6/s4ITzGDf/cgeCKz3hzcfEzFH6YYNr9CaH6HtmtEV/fzZ6rTHkMf2VrN37iCqNCvhC/H8r27mzOdX3KpGOpX5paHkltdTd03XFpZ0cODAGg7XM4B9ZE+LZsiaMvP86LXKSg8JuTCl48NZH1hHnDJYnWyxrxZ8TQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717238663; c=relaxed/simple;
	bh=xmMCcrLuvT9u56pdrF8EtFa+mGhhg5EJBEvznl2Fnzw=;
	h=To:Subject:From:Message-Id:Date; b=oWr+AoYiZR9INF34H5SMan7CZwN5ae5WmNI6z/fgLaMj8whCQjDnuolR0GOxhopNSckSFuK8Bdf/RJK7cxqWjA/Xm4ita4yIKcgfCTmp4Y/fMgM4zk6tnroZkjOli+j9K/TOpKKcpGiCKtWVeYxY85vnfAz2Bla+eR+BY/OIXf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e2Fc2m5Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e2Fc2m5Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4980C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 10:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717238662;
	bh=xmMCcrLuvT9u56pdrF8EtFa+mGhhg5EJBEvznl2Fnzw=;
	h=To:Subject:From:Date:From;
	b=e2Fc2m5QP5M1L64ibkea4XetP3zjtckL5JAGpENbupXYS0+Yr4NrAlQNMubyO03Eu
	 Sn5cedKfQozIx/QdTYL8ZzQCJrFPpjAacd42gIfAPtHxzoLZ/XdiA1RLqy1jvGMtCa
	 2dPau4mRO6kMJqLzwRKaK1mcVZLbjfiBFqiQOW7TEcjwv+ixg0B5NpCGxhW3zmju66
	 BZA1poQm4wFMf0p9Os7oqTO5KuYHMZXdtiicD0Bq/a0YXlVt5s66vSog+b3iJ8Skzz
	 NgHyql4fXUBNVHIVHoiC4R+bcfBlbpU+VUHBeHwCWiuij42pGeVKHOlydNuVi3N1C7
	 lt+BDyGzeZ3yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C233DC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 10:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171723866276.12901.1954440159487762098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bb620042e86269b33a0512c46f7784ffbdf35c6a7011f740c7d19d25c427d0f
Date: Sat, 01 Jun 2024 10:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717238662
