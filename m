Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A660E13959D
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 05:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760162394; cv=none; b=uspvVFjXGhrRE6qDHlDAqyuwcHopDkTESQHCPwFlOaj81++ibrAT3LXGx5CActljTC9b88TujhWDVT9Ffbusl3QLidZG20PniG7O61HG0jYNyRQ2h+AxXdbuEaYpRSDboQgw6AAG8euXqvdAaLu8eHzVFPHYUHHvujr49vK7Oso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760162394; c=relaxed/simple;
	bh=WTP7SrgP/eGqLVOenGu4Jkd2tATMWzol6GIUNDD0CBY=;
	h=To:Subject:From:Message-Id:Date; b=utcPueNU1qsaq8jhS8RHykYCiKtGjyJrtvNiHfEcwrnCzRqRHPrmSRp7JTYir7kCn/ZRDmrQ99xuCmhWBWfz9N3m09C0yv3cEv/jQKhHUPo/0c5V0x1V7yU2+I2vwUxYelTQyFBmnSdSCkMwU8GqHNoqBxxTZExlPdOQOpPSKIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dz4gN270; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dz4gN270"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E5FC2BD01
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760162393;
	bh=WTP7SrgP/eGqLVOenGu4Jkd2tATMWzol6GIUNDD0CBY=;
	h=To:Subject:From:Date:From;
	b=dz4gN270IcBN+ScE/wrsf7Z4XHaGNwMoGymOR8LstBil8HlrxHaYthZtOFh4W6mi/
	 GfLoUbdbeWMi6vutl6qnaJS8hbDU7Do9F2pN1gHBbW1MH+g+sJHvRbxlCpZ/aZDGOY
	 peXfouAy4XUjvzTJFbgdcNlb4xMTT0xHfsY+/RI9mA+Mdz//DHqP52/nM6XsTxz5T3
	 OfnEZ+LRcRCP0DEuOYxJ/IgMY6K0DHZMmFs/MfHCEk7OsNzcE6c7VzU4dq7KLiTFJ2
	 biM5d8N092z+Sr3sEZlY58TvEfp0LjQov/+YxnynpIOv0V1QNs8CRdvqHcgaUOoMKO
	 lhk7bhwl0C7Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DB5CCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176016239357.12725.3560416207942776479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dbb0f6593c0046b78027dd43cf6c4b179801f86371840090d8cff74985cef3c
Date: Sat, 11 Oct 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760162393
