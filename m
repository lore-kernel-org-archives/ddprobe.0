Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD7B349B0A
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 08:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783067914; cv=none; b=feA1nOu0/HACCH6FAEMSisEMeTFD8CHjSnycNHbA6cUHOM5eTy3pRrmieKQFTLLNykdUjPZ+qY8j+TyZgbm7vuaMsaf8kXQOytV+y7uwqlNjOzzn2Xqco1aJkEbWCc39tYavZCs/XUX5bA0HVnqX+m8hGiapOmylA+aD87vT9Ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783067914; c=relaxed/simple;
	bh=AKF5AO81K4OPHPGcRyR8SmZv5mHlH1yl9va8NfdOK9o=;
	h=To:Subject:From:Message-Id:Date; b=Ap+5cfEFPTU8r12zcTIfRZ50pTvvJ/ZsdYJo/AblAJqbxZhY30dskm0+E1T4GkanuakljYUmZsNRr1lHYZJQMawwdGBH7sDKcIg+49bUc41hjANxM+0o5/hd1OZbW0RQohtclOhbbCsyBq7Af6327wmzfxLMMvGOpyzEDjT60cM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i4qiwcZb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4qiwcZb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C92C7C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 08:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783067913;
	bh=AKF5AO81K4OPHPGcRyR8SmZv5mHlH1yl9va8NfdOK9o=;
	h=To:Subject:From:Date:From;
	b=i4qiwcZbmoUFt0j5a7tjOIG759wCGfXBHkg6E0qjDy18y05o4vdrgFmvfdZTm755S
	 IG2n19MCys0olo1tjVzzK/thADNplse8U+Rz/0pwNhsCU8R6kZxxWthlhqU1+9egnZ
	 mQZip3xacPwXEh2qHifeB/2Zv2O7jAZgUJ7J3H367zsG2WCoUOp4JeTz7rJ0Mlxn29
	 Bzsh+zJi/QnC+jST3633O2vZ0loqMlybEILbni6GleR/P2IbA5H6ZDUj1UT93G2T+H
	 mvs0cWmC4CKYqINoGGMnH8U+rQCeYUu212ZLhhdF2q7dzN4fRkK0tiwjL+kdgetOX+
	 54ZlXCiadESGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A923EC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 08:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178306791368.11035.11186646396295361036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59179a5987589eda4bae80908033af58bc1172d089e9c983a49209cbb0ebc30c
Date: Fri, 03 Jul 2026 08:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783067913
