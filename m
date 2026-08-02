Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386AC33A00C
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 20:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785702634; cv=none; b=A0Ww+/+SZ5RQUmgt2D7JimV9Avy4IMYaciJzwFnJOGMezTlR5rZe+tcnwoHUouVYno+ZuSIIbTaZGx1uD5pZXUBQ8v285ogqSvFb1L5M32uNK/EoHFwEDXK2ADPLcGHtL2XDHIi2AUuhol/f4tV//zPUiJuul3frVNPZsV76qi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785702634; c=relaxed/simple;
	bh=5pkOv6biFZUTCjw19lbWI8Av6uSSjn1zCQM+6idUHCg=;
	h=To:Subject:From:Message-Id:Date; b=nZMofcKkTDcdE1iGVtmvt8gsdvDb4ySmIaHBQhcCn0HYFOGUrmVa3HNn8WjTUG8x+D/D5F8k21reKYHzKehSxpXHq5VaTxfhprVmmBUEyDTchhHiT1G74K1+KqMPRIHSXW/a9UuOK+p5eP6a7vI6Z9FHmwT4w6FNkHPjC+6ibqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZLZOmHvW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZLZOmHvW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C04A3C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785702633;
	bh=5pkOv6biFZUTCjw19lbWI8Av6uSSjn1zCQM+6idUHCg=;
	h=To:Subject:From:Date:From;
	b=ZLZOmHvWrxfZ+RXrF+J/i2118cAOp336oRF/gl1vKgpPLptZwz066y/mVTrDBkODm
	 Fhee5w03cJ/egPN6zzaAJyL2liNuQNaK5g3eafi0KfVhpnwoiLYAujDS8cpG6ssdVj
	 L1oPbuFQkwzQo1vxwpvJhsxw9ZCZw6Ti4smP/vY2hPHFN5BSo99Y1/dAOiaT4/kbss
	 db7TB4WBrLGytpeqEoAyQQPaKfMIm8Ti8oPOzUPpKdA3bJWswdaez3d4r6wy6MJ2Gj
	 q98cTdlHTNUoSpQ/g/+Z7tu77dGwdco3bgxZ3WRgE+Cxlsh7VEO8OsAYInc1sPZ49e
	 1XdOZAIWvzL/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A899FC55174
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178570263368.25325.14640139941615334707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e9564ff1bd1bd63424997902074f967c00c1fc499ea0cb7da78528a1f87f313
Date: Sun, 02 Aug 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785702633
