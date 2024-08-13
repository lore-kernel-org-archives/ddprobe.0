Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7E519DF42
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723557954; cv=none; b=Qi3Cy/7PKhrrOPqDvJEk1fLzVyJ/I6P7zACGh9zOmMztNwSmwpBgvLCUaXXYA/aPDQz6zScPtarbNqGXnGqqogOBZ37oGjjEbZmjPk5FvUjuRQ59LBtwMv+CnYL+RqtZC3IBoQLa0hltDPkfxBmkQlYuw9SnDlIh0/P3YNOpo+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723557954; c=relaxed/simple;
	bh=e62ujIRXBqG/SCSgAbqWwPYutIetp+C1cvN7HT5tOX4=;
	h=To:Subject:From:Message-Id:Date; b=cLBDNOXWn6XfSpdWlRImY9kPELgxVVedTPaX3/ZGnwztsg8X3KWOq0EMlrzxYPr5QY26vH2F/JcjoWTyiPjiZRwC5/DI2g5I7tNXUCSP0u35h/2MUf5U+MHvA8nZgEHb0Nwmj42M8TaTy+8KdUW/BpIBj6Ld5ayJv63SbVh+X6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6RbPxft; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6RbPxft"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A455FC4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723557953;
	bh=e62ujIRXBqG/SCSgAbqWwPYutIetp+C1cvN7HT5tOX4=;
	h=To:Subject:From:Date:From;
	b=U6RbPxftBAyb43fKem+kwNGAkd0vgPpKOZEyIFRwcFfJebrVSXdwSFsrmdXj/Em1n
	 XxmjlDaK+miofOUXM6W3r4hXUhQl+ya6ofKSzYMFgfrO6WRC5wkqYFZ9O9T8IWEtaS
	 HZhVvZ1S/nW6h1c4iPJo9N1eoNXZ9I0agKy4Ov2dN34nYMWPgb98fiYL2ZD0ggS4fF
	 c0x2oqIm39l0JqDcpoqXnQVXCbz49PiwoRPxDS8c3rRz2ET+xganbvzlJYXDupik9W
	 uyKDIZmJEh6o1+M0cP/fy1j3nBG2gXlKsO9TNtszJcH2v9iRif9rmHAqSORujPtFTP
	 dQmK8IaM14g3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A0EC52D7B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172355795358.31051.11279745892707141642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 371a44c2eb5a009717b97c3b7320ae0b66ea16b00d08fea282279c84305a2d10
Date: Tue, 13 Aug 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723557953
