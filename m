Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447C51FC7CD
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 23:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739575134; cv=none; b=WcsEnBy3NzbVBkkwvWn+o+BcpfqMQNwmPOXtPneBdmkA0Hqm8TW0qeO0GVSSyhbJzbU/bEHVM4okwdzJx6EgAO4grGzy+nwb2xpuKTs62App4eCofH42ORXDR6feUEGXbK+xzG2sYfWVwIKdk26anu/T8Mj0R70TrIOibEpnCqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739575134; c=relaxed/simple;
	bh=PBWa3awgyfLhc4LZ/MWxWakt7WNeud/tTVRXkTxP/r8=;
	h=To:Subject:From:Message-Id:Date; b=EPusf3eAE8J9HZf9E40Ncy9AecUKsm/jBNpuhz/Ih/qZNwISxtZzJ21rOP2HumPNLV4SK6p55I1yITu25e/Cr2YA+F3Y/Lv3EVr/skuEq4BtMk8l94DkV1MV+TV/FJAlQdMW21taUFIv9O8cYsj1HoxpmQdLimGjE/ulLunvBf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U1JQZU32; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U1JQZU32"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4260C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 23:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739575133;
	bh=PBWa3awgyfLhc4LZ/MWxWakt7WNeud/tTVRXkTxP/r8=;
	h=To:Subject:From:Date:From;
	b=U1JQZU32xRlhQCZQ7Z2/bJi0ewmpJmsHdyXW6nkIvkQz/4dlEj2Q0UHs9Zgdo7JFB
	 8GLddfw95sKVB+rV0OUnDuvPERqDifurluPm1MEzquWGI4wC6AMjldpHfGafJH1pDW
	 EUUK2GavOpj/zyj5i4Ki0M/REkUZ+SjddSWRWBqSQwy047/y3lxSewW12S2E2hlIwB
	 Ph6a9SJxlfZlkB/a6OJwK53DVUeHvuVUGVTUY6nfl49aEHSqXcGew95fYYXogmY7cW
	 4Zti34Mqb1B5XzIGWFEi6EIH0xDsoSTg1NqA2IXHIdr4LIom8+3rP5E91zNCctcSNb
	 U8JUukjO2yLFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B057C02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 23:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173957513362.27502.9155213344987261974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd5ed6784977f268edec4758b0d12d7d9be49d6f4cf399d85024f91507f48348
Date: Fri, 14 Feb 2025 23:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739575133
