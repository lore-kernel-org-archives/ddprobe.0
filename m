Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304821F8AF8
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749295794; cv=none; b=nVZVYLgb6iPG3ey74mSfc5dbs1zcY2ZQCLRQX6G659Kht/yt2aP7GYHnCG7Zhm2tlJoUsjgP9SPWmAJHHP17jjSPwztvLE85hqrcvs6o83xlCyrc4NmzhOtanmDHy8n8aAuXFlwPRCE26s3rIoxFeF8Z69i75npuXJGpaPZwOhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749295794; c=relaxed/simple;
	bh=VdF3EeUSgQ5ix7JelCWgxohG88j1cdRgmizdBUI/QzE=;
	h=To:Subject:From:Message-Id:Date; b=W2ta1q9he9ekadecWEXoP8zlQlT6SbxreJX24QGi/6RzkACcBTN3cD9KS4OP10Zxh7Ce87f+6v4JTT57GD1Sz42cA/p6yJ7j33hrMOMy62ivvV6VeWIlo8r9IEZgzpQN2NT85n+/c9OfH/RPIVAEIX6YMNIUojQv09wyo5ctozM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UeRtZC3Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UeRtZC3Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6647C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749295793;
	bh=VdF3EeUSgQ5ix7JelCWgxohG88j1cdRgmizdBUI/QzE=;
	h=To:Subject:From:Date:From;
	b=UeRtZC3ZT3/xzAnzK9we/xvLYAZ7jwKbVJEdanT3fG9E9f3WMtgAHEak5KEi8aLzF
	 2cRlCjz9OjlyWANPHTRkDOTnJeLvVzT6RhvhGJJBQXfzfuLaUBwCGEP+zEu+dzG2FO
	 Z/kf2/l2deci0KXUk2M19VbVIZvA4B059XN9SwLoI8EoSUxk/s0vkeAPjyj/CGjnPo
	 O9Y42oV6rNyIfSOnzz6/830znepn+P9VRIeeU3xsEvVnZ3Ari3Q18jUB6AF0MvD9Ku
	 bYl4KNT4FjqduWBAqLdvyFeAEAyRh/awzqTykr4ycS0FQSfZrDCuZrhp63KCdePSk7
	 N+nuXIt0tY1Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B27C61CE7
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174929579357.4124.79840972993800986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1888c2c52c9ce67ca67c3c7690564b58a0a9563af78265d7a0fb16f7d1678d21
Date: Sat, 07 Jun 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749295793
