Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E14A196
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745285394; cv=none; b=Ovw2Yc8OTQ4fmjyornUMI0r+YIpnCspt9qdhD+f9Na1PN8aTSq9dhb0cWnRvMjFPiOJUE2Gk6fh6dnjfQeYgfpmooiksz+8L6fkLiTiKLITOY2Wz8t3TGhvCY7Z2ueaEL81KbHtiMRpt2ys437VpO8WLLS814H0cb9eZZV+mMRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745285394; c=relaxed/simple;
	bh=bk9+URD/LqzfFYKHYc1a7fCuudynJ/PtoD3/HW6hKao=;
	h=To:Subject:From:Message-Id:Date; b=urU8+jmiDmMlisdfY/mSxTOyANpxTNjufPCUlejbVCq7xwF+pNWL3jqhjzYLJTXMic4QkPNVEzTBJc1VUojB6774CoeUD0td8WX24V9Wkg3ORroRAxQs7Tx5yLB92/ooqjyUbqh/DX6jhxRtxCMqJxG1hD50XPOCSeTl6RseNJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WXD/mz7v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WXD/mz7v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C6EC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745285393;
	bh=bk9+URD/LqzfFYKHYc1a7fCuudynJ/PtoD3/HW6hKao=;
	h=To:Subject:From:Date:From;
	b=WXD/mz7vmIPZBtytWxb/ePPP1iByEyRqdiZDUNIVZ5gCbbLfOuon9lAJjgMicEgWU
	 MrxYUBNtaRXdyGU+nPY0oP8djgSEA5537e5OtFxLPmT8wA61+YQ2YtnFpRmEKwNubI
	 VAceeCsDt3bQddi+szjptN2XcxRTHmJ6hj+7jLrKH7GQ9PIK3jwNtvunhUk1i7/7xv
	 LtEzwuCAdWu0Mc039IBcI/f0gBE/N7c/HH3sCEmysJj6rz0n/q1+2elfyYeREhfpuT
	 I+aMtE0wzqbBrwFk3HzQrShAI1KkJONaNaOAjPnCggymj2fZ4WvvOAjTxrNmq/k0Me
	 bytk4m/zpJ+OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8934C369AB
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174528539363.26497.13747814695367058816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71cb91bd7ad1b985fa9dff86df1c61b67c106b9d2b4905a98e805bac69a0a464
Date: Tue, 22 Apr 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745285393
