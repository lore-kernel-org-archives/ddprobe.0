Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BC939DBE4
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 19:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778354855; cv=none; b=AIcm1cvfapkTfa3rFVcvGylgWb91s25OBg2vfAMqaH5Gmkgx5FuTY1GicjgfyN5/kNL1fLvdhf3owWiqQexd0uLnscq/wX1ple6fuhbp2qFfyNq7IE7y9eAuIlV2puDoPBmysZM8wrHNRV/CGsXL+E+LLtsdmoRuSH8JmXysQQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778354855; c=relaxed/simple;
	bh=8j4rtuv5iw5flmKDFGxhcVjSNhJziXG3J4UPGgSPG+w=;
	h=To:Subject:From:Message-Id:Date; b=qyOtu+Jydh/2cnRfPbJjlRTgoDZWsdRT5uozDWIi6sJydDTCPc4MaF1FrwgYudg0IzbobUXEHAI8UBz2xSuL4xNQkfXwybqmJ8wdORA6Ey8cFmLLhu6oOojl0bNHhY6oGyUJFskCQVJVBXdZX2OXDUuUCG08l/zHmqqKT9tPYsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DrGyvxVW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DrGyvxVW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 599E5C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 19:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778354854;
	bh=8j4rtuv5iw5flmKDFGxhcVjSNhJziXG3J4UPGgSPG+w=;
	h=To:Subject:From:Date:From;
	b=DrGyvxVWZ73Vk86UE8ZjBFxe/vKlSKpx3iQd8nwvGk3mRG4n2tjimAEaqutXDT+LU
	 l6Nk817DUzgB0ajj5u9wA2ZTevazE6Er6+4Qjd8JS29/YrT/JQ5TI3VG7Az8erxe27
	 2lzAX+a09uEYHXhq7gapDLu1ruzLIqBgrD/MVE9ydSARo4c4XtC1xMZjeXCZg3mCMQ
	 gdAmB/C0aokKewoadZ2qor21qO4pmco8sPYMYumxZVPEM1DXZzuY85sH7niTkFelmS
	 xPSnOadGqUzzmIaV1fccQ0b4P9X8mLj3v6zYEZI7fEubMwfHw1a38UEaqtpryS9/L6
	 j8XMILcVyS++g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E126CD3445
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 19:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177835485395.31366.9627808011649898296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41a747a907e99152c08f8b3fc7aeec33b0ff723d7da39ab73f81af894b18f113
Date: Sat, 09 May 2026 19:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778354853
