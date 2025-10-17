Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A06B30DEA3
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760695794; cv=none; b=YNZ1mWPOic40ErdjYezx/tMB3kGwUaLHvrlzLla3vio4Odv0kP5rbpAn1cspcDSSDo/oRzrWW3I76iBnQRm3tw9zq51sLDxLLlIo94PjuSEs/QcJuS9ur10AaroIG34NYLr7QTCefHaVqSTSn1Ui6cMrCt4Bd+01MITglWw/CHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760695794; c=relaxed/simple;
	bh=cPqUIkO7Urt2Y1+z0FqH1Wn85Rwgs7hLkQaPZZVyZPo=;
	h=To:Subject:From:Message-Id:Date; b=MDCThPRRieuXawRTBDkMzJ6RVzhAZFJqzfz7QidYPPMktjbXZTI6f6ze0JJ4OWD8KHX4JwkIZ3lvIG4ptBfQt5nw4qrQyqkbNsS0Hez+JVqdKu9sc5tLrvE5/DbAd9DqndTlnGca40XShNs3F0Al/ZxQMjZh0fP+zG+Xc10GlKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FF7cGo9r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FF7cGo9r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E721C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760695793;
	bh=cPqUIkO7Urt2Y1+z0FqH1Wn85Rwgs7hLkQaPZZVyZPo=;
	h=To:Subject:From:Date:From;
	b=FF7cGo9rbRsndjqMWeHBSTsWh0pr7J08AOGVUbuWBb+fiPnSRT0+fnYGVXsFOsuFT
	 it1jv+Q/uZqdIwYYCgknAW/03DufHu94/6ZrjRczC4wm5pfZ9ZGj4Pmt5L6crj4TQo
	 FcaqZz2CD+DmDd3nGBzR2jMp7BJ8QNovqljWzewFBEh5zQy9jBVf2IgzFhBuVXyu2G
	 9HogRrlKgVi4tugUhC3USjN4boXFyRtYVLBA+oEdZ8mTBZ+kAaKHofm8tXXhg+DrcZ
	 M5L/ld1tLwzvgfQ+Gw4I1PSbkcUAqu7j+0bjbbOL6FApfCKl9hLcOdzBAoOUZPaqDs
	 k+yTVMFEYnThw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEC1CCD19A
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176069579358.20349.10777494021920654934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c183f303da744b9151d6e5c6521faf096e0396d3bf1e3c6233348c46cae80829
Date: Fri, 17 Oct 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760695793
