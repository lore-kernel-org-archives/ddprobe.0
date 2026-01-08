Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FBD817C77
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767832434; cv=none; b=bxTtKK29Syb9cbeZt4jNDLlUjPWCmm3rWx4qOdfQ1k87UnIS74C4oFC6UruWv4tHROqrPze4EU/7EYGgEoxEeK302axn2HVwjc2aw7MpM5mn8Nd8INe0UBASTrXwXcobIauMJ0eEotaOCTuZyK/oXTp/Q376UMuS9lVkNESlWew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767832434; c=relaxed/simple;
	bh=89ZJKl8pOpuyQqFsYt6XaiHagr3YYruoTZUEOfVFnvo=;
	h=To:Subject:From:Message-Id:Date; b=qUVAf8tbDyJ+wgCNJoD0Gwn9gLDxCDLf7nfl/ZXyK1eSMhbT99fcXn0bfgmkIo4Yrn6MVD+87hUdfz9xC8nVE/m6ORaER7iTOTB5VQybZqYmUQXdntVubuottrmhVHPc325S+470XENikpYh65AnhAXHh6I/x1K53HdpvBQ7GRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IcPpEpx3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IcPpEpx3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A532BC4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767832433;
	bh=89ZJKl8pOpuyQqFsYt6XaiHagr3YYruoTZUEOfVFnvo=;
	h=To:Subject:From:Date:From;
	b=IcPpEpx3elw6WDLlSePicb85xcybjbyyhXJluiCym+eubGMjnVjcLs+DX8zaDea0S
	 qna1bUhzjm5la/YC315sFkI8HxgrOizzMVHn16T9/u79opMkIb/0z8eYr+W0IOQUoy
	 9o1GTEMsN56mzDjo5oEoqRIcNNqbYdUnMuuIVkGRkuLuwnb0FjT5vgyCd5QhwYr/2d
	 Gk6D4MsE4oHReH58mZ6MWFhu22Xrn3BGOiwO4m66ihYaJE+LxOiS5RpVavX1Y37brM
	 4wXyRWzLwyO89ER6n9szNNO7zeVbJeHcbAoIevgRNRb1KQFjF0iVRsHUHOgNi31yXa
	 njloe4tu7P0bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946A3CD585E
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176783243357.14440.13925073352992335551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 063cd5e2db7386503c28d777e68a7c77599a5e0935e940040f3e9828bf0541d7
Date: Thu, 08 Jan 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767832433
