Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8BD2C11CF
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 09:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765705374; cv=none; b=XGuMhBwmbvNhuyRLM0WxWPWbYTHOhBoEfCoQ9ZErnmMh2yvOgQUFpbCnbFZUXTr0nOtajC0Mj1cOP2FzolyGjJaYQZ0DcMy6YV2NfaU1TMnBSClWYFpVfBQP701Sz1dGmMKNQFLJEe+TL/+ZPVES9RXtpWezFFaPRsUcpvI7nhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765705374; c=relaxed/simple;
	bh=gtVp7HJjCR+p1O4kvRdTcrm6brDBaJeUMHinr7leYRA=;
	h=To:Subject:From:Message-Id:Date; b=CkvYfFNLpHgpxyqacbCMS/zS7HeMsIRykP8sCZ/F/cfyicU29KE9HM6FIgR2qhAtv2TEh55i4YBM+hropnBwggNeh45Mcgzp6R+9bapLSAzBainAgbwSKIylCsHetBtEErAAq7/SDOeCr6/ejfSJrAp32/Ve6WqLe50B5ARSz5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJwAOUSA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJwAOUSA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4252C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 09:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765705373;
	bh=gtVp7HJjCR+p1O4kvRdTcrm6brDBaJeUMHinr7leYRA=;
	h=To:Subject:From:Date:From;
	b=MJwAOUSAMTyyoB5mqxHdeVBt9TIs/i1DQwCa7sVqFPJLvIkEGQUzb42kWxgKI4Loa
	 BWqX07ENSSYWt+I3sKQ4eNA4pKXFh8uUMXod/dtO0UP6Akno5i0nKtC0ddXRdKROLD
	 rJEtwadUv5Y+58AGp8M8bEqzg8I7ni8gKNo7WIIQWkeZUMIFaI+49b75VQNPQyit/I
	 UJyNv3BrCWV1kTV6oCeAckum6v/ZXazi+kf5bsimsI+shbNh7+vlqTjFt4tbDPpCCr
	 J11hv6wNH6kzstXUgKR6hl9N89BGPYYraWkokNX/ta/AK6t/+ls8DzKlBoTqQDLSYA
	 zM6dBV83n4BIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FDA9CFD314
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 09:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176570537363.26953.17742890321162781800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3ecc36e25feb3ddc51dcb89193e07e669f4b1c05d3aa823ab29dfc09c27780d
Date: Sun, 14 Dec 2025 09:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765705373
