Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E6820B21F
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744076394; cv=none; b=bRj12du4PAlOaSg9jZcxh5fWLdpgwLYYJwSluFmDhD7Wvw2HWflGhMxu8GRpWfqY87U+JVgIjLyzIh3ZhRaVBerse9g5WymAos0EvT62Q0BI0zGfbYjFXvs55F7IIuYDNJHhszaMvpRcf6vSz+8p7BRfeX4zz5AALgzcUAbNNoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744076394; c=relaxed/simple;
	bh=+mbYU4gvABwHShTjaT03bb9AEWczkFO1zeBeov5NZWM=;
	h=To:Subject:From:Message-Id:Date; b=YP0yppl/Xh/1ejRLo5xL/bbtnmiQ+ylo07posS6tojvANu0EMnXhK1XnEkgRQK3HqRPkZS0mXG1gZosLqpWyfbxh+hKoR5837i7m6wdj1xQEk4Rv6SBgCKgWUFx/vXZ2u7553hG/h+ghRwBmVI4z6DXoFfu19Iwv6Gwv+swUZ/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AHP9us1r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AHP9us1r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9724C4CEDD
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744076393;
	bh=+mbYU4gvABwHShTjaT03bb9AEWczkFO1zeBeov5NZWM=;
	h=To:Subject:From:Date:From;
	b=AHP9us1rRXsdJ3dnBgBcSlzRDs09fEHveKXoIfGLuuQ8oMaXjuD1wijtmB7R4tI+6
	 NbArSw8EOpxyS09/Uyn8/GDNwSK6llSOuZLkyPe0yL1t3QP43plF1d4UP6DV7FuMS/
	 xBmzA4QTZkNmzdDHqzKyUPaY3BdfxqS2fXHq+3pVS4/1RW84QvVrJWRxIbCLMmSH8f
	 PUzKaybnRrlgT5Rbe2ZgdxD+ds5whCJYiyJM4ASiTIGr8OP0UGFcSJ6fl4WPeemJQQ
	 of7oWhUclXQo0Oqwec5fgZ9iWw8zvbPAv+X6vZxnBFOvrY2ONJoepDDIF5bNeeLE/n
	 Wog45wHgq6nGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF82C36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174407639359.17310.13367524233626415921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19fc952cb29d1a1b746f00ddfc4603a8a0b1693748790d11a1ba82e5c541e22b
Date: Tue, 08 Apr 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744076393
