Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8A929A0
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732948554; cv=none; b=Y7/mJkyb11kzKFkdmFuJk7SJTRPnGkenXBfG/F20OLqEn7PXTYhpiWV0KStg6OLAKPfkkjFkOVVodNRWYbNViWhmkjSgZBfnUefVcmU3mL9oF7KcYeTEg3EvvoTWYzHP+1MYMcGhfahZ5YV6fvVgZ/kTZLWB05lY/OFsnzQhHQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732948554; c=relaxed/simple;
	bh=ATGCKHBvwB+/q6C7H2KkXJbicYeVsYbUaURer/5nrSU=;
	h=To:Subject:From:Message-Id:Date; b=FfMM8P82ey+yc6xagGUqC0WWsmUHHORL2FJjwS8eAmhTioI6gREuGVNcLh7GiRR3C+Nmd22daRsh4H/i4cvx21NGDEetAi8n2d5tlPhMX2ieix5KM2YXSM4M3uiaOFoUMqgciJSONfzf1sXlhdUUtHCWdievi8TLiJOp5C3rOq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNMSSrBe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNMSSrBe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB03C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732948553;
	bh=ATGCKHBvwB+/q6C7H2KkXJbicYeVsYbUaURer/5nrSU=;
	h=To:Subject:From:Date:From;
	b=kNMSSrBeZ+4x86wKYxGZhPxADl5X1fqEyMXPJUvaoxE3+/8X7S0DrOCJ4VDlxXRnc
	 NmOgakG87XEWu+UPSDXY0gdfw46HSb2O3dUGfmJYiTpdyHfSbay0ig7XqbiwvcWqnW
	 xkLSa/e3ipIS9ivU49fuvvrN7D9zeTfB3i8Zw3lhVSgkQ3jqa4qkJP7X1GzBdBvfCg
	 GMGyND9qfEf5gwdkoq0IOHM2NM7d4YOaLYz/ShdzFhcIl454V08q2Kgtb2SaMLFz9m
	 EzcKmzIUidG/gq4TpuW4aAPhG5AkZzHd243+Wi2wsPh7JStSz8661oJzEXj2Kc0aTg
	 wxYA8FCqyLhxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DCA6D735F3
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173294855363.15886.2356063598642429151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77151cdea961afeec320c213593dfe82244e4a78add0bdf0b6f22f8fb7adb94a
Date: Sat, 30 Nov 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732948553
