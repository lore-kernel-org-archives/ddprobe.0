Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382D9EEA8
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748908194; cv=none; b=l0tWzuSr5T/sR+co3SeyZTQxt6zueY3azPe8SXouBbukRTzca5y1Y6F9J40InCtp5XLzx27tvsK5V1DuOsdOcmrAChr5ZYJ++Q6pisatm8XPovCxPbMHBbtY013bmGTtiQSPwF41+ZAd4cOsCpPhnYumv35cUX1AloTkNYmEqw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748908194; c=relaxed/simple;
	bh=zy9PMnKuI+gD4BtT58KwOOF/2qwdEcV1/PlGufQ5PGk=;
	h=To:Subject:From:Message-Id:Date; b=oUx9F66qGduzrKKdnhr/sTje/bBtojcU+VFpkfZ1pjzETzmJeRDHphDldLIkL26io2uV1w7nJRVFAVDx1R/o6YPAf/WO0Vw1TT1aj0ifOTeLoQxWwuql/i3PNy2kCwUbGJttsTdQ7tcK3d6ieRzUYRFV/a0vupXARE8dHZyyqq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mkQtIg0E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mkQtIg0E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92EEC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748908193;
	bh=zy9PMnKuI+gD4BtT58KwOOF/2qwdEcV1/PlGufQ5PGk=;
	h=To:Subject:From:Date:From;
	b=mkQtIg0ENCjMeKN6zfvYUxrg2zbJWBxc8qRH7+hOIKqC4UNnVg4KJBQuu5XP1L29P
	 1CU1tdNhwV9pnZncqQsvE0FbC96RMqPIjg45zFBx1qXoYdlq6hvu6aaU7Uox1n9+dF
	 xjMLcKN7AoTrO1/WGp8cErvxEe5lATAdGJ8uRCIxypezbPdI7mMpP6rrz5n2XW/qN0
	 Sc1kyKN8H/Sr3AC6WukVDCWHZt0B9FdnIN+Tmiv7Pm3HtHcaAC3c+bKnQvXHf1HczD
	 KI5fqY1q1koDW7z17mTzumHUcywN5OQODIAcq6v1PYsoVdYZ+wpqg/5XrW/UIzHaEi
	 hqVnSya8xt6bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9630BC5B549
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174890819359.9063.6775905580151054819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02d1e462f77af893717542572d02f0cc0db59fc96b22aa42504b992ad6032fd5
Date: Mon, 02 Jun 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748908193
