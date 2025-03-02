Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FDA0322E
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 01:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740877734; cv=none; b=djaoBtaUkrXwO+Kw8+HkF6MQ10SWklWtm1isvS7LX8WJFLlFfz50g14x5CUdHs7pUJAIt0kepWqUngPj44godexZdaPyahKzsaXZA2uEgU2HnkL31KPbXvnodhyrAwR5inlxe2CkxgBps05n7IX6JtP02/2uECYPj5cwTBUapxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740877734; c=relaxed/simple;
	bh=MVm3sbbYVmiw1OAHw9M8pV2WYLEQg1drxfxe+6V6lhA=;
	h=To:Subject:From:Message-Id:Date; b=aQSPnrPfEgfak6Nsyzg7xOSUwmA2PCcvTkKWwkBpyN7kSuswLEg9bTXY+jDeRlGSNf0zY2x058rD9KN+Ny2MYi+ELSKZqRsJV35dOb+xOiiivwShB01f7Iz40yAqRVyEyftTer2CgrKeAt/gnOqgwYMvcaZKrLrsDsdryVbL5yE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MjBmLokJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MjBmLokJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0BA9C4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 01:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740877733;
	bh=MVm3sbbYVmiw1OAHw9M8pV2WYLEQg1drxfxe+6V6lhA=;
	h=To:Subject:From:Date:From;
	b=MjBmLokJ/6jsHhoKE6QlUq+sx+Rsi7xMmZ8YLTAbrRKx9J3bl+9CSfU9Y+VkPi+Qq
	 +CAbxfrVmpuKB6eRP7toQF8bGcEe2bU+Fp68pTYxrpCTA1ppasbBiCVIrwUMzyNdYr
	 rB9cBLcRIC25YSLKABS2IMSkkB4TxkYviTJmmgMS9h9QJCfWSUQ0MEfV+5gNIHQgkC
	 qIewQEdv68AXZzqK/isv6/OGmy9xjK6uvqnMEjL89HBAr/896+1656hUObeLiB3BAe
	 58MWfr6kCOu/BgZzsn7g99pwrrwUs1IzMQ7nGnEDNkyR0IpP2ZQjsT3sMreUMQlZGe
	 twQ2C6BtladDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C3CAC021B8
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 01:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174087773363.13424.13594173170336989549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f216a8baca7399a84a6da54b011d07c04a2d42288d3b57a9cd9119cd33714667
Date: Sun, 02 Mar 2025 01:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740877733
