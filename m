Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A82019D89E
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773099894; cv=none; b=efmEbfshxaf45c2wH1vxa/GiR6yVwsA0iHSS/ghdkk2H04IeVWT0jamDhiFXLug0YEf66Rz3c9JwOaqp+cftOqc9JvcUHQSA2b4XWHiZgb3K18LFVgOR8qUn67YZXjsknW0VTW9MxLz9YtndmEpGpieV4ZaXVNBaQKQrarczsUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773099894; c=relaxed/simple;
	bh=CNuF4aSvVdkxzF8bzLb/RAAn/DJLhy2WTn1Qap7jZzs=;
	h=To:Subject:From:Message-Id:Date; b=JgmXAmFWScvvmVdIPt30FK1AeILlVL6KI1vz8JjvL180NxX9c6Xe+kpy79bNhQjMrFi41ovvnOS/2dQR6GZx92X3hm4pm6fLNmCxMH4qqS8jNmjtRfaJpOaZDMmpCyODFE89Cc4rzWn7hnPkqKBcjs8anuoLpwhqSrcOenu1Aek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KCbGy8Z0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KCbGy8Z0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1749C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773099893;
	bh=CNuF4aSvVdkxzF8bzLb/RAAn/DJLhy2WTn1Qap7jZzs=;
	h=To:Subject:From:Date:From;
	b=KCbGy8Z0q9AV9KQy198u8TJs4O7WfBuCb/JkrcumS4pBFxHmWoXBJuOkHwj0UkXrY
	 wd/4DpVSjybNzkIRQtGge+I+ewWuA6H4EeYZIyIBla2khUmVH+UIuTvlbDjqCmXqPK
	 ioIXw+8a2yamkwjJYBfyTAJ1kFpLKoad7lWaQuuDvZnyVDaXuCd1g0lq8WqIZ4ARtZ
	 C/H6rngz1pQ9TWRrgQrXfC0YnBZrJkIXN28sUovwkXpEcT/lnMHphgEuqJkvzG/RFE
	 i4G/+3VIjyUP5GsyO77cz5N6MJ3yFUEf9SMk4NWVR/PzCQrtiPMLxbACNxyNhx3P51
	 SPMn6bClIrDdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDC4FCC9A2
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177309989357.27474.17652372829617032733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fffe6c7e8c061e190d8e70e4bbd595d151d52d195aad9238002a1e531909d749
Date: Mon, 09 Mar 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773099893
