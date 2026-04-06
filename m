Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E09E571
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 01:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775437534; cv=none; b=Sh7Qam/Zt+WxcmvxGgJNhbT/prD5V1gje8SowUExfmU8+Lc3/01sayX73aMJVtEUOjTsdGe7+0w3+sbfrveHoVwz/kyl+sfsBxi1BicMUPoZUXAMwmX8TYxh14CUVUPTQj8nCjIhXgXBSAmlhBtPaADJV5YqopuCjtZuwekga+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775437534; c=relaxed/simple;
	bh=OYK+rgctRTHGxGkK1OP/mFfC6itPPBvZ6mTyLtL1XRc=;
	h=To:Subject:From:Message-Id:Date; b=oOYVU85YOA469tkTA2FYifFZDYAeqW8vnhy6W6ndn8I9ePWpGJbWLa+jArcjQB93a2J1kj79OBOvriKdrAWeen33I60wYUF1kvqLeeF5WPbS2snEjSdhiqxM8ZEHNbFempYd2Ap+h7doj+KcQ7CC0N+lOUVNtCxf68FCz0703a4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hDRykPWM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hDRykPWM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE4F4C116C6
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 01:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775437533;
	bh=OYK+rgctRTHGxGkK1OP/mFfC6itPPBvZ6mTyLtL1XRc=;
	h=To:Subject:From:Date:From;
	b=hDRykPWMVQBNcW9dbF4zO6/NHe4D8GbReYTqNqBJr+bB+7E/+0YZaGjTrXLT9vvhO
	 OxdPiUoZB86CFDkclY5vVl/YRWg/HU+Gsyl8+L4LAvKNWXczJYEGjDK/Yxsw7FMdyZ
	 5I6o9b5HvH9JAu4ixO4MMQWGCUuxOfkTv6FO0yRmh51K8AhVP/s9kXutTJ9xB+H33R
	 c8Edrx5JLvDtX5PX8fdyGDJcql7e19HoSxJFg+AO75NNyHatyr7S+PBUdzelFUNRcF
	 CtEDkCUU3ZCgb9m8HRAFwknz0aTCXkH2eQ+qNdHtRUTTxyZDlVxiL05CcuTIatnbLY
	 I404lisgDntiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3A8BE9D82E
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 01:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177543753369.15260.6052806289692323773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35c94990b06f20c26f0bd8620f9c6e0ec23b7acaaa728a40dd392616959f9899
Date: Mon, 06 Apr 2026 01:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775437533
