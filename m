Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 666E2763E4
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 23:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714952543; cv=none; b=rB4NYygplV74XMzTQvBvbLWQvi+xpXn82aZUAVYSu38g/aPXwqYHSrTTVBupmDKN4lbEDOSzO7f3sDFNQUtbeOOOU90FUPWYHT20fWO2B1Rd8LUtnmjSj/xE8akw+xAa6gmAmqWkvhCXaByEIjgHoiuduOqeStfXMnTLVgYZAAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714952543; c=relaxed/simple;
	bh=a3Fbw3dYK8Ldfg37S11YsNiRtufhCAeuFve58t9S5YQ=;
	h=To:Subject:From:Message-Id:Date; b=W9rot59Wp8WgszSrsaey5fTJTr6TreEVeB+FNKu2YZMoq0WtaF4vlCmW/9sl/S3JVFNh8xweP7FxljIoZ96GaiqFqddPn+76u1V3NRBRQGZchrpcqMAD2vstnWh1N76aV0rMgo82sshLzLn65+m0u6RZxspz+MCK39vi7mJhHlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CMjKl8Ep; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CMjKl8Ep"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7617C113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 23:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714952542;
	bh=a3Fbw3dYK8Ldfg37S11YsNiRtufhCAeuFve58t9S5YQ=;
	h=To:Subject:From:Date:From;
	b=CMjKl8EpHJGIYAv8UvJ1Vv043VFVBusi7qHem+/QlOW11cqqNygZkzXKqWxfhKCMV
	 z7aTIDcc0/NnLWRfG3Af8gw5DtS6nCRLuPYmz/NsI3sQi0RuAZvo0w7MRrArSNuGnY
	 aCUb6zhjM5mple1+dr/dyEDh2Wvrl2VLwi7R1lIe9t3II+iqSmCurjJjksmujvE02S
	 c1lRd2dwgjPR7/AzZeyyzCmka01w0Y0SoloG+qdzChBimKMgIIs9pN0/u5KWj2JxOq
	 jP6QQiNMLfZSubUdBJ0pia29p/1EcHXQRM5CQMP2RKquuJCBU3CXcVPHC4zGpuHly+
	 9/SSRCVj6aSJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C41E4C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 23:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171495254277.29177.17823585914789484785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da3527293b44d31eb7320ba6799f3d53e7b5db806768de2f09d8cc3de65de99b
Date: Sun, 05 May 2024 23:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714952542
