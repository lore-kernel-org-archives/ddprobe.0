Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E85C3939B4
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 07:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781421994; cv=none; b=ByMFFjT16OVPPog1nvSOPokRxjBDtw4H7L9wxcXRxvizUUemAH5TvX78uYk2bwm7/MF3DxUEcffk55XSw4gq1YSz5rka43Of4RyUia/2nNKcIrT005UF9DfpnLy+gIp+gMjCk19uaLT2jPkvUURiVCtRaVY+YRcaiRZEgyhPkBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781421994; c=relaxed/simple;
	bh=ROCR+0KtzqGjXNT67PwapekP1XKMaO5P1rSLZHysCWc=;
	h=To:Subject:From:Message-Id:Date; b=RWwfZuEih9novfYyudRJnXxz3u5yWvwcxvujle4fU8UVRyr0xll9mVO6/CStmceyW0tcLDrD660iQ6hhqAOaYXf0grp2DX3VrDbMoiVLSLjB1dLQkiaxtP9GDilieTHlrWI5BzT89Nffw76TAEwCj/8z7VglbjGFxLGyvTmJKLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dnr1XdOe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dnr1XdOe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D227CC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 07:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781421993;
	bh=ROCR+0KtzqGjXNT67PwapekP1XKMaO5P1rSLZHysCWc=;
	h=To:Subject:From:Date:From;
	b=dnr1XdOe3RZmuiwtsNTJMQAsii51CnfScoRi2hnsy0Pd3rcf0Tj+I0TpJoaZc4kWO
	 1Gc9D8KGDypz8FHPRmaApQl2SjO2LGqgjehwAuI/EriXV4WE7rcJmT+fFfaK39yKOz
	 9xEw9RMxjW1HMU/xFn1C5i81OzMMcR7Bz1YPDnx8hwOlCsAeJ5mOPsMMm4YJbN6ef5
	 QLzNNWj/lOvXQ1V5VxS6enF8b7mZ5C8f8XFE8oLsKOXa4/fLZXyJ3JW9aG9hGYK9+N
	 2/2U9QVNbUx43pw8httMFn3xvDn+P59S+GmZzaImY9ut/acOHguPikbIb0WfPM9972
	 J8WLt5t62v9ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B44C8CD98D2
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 07:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178142199372.8309.17813053551462349790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eb33dbfb9ff93d747e4d57137643c78da33f873f7c9de7a1bbb48a1122bc5c6
Date: Sun, 14 Jun 2026 07:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781421993
