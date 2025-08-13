Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F88228F4
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755097794; cv=none; b=eqwLJvnX9lIKi4FsNajiYacsMJBozlUXyg9phl1nmANSrTi691c4Vdl7+MBcoNBvDOD7aBmI7f3zkK7BBA8SmBEv6Z1vWppp/OvwhjFqoVfaXxye5QWHm3o9AUe7MV6XM83+8PbpJsAIXw6nSPQQo8+DI0Boc1jQtUgm4EvVC6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755097794; c=relaxed/simple;
	bh=Zzm565kRM1C5F6hLacNLMPEa1TXJNxPZD61LQIG/aU8=;
	h=To:Subject:From:Message-Id:Date; b=ovy/55z/fryOG7V9Sn9FsCMwEvcHepnTRl2qH7vgaAx37kEhD1Vc1IkzVKApscAlbGnx29+nkH7mWFhNp14z5ok0D0EynU/u62Ln45kvaRfWL6hUNiPEkRYDEbZJcLaoASQpEJXfcHEtSwzCx7QuHIO51CWnsyLRsYEyRbLWeFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Js8ieQv3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Js8ieQv3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E1BC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755097793;
	bh=Zzm565kRM1C5F6hLacNLMPEa1TXJNxPZD61LQIG/aU8=;
	h=To:Subject:From:Date:From;
	b=Js8ieQv3fy2RoPL24i48mo5TAs7supmRvymc5/TD8KzWXpc1iZoaSxUsDK+b5tcmu
	 eMNPu78E5dH5TTx15y6sz0FJASJJ9hDOTReot2POz7c7Vv2cmeQdpRGxOhTTKtyWIN
	 gaXoovzTsH9HW1KJaiC7wrSxl9smxbdumU5KjOb2oD45N0v4Ahxbg46x6yzyt3Smml
	 S/+Exp2gxLiXHp2brxzeRODurP9+GGlCGAE0AsoZa8bBk0KPPF9PI1ZMUy3i5HSJBm
	 ALJdg7UgwitBi8+Z283YBVBPBNMJdoiQhi1zEzZMm4aZRgSE1e6pPuAY6vxBcLOHta
	 Jlll/+SeBD8vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F562CA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175509779357.2124.11796334749331008134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2b3532bffc2b5c36ffea155592695cdd38624b6b4d2a00d705b3da676dc16c0
Date: Wed, 13 Aug 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755097793
