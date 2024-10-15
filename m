Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225EB1FAEFF
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729014954; cv=none; b=t6fujtV7Xncr7UpeTpxuPNSeAW2l5uJbAR6Nt6OsQNJb/ntBkv2XCuRUzbcKLxYy3w9Nr/X1vbW1BCJFUgreUuV3iPZGHH/hndbHfXLH4ngnzdrtomDuuAmAt3cHmdPHr6TdVhLrfDVLUWZLtmL0UrKtjKX1NKpnbNErMMppuxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729014954; c=relaxed/simple;
	bh=v4gj9KKfBZqV+6To56I3n4qe3GRa7Jtp3hlIPDPCjcY=;
	h=To:Subject:From:Message-Id:Date; b=B6+zqcXgyJKGZVVrU8JuyI68OHcx+aZ/iJA1kr5uij9HLZUf5vD/y0y/sT69PLt2a8sYasM//TAYj619dIYoL3PnZJBxQUhtKhl+1oZPWhcnGJYb1cGmlngPNjSIsT126XYUqud+w5N4sTLXzdSdKaevH8tRtxnB847SECHIlco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rCVpCt/L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rCVpCt/L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4661C4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729014953;
	bh=v4gj9KKfBZqV+6To56I3n4qe3GRa7Jtp3hlIPDPCjcY=;
	h=To:Subject:From:Date:From;
	b=rCVpCt/LFhN4W3+DvNX+y5idXhqVRVhQMExAAs4KOPlPw0Ak9LmfikfIv9O6eBa/9
	 imCgLqtO2pMV+QRQMUM6PjmY9BJtsGOVOty2kdllVxz+tSWNO3vac10wmCNnz0CVL4
	 ok6SZTqQnQx3dlwAPJsCkegd1S2Z3Gffg9dk0+BjrpauMPkiPrCjSuMeYtjff0IWqf
	 fogJsmkwwCKhOk97m8PYWsxHeghzSuIQrx5WaRB1fD6sNk8fAsPF7aIq2c7w+ZTgN8
	 i0G/hQvaadlOyF4WywR61nF+pgvvRuKJ7r5A0nb3l1tzJ3wUPRypCkCSoZXclzxqcP
	 whOluGVVKG7oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94943D1D88F
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172901495359.16232.6851102139406989437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c10105693703f6a88b43289ba37b3a8d23eb4e38134806ceb49cd8d8b9540f1f
Date: Tue, 15 Oct 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729014953
