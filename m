Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC0118DF91
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724928954; cv=none; b=F2ybw8yCidVLrVgQ4sp8rOqLETN7UfxGwuSGte83n4UHzjSkYk54vtDuRe8E9w5imLMOMsr8a7hy+axJA3G+S54AYZLgURc9RAZrKzQ/mEsxdi4vayZFX2clk0Ac9wwsnPKzkfpLejrRyJkPLKa6RoC+6vyixn2YYCKfDSnZvfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724928954; c=relaxed/simple;
	bh=jgfoKR19nDPX4Lc+JIyZn/ZJnhiKpPe8plSofE1eQ2U=;
	h=To:Subject:From:Message-Id:Date; b=PKlBYtio71+R34quduL57HRy5+j9Ohi/aLgFhLbTFlrVi8AzurgwMdXwFAQT3mUsvxPPW8AoCo39ptMgrzGmWjcsgOCFOhEJFuvY7uJZt1SG90wVc7ThqqQTW5SnvyetbHe8Ul6+W0opJ14Qavkjm51xbW6Ymd0f8TGLj5uhsY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H6uuHCeE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H6uuHCeE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A456EC4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724928953;
	bh=jgfoKR19nDPX4Lc+JIyZn/ZJnhiKpPe8plSofE1eQ2U=;
	h=To:Subject:From:Date:From;
	b=H6uuHCeEhcHAMplWO3Ze0JBQeLmpwPL3Qmm5PmINSPGklDfdH3v8Wz24JUHHEqwPI
	 B9eQjEgUS/MQyT0vItEwAq0yWMtxqk4YabYuyvHGXiHkZGEYArbCSUT0wP4AH6unNB
	 hTO7GiuXj5gH7DWUL3BJbozJDIlYq/hYef1ni3LddBEWHl1ptnvowRkChYSWyRX5m0
	 7toWzzxxjwIHmTzExhF8qgrQl0QPvsexBbrLHI0ZwKyR8NRQOoqzOH3emucJ15+E4N
	 GEKZkwfuzpUMqRCdrL3S43WSbBYl8nG5QUaDpYQZYZKOwXP24tqBFdD5jCmosa8vHD
	 EZZ0CySg9bDKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95457C8303B
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172492895359.30540.3404208366374432598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7273f3c6019353a639cd1e329df8472cb9a99495c4491946985b347250be4fa6
Date: Thu, 29 Aug 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724928953
