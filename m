Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F50E226D02
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769457834; cv=none; b=ZzlNdjmGDQ81OibphR0Er37I+OQFZmkyeWbDOI1Qmu8C3ULReChKWuQQRFYEFIEMQTGAVp+h+TVxjgj/zN5lvWk6KVT0mA1zKgMBlnP7mp45uwzftXTcMwkrXEHc3ZUyKTG6GUIdPz0hx0ccE68nlStV3FyHKAx6xJt4D1qYtmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769457834; c=relaxed/simple;
	bh=1gMG8u5CMRlwVcrMlyVztG85tMHmdlhQpxnOsm6TtJg=;
	h=To:Subject:From:Message-Id:Date; b=W9fmgl4JL2IRYLOzUzdD8QOmE4DHurJnEhgKgF+kOsFhqTmoLmLh67OegK2gvXinTVuFhH30m5TUwo0ywyebMDmDo7ceeYXS6yj6yB2+i7PpjGiwCSU+8fZ8kdHXZ3J9pPLTbvdP/HTdpduBzRHM+ssZ6CLjbe4gBWZwUdIU81A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k/s8nhjF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k/s8nhjF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48DCC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769457833;
	bh=1gMG8u5CMRlwVcrMlyVztG85tMHmdlhQpxnOsm6TtJg=;
	h=To:Subject:From:Date:From;
	b=k/s8nhjFpQp83XwXyehR3u9VhVN6ImsbNQWokEMHlJUYfzsQ7B6NqCaCGNsKpHB0q
	 FqO7yGIwF1SR0FLAabvpyAOPSa6YGkfhoSArlH3iCW2GwVCX7E+ILUL8YTFRVi+hM6
	 I13gvC0GGHx1LLtEHC4hnFwrblRsfJ9iZHPDGSToIPke4l//fud/kYldNace95zmRg
	 T+v1n9Bl6LIurT7/JxgShlSiDOj2JUXOTg6mk4R38f04TFv6cKuANhtHxrsunnoQNe
	 vKp8XXsZhJAyeTITouOlflbX6XUYo0TDQcljCdbC4xbIqf2lZ52PB6EP6p31+jYykb
	 XES+8jywFtayw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93649D1950F
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176945783359.32433.121302159719089701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 107e79ea321ce3c02aa9fadeedeeefd7073d9b78c72a3e4a9e70d425b2748972
Date: Mon, 26 Jan 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769457833
