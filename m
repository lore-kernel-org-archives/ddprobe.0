Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341A3331A67
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 15:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764170574; cv=none; b=j6yRvWUqEhHVLEXXur0yyzYscK+Qduu55aNN63kstxfgubYRKK9O1kRBr/BDDolw8cfyrcccEHA/ldECUkd7KdFZL3MD0kaOKa/AGuXYkv7oajesrx8KYFwcJjUChtvuYwEcF3GQ9mhLFzVpdDS90DkQWETkhQ+X38W1aTO4A2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764170574; c=relaxed/simple;
	bh=60iSWFTm74cLwLewANkgOtE9rR/X6LUZm24w10LnyGc=;
	h=To:Subject:From:Message-Id:Date; b=h8PzozbObGyWJCx6RI8SN1BC5XLPNXpCs8Y5B225fY0M7F0cs1sEfQQrxETVNc1aXQIKtt4Ec5x1gQ31/tGsOe/4EljNQW4MTubLN1eoms756n4bsEtH+V7qBprbQp7Q9gj3Ch+UQhYmUQRwO0kVJS9fJ5GcSeouLnsARvCsj3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VyMhtvBE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VyMhtvBE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37DBC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 15:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764170573;
	bh=60iSWFTm74cLwLewANkgOtE9rR/X6LUZm24w10LnyGc=;
	h=To:Subject:From:Date:From;
	b=VyMhtvBE15xGjV5NEw7eMs524R90IajEOlR+w9Qt9HvX+vrH3i0JBl8wNE473pKVZ
	 DUDPoJKfB8sVHpN8OmAfD+ZhLq+mACX12Ik8rPowSKkmV0BT2VSY0Fc3Ur2dtIG0Km
	 qI91R+sXx1XGhVLzJp8gLCAGTkIvyK+IqJrQHIGaGVecDBfG505KJsgx2r7XMymt4P
	 drieDxNSgHdX5BMjaLfJGaZhl6YwAXB6gtmhdS3kbxYh+Q0kf2JdUSBMRy3Qzg2bf5
	 awbHlvHBSyvhp01IP09U2x20nEa9x9R2oFwsyyXknHaJ4kYsYCOfBMgraAkmCr0NBi
	 /imZPgBtOwxaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91261D10F5F
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 15:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176417057358.1022.15637680194303227192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a62a050370c47b1d1b92e1a5d14d203f0054eb662ac8512abcaae55840b69574
Date: Wed, 26 Nov 2025 15:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764170573
