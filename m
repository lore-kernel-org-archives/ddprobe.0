Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462342236E9
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766907234; cv=none; b=lmYBqiqjaPkch3OMXkjOycTib0Nmj5GxY9DQFPXLsMMjJGMSCDhZ7nxA3QlP1vcRQ7bEM35+06qidqbzSdguquJcSyBn+NZ+L+AT3MOyc1QLp2ag3iB/vXmOcl5C+Q2mz5P4xeyvPGMi1jIAnzZCbWcAMMZyGw1lhH0YHK2osqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766907234; c=relaxed/simple;
	bh=/DeUaUDUxJcIlhoaqTJ1p8dVQcXX6umISN/UtWMwKe4=;
	h=To:Subject:From:Message-Id:Date; b=HM+y07XlrsJV+6c0WaInmDoEEymx6F4hanhIUq0roql0robOOT3PnTJQmytXSzwbw6VJK14FkCYVHcfXbFIjyn8XT38WKcAj6lBaxfrBWwSClc8NIlcWlalmONmYaouDHZ7fmdaky31TVJwsopScm7HEB4A3LyrFYYabyF1DCy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rJVHBoL5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJVHBoL5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BF8C116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766907233;
	bh=/DeUaUDUxJcIlhoaqTJ1p8dVQcXX6umISN/UtWMwKe4=;
	h=To:Subject:From:Date:From;
	b=rJVHBoL5DtLCvUwPmj7aU3EQzMi7J27fMujOCCKB4d5d+bf2AZdZw8kEE8uexhycg
	 6oQGzSHgLQsgXuBCkmnjW2BX7e/tsO+quck/vKQsP260P0CEqqGTYWsduv5m8aLiF/
	 3QrpqtmwiZNnFmXA6n0Foby66o/RDUeYFztAxnS5ASC3OaTmTcdiWkfZTtRv2oPsO4
	 03xCFzrGA/wQNWVPUiOUrEjA+za6aWE+ZK8wqQsxNVJbKmVDTEp30g4F0FqLBaO6iK
	 TcUfzjC7hsHWWaC6sjt33XXQwTYC0hkD2SxtRpxyP6nTIdp25sPES/3psfXWtXhqoT
	 h/t4ReQP1FWLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948E5E784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176690723358.17044.5533877924185290726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cde058a5eb7088a808d9133e1b1ea9b6d6dbe9ffeae9c03c3e7b16c39683171
Date: Sun, 28 Dec 2025 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766907233
