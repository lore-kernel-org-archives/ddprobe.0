Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F8E78F4F
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754186394; cv=none; b=FIHEHE3AmYTAg9lisL9mIWjWlmbScml5be5NFquaVQWo6054ICO8e6ircHiTqSWCYn1kOS3VmWuxPFr9o7gG2gQdE0IrRGE/d0WmrHYF6HJuboHucWMPqMk8Eysbilqx9w73I4XPzgeyBxQjleeqqRnV4GE2sYO+mvNiKoyUg4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754186394; c=relaxed/simple;
	bh=taHCadcr0JP7kJelpf7jvp8O2mrGyPebdV9VhfaLzuQ=;
	h=To:Subject:From:Message-Id:Date; b=K2DiOBVB2ZqVobdOgm4vrIOVM5XSWhaklMuI8xCE1kbC0rNV9/ZHBucSJaBDzxCOgIV5YeaIewMncLPCAxo6gID0Yu7iFSQU4fEbbTMW0gkV9uxrPk1/3cbjwogMimJpywsiNqis1L141uq/jo6iBd3D3pX1JW6VF8nx+4G64Fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FPVpaLE+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FPVpaLE+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D58C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754186393;
	bh=taHCadcr0JP7kJelpf7jvp8O2mrGyPebdV9VhfaLzuQ=;
	h=To:Subject:From:Date:From;
	b=FPVpaLE+If3W+y1kMfx6ziEMimmt70+8/FHefD9NI0JFmZv+9kSFjwA0oGyjRji7i
	 +CniXKtqiw8w026wvPCHGqVjD7Hk2vKqbTUwGui4kFL8AD0A6EAGlJAymiquEPBamA
	 zL7i3QSpCbx3ZN5+DWod32TziGS4bWAolO1Ynh4pjsLznwHBK2TXVUJsTJnqUfNUVB
	 vGQTzdB0+2LesniwVwYObP+/l6J+eCANQuVkKXbX7BKXtd5dPJkprpJUmkgyht3TNA
	 QRj94XJWkTYdp1GFkbSFkOTsbrvU5Nv8ZEkZ11TKzXi1xyNHiDXSB/9eGe3sQR7nX8
	 ZuJoLtW/LA9cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9400DC87FD3
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175418639357.13484.9536101633084451307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2d3bb259a8eecc9ece183df55b67bdb0b5da872a17a67dd7afbe9bdce3c2a23
Date: Sun, 03 Aug 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754186393
