Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E45C923ABAF
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752587994; cv=none; b=igq1YX7biDhwLZlVNIaohCGbBGkw08orAuBMSXwTCDb6VLSaIZYhLW3KwMOyUUCujI5jrSu7a43XBUs+sq3hyrBiKC1ZwAMQp2ow2pfrlE/gCSU8lW/556nc4gKfHCq6tRR3QqPQ1eI587TRdgjmiyqeuGQxCmLwy+NP1WEs+VA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752587994; c=relaxed/simple;
	bh=bNosbNbg6QYrCTHyJ+9rMwoOtMHH0IkdecHiUXAZWgU=;
	h=To:Subject:From:Message-Id:Date; b=cGBOE1peKPs30ufJCtxfkRTiTzByne8Wq06rsNWtbFfP8t99dvEW7U4ubGnkgB1NLesIiTsplu5y8Q5NkZsfIxqAM4f1l5MQzFByFJeeYpqO6Li+9H5zuWorC9x7MT14ShIUxB/zrdKr5qVYQQIUQcwPdnnxOQMFu5ziKqV6uKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U4jVjcFT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U4jVjcFT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C6FC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752587993;
	bh=bNosbNbg6QYrCTHyJ+9rMwoOtMHH0IkdecHiUXAZWgU=;
	h=To:Subject:From:Date:From;
	b=U4jVjcFTRjWYkXDBWMbs+wLvSdzn2fZoE+CafX3LQ4UwycgoNBD1fn8sPNPK60ao6
	 1BLM79eUdnpdWuy3Za/tkoy8mrwFkRpLg9jwceJ2WFmLHA6iqOU7HrXfizbEdwErwZ
	 tnxeUPQ6BZuJfnL30H+wWtHDP+45ruNUGyayrjpUvlePgurGgCPQC/34p3gCKRrKPm
	 hTCxrEOIvCb1aUPQqOZ11d6OtszIyfxdEAw5QzIS+4LzKUBBP9NzNTFuQBOhMOe4zI
	 iSsHEoInj7ykni1jfWcA6JRlaUDYz1CVu1aH206FNIQ3r3UDHCpKSmwUFJNhJvLp0x
	 ZCJTCegI/dhag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CFCC83F21
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175258799358.11812.1302203807380926506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79ac7f87adc0506e6327542267bea5e865bccea70a551130dadade3dfd1d7076
Date: Tue, 15 Jul 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752587993
