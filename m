Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F1EB225DD
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 23:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715471543; cv=none; b=clVk4gSuxVv41FhEqL0ThfOFz+diz0o6zxhXywEWpBk+aqyP25a1NpYC2cm5tZmnFnD/24fYyE31GaufPxWnFQeZWOVRamzXDU6QSz2zrkL0tvsMXOKW1C9JUzRAIk/iyRJAPwFxVCynaOz+d3Z8l6+ChTE80GHEFXs9XLb6RRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715471543; c=relaxed/simple;
	bh=2FAjegfBhTJYzON078U7ND5FMcjiz0aYNxClM0vOI60=;
	h=To:Subject:From:Message-Id:Date; b=HTPkM8YBGCXBo31KQPg4WQ63bLl4HPSo98VSyiXppmQC+3ps//0wiFFpAYCu/0SWKZ7M5wqDkvFIY/3140rxHmRCvcWIm/x6Vr1uwXSLGjUu6q5ZCFCcTJZbXaHgi4mPwmSxAQ1J7EwyvkksIof2WtXnLZk7Vw6p1D8UECVjWLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLHi8eM5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLHi8eM5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D92B4C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 23:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715471542;
	bh=2FAjegfBhTJYzON078U7ND5FMcjiz0aYNxClM0vOI60=;
	h=To:Subject:From:Date:From;
	b=DLHi8eM5Cf+e+ZdPqysSCTgRDk6EiKKqHhqN+2trGn8J0e5pEMV9lVGs/Md2kh+S2
	 5M+8CVixHszG4gIeiMxgRGpd1MgpDTcz2p+TDh0YEG8peQEXzzXDB8QZGdo8OY92yL
	 sNOCJhT25wVFqlsJjumuoPljsfEzjptES7AxKE0P2zfnSdwH0hqaTCtqt9s6khqrkU
	 O2MfVs+/jegNLmLp7X1FidqOtUZhBCodfxvgkq68V6ti24pJUfzK9JwF5dT1w5SvyN
	 REGuoizVw+mdkzDtNDovPmPbBcJlZ7TgCRnjQY+ackUsb31u4FCmZncEQQNb9+ycyY
	 QxatRDdKxwQzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C34DDC04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 23:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171547154279.18070.1163996517131662470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a1612dd31c78b721218f8c6a7b70bf538668c6be3d55906429e3a49df02a506
Date: Sat, 11 May 2024 23:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715471542
