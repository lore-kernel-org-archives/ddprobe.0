Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2121314B092
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730367954; cv=none; b=VAtfN3m5voZTU4qCyZBP0KWbB+BnZ5zho19V6xJnhV+8XUNKyYQnGWB2HWNBTArg+ij4VTZ20w+iL8ZjtxviEqOtv/hqAdedGv6w5QADht3BNKZPHfiEXmUCbRCvQ0P/LRElce12ixX+ZKjDwkOeG2j7RjAK+QdUtGRZTsMJo0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730367954; c=relaxed/simple;
	bh=aHX1zBN+XnYzlVm5PJjhcydWwFRxPxVmYimGcL8mQ0o=;
	h=To:Subject:From:Message-Id:Date; b=TVIVYMFRg7RXvfgjN0P1J4pMc6mRlfotKc4GaUmCD8UdfQ+kLqF3X8u2LwqkZcr42YQKRhIBteuHNHJBRf5HPOf6SNGbX3SE6QnCB7G8vB8+xVCNdUUD9ATKkTo0iSEbk3Z0ucEpin9ldA5rmdK9mP8zv3WPRzte1upRbV67lVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k7q7uD38; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k7q7uD38"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB228C4CED0
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730367953;
	bh=aHX1zBN+XnYzlVm5PJjhcydWwFRxPxVmYimGcL8mQ0o=;
	h=To:Subject:From:Date:From;
	b=k7q7uD38zIZIWwQWgpHj5bXMJlbAP+H7anw7ZCKdSaUpji4Mx4GeVp7vfmLfXauHu
	 0jNaTsZfvi/zlpA41r1goa2BeRpZJ5oO+QMlR/hP4ewXfUdiE32+ruYTFyMkuYU0Ov
	 VHfUwGf+thXACrub6433Pr8GdzVLve8olJ+AGuzWeR+mB8ICQFf7LaHKrLoiUwJGGZ
	 1xN4m34qlVX+cu56v9vsV1pnjOqz0C+NWUpvsSrU9ir8nwJzaPax8I2btcI0G2t1bt
	 k/hzG57ei6K+TwH5egLa3bhgDZWS+Hct21zFm1qfPBuCsT+O1g6Wcl3gzwk4W5YlgX
	 /byaOoKF9Ya3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995D5E6896A
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173036795361.28582.8570379935339392272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 151dec8344cf89b962754c69bc56b1f20de1626b90a9c185b95a0d1010322667
Date: Thu, 31 Oct 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730367953
