Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356F1371068
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 23:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778543434; cv=none; b=hU5cixOK+XsRqJrEBLal9wsbWkZA5ZyEvFy8pJ18mQ7sr+atlw/DzFD0OrUrm5P2nKw3CYN8N8EVDngEkakNucrLF0LEkc+LSG5wUQaBetc9LUziSoEHdqTLkH/v8nL5vLqYgnv1Jqs8ScV8vfbkxdZvdvoylEAMYUTNmiGeyaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778543434; c=relaxed/simple;
	bh=fW/vblaUfEBz6+/NZBJdieEHEbfL6OJxrygVZoPix50=;
	h=To:Subject:From:Message-Id:Date; b=gC6nwu1ts49s0/NfWs1P9yGQxKD7aiovK4izXWspI7aboDwtUQh2WyzFxtT0wW4+ngRIJL2kQe9Obf7kx3Cr08nV0XlXP5CBycXSCx6/kUc+n0UplTPUNL3EwHyVj8DYC7uDsGZpVDxpDsVFjpdGv/YXUjsVUR3EIcebh1lAEjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vKXgaeCh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vKXgaeCh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF3E0C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778543433;
	bh=fW/vblaUfEBz6+/NZBJdieEHEbfL6OJxrygVZoPix50=;
	h=To:Subject:From:Date:From;
	b=vKXgaeCh7N+vcKFdHg6vfp5UAznnPKq/Gbo+nEvf+tpQVBgWnetqrnGZ1SjOxas4d
	 b+PlU7WZM07i7S/q7eV49qmWyJ3M/FL606PEhMLVb57rK7MzryOAUusV+SueekWTTy
	 PmmsBYjuu+GTHEzWyJDk3Ti8e1cQQPtX4Jk8J/dQXmtM5xeO1JfXCF1EMuDvJSsOD2
	 kjR5+aPB62fEBH/dcFLzci5tDNMgmLZYqXcSpTvS8EMtwVetpNXCfqB3SSambHpZqs
	 L9sHog9lft2NnSirEdQJHFrDDU3kTQMCbZcgC2qsGqy9SH9+XpvnmpHFsF4LsA7chE
	 GPn4gCpCj3mWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B038FCD37BE
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177854343368.25040.7215456119842767063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eba8460c684b7c8ae52b6779268f201d742f40fc09dcb3adfbd020e61563b556
Date: Mon, 11 May 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778543433
