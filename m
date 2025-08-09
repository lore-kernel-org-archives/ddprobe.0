Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8617156F3C
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754719193; cv=none; b=HK8XFwZx4ZfkJfqTFzZtCtH4qR/OJKoLNRn1ylBzJ+Z+elpXhfRlH2NoSjoPdLggZlZJ9EakCG4YDhjFNfN91rH9cdp7HfR4HrwmqIpmmHQX07XCMNckauT+QftzPt/USEHwMWFAtnBnfYrzB+L99UAKY0x6GCkBsdZG5l9DHq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754719193; c=relaxed/simple;
	bh=xcaWtS7c64qUPhyZPArgMcoxGdxzxwT9TlBxOMq81hQ=;
	h=To:Subject:From:Message-Id:Date; b=ZVZPZJOkkDWa1bkAQM9YAmRxv9Z9aogxCTV6ie89onsZm2aSrvM5y0yy3IQ5oZuLEV6A3xY1SnptikVTM9r1Sj7l1is6UYvZLGpHC75NLSOmMunkIt61xneBXR3mRzuQVBHa7GmmmEMRShWGUC5Y3Au4oC4VWbEMC7h5AYZHuns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DK7SKZiF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DK7SKZiF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5C2C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754719193;
	bh=xcaWtS7c64qUPhyZPArgMcoxGdxzxwT9TlBxOMq81hQ=;
	h=To:Subject:From:Date:From;
	b=DK7SKZiFVc/vgckcf74PPF3jhUCGuTYqcOe9H82BVW7vpXtY0/U4xmPKsftlu0jpa
	 0mtVR7FRJpv9NRjeZbMQHlIcdd/j6S8XtefSh+Lxw5WJGhNgD7TZo6Rxq+edVFBsuZ
	 NLwh7/UDgU+PVo5mZZR0pSbunqD9grq7mPNxLS1kPMLomibk/ybE/kiGib+0vjkD90
	 uagNpYLG2FM3BdsZBkyjF/+jxvmLNqWPJq5DhT1UmmTxFY9AOkkAHepPldvsTFk4UW
	 xaf/jUHnc4wZTN+FI3TkD5eUbJ2tKEBkZMPULNDHXVPMTkVHmLmwubzFD7oHLaDjdR
	 5+/hEdd4zLjaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F876C87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175471919357.11634.3470486016553700688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c40be8c1e25d81283fe3467bf1bb08562ad37c67e4426511191b1a4ce81eb11
Date: Sat, 09 Aug 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754719193
