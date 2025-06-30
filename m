Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C153CF9D6
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751294993; cv=none; b=uYZ41GgPck5uCOXXtyNleSDbZ/RPEX9M6u4xcmR2ZSN6Fj4g7bOzq6pMintsA35N0VKbygwUDP5CD50uyKyjh4DLgx49CrbR9kxx921T2u8TwOFTtfgjO0U0s9DMBo9AFAWwnIUjXwwNW4KcBioi9KvWRlD9vCH0zShIQhYzLWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751294993; c=relaxed/simple;
	bh=308U3Pu5QKznEuOasJVmBnu4Ar6RI/njkuF+yTVit7Q=;
	h=To:Subject:From:Message-Id:Date; b=XPdfiEq/foSvenSrwgsR2i58PYLS/CwU/eW+AP29lvmC+osJBKf2yveuSRleNCjYFZRVOEu+GjdbxVXK2w8MX8wuQi5ynoKeumxk0NmZjQpcA3pmr41hgQtGq8YwVh0FB3PpQuq4DIv0QG4r30S+2b4nyRMyk076lBqSOxzqsd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qdexSFVy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qdexSFVy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1359C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751294993;
	bh=308U3Pu5QKznEuOasJVmBnu4Ar6RI/njkuF+yTVit7Q=;
	h=To:Subject:From:Date:From;
	b=qdexSFVyUFfSOcjvmJW9K7bDM7+VCoX/aQNcvIsCKmNZ9tuSKJqJ56zsMUgrqr9u7
	 oliuBMLIcf8iEKg82cyuur0I7i3pQebVm16cZ4vyi/SwO5TQHNpBo21zI+dDRB8jXA
	 DqvD9VOPc6DOYcUm+EsnwlNsJvaEZukFXb7P3XPEYMKEudkt7n/KWC8vdSEfwaBJG4
	 J+Gd5WIzuL99FQnRAD7+VytckdlmVCV880ep+6l8aWwW8v/lOeJFE0zAuXhF4/jr/p
	 TT3qdlL4SRfxHVhuUNhwMFtQbP0AAAEewrTgX6cahPfk21Ws9yIXlhrqo0234hVdCM
	 /PXN9KyB6SNdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC8CC83029
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175129499358.32252.14268063698301070822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f174273597f78596486a3eba92858ec5b5f403cdda1fc8b31319ada132b4aac2
Date: Mon, 30 Jun 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751294993
