Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E213264FD
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792268434; cv=none; b=PZ1r2SKtFjCOopPhNI9A7OEaOrnycGe78G5i3ip0BA644qRM8aCU3JYOKge+yQEI4u2+z6tDr4M+6V8oESnt3I4/T9ilLgA17E4T+9M47gGGKoQrT1oyn/8ux3A+Tw1k7THa33dkSmRgI3J1hJ2JljPpXTf/F5INmQTiE9yAlFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792268434; c=relaxed/simple;
	bh=xdlM/BCkXJeebKc7aYl6D7WLm40vDGCbAXoeUHmEjPo=;
	h=To:Subject:From:Message-Id:Date; b=bef4CQpjpZvQIVV0DV+9AQBCubjaRfgrpJvv3PPZu54G0yUhiAYAv7yVbGratUZfVqN5rIPIVkcQjfaflpD81h+0EU+bnhIoC27jvKuJD9ekBjy7PCEqrN5j5EnM0e2SRDRsJ6fyxerkUaksnfVmqTa2nQP0sJwmXMzxRoKrVBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVXx1Pjx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVXx1Pjx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E235CC2BCF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792268433;
	bh=xdlM/BCkXJeebKc7aYl6D7WLm40vDGCbAXoeUHmEjPo=;
	h=To:Subject:From:Date:From;
	b=aVXx1Pjx3AhVA1V5kd/ZH77ZHkn3AAE19ba1j2m2AR5c95O5MvGDJRw6VFCuQM7kM
	 5VHqo32yzFOg1oiC/Qwi2jV1fkzV16K5pNoCQShZh8ZtsAiTZ3iIT2StwvmLzeGJ/G
	 IQls4+bJMBaW0dfyE0Y90wTFuLrrjPBTZ0SNwHPNG0CEH8kUlVFTRsbTwr3dia9pM9
	 GqvHVPeF7hAdWJeHIXEol/1koetOVHUtVzw7pv+ErKk8+H9/UoPS+wm0IOI1204Nii
	 AgNYK/aIFe53Zy6T4Ml2WuJ8Ew1U2kkVy5tMS0rASguv61MsUuyYFopmG4DEtO7gHv
	 QychrwZnCRkhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7BC4CCF2C9
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179226843371.640.18149013424810498118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb6ff19a8565db92d68d9aaf60196605cc6ef84e712bca0ef14a88e75af6b8f0
Date: Sat, 17 Oct 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792268433
