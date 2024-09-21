Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9163C38
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726891554; cv=none; b=QvjzbB9tDk+2/N2PvIDYiauum9nZzwnrECnLNLlhp5fZoY5bS5f85nTbfotRJtd99GthLml80BbSNyYGgwx+A3BQtuXhLewoqIoUCfx9SZXK2owqenKqeAMwU5Acv++c9czV1MpKg9ul5IVV0nfu9hZxGLwc8WY38Y8sjgBcqoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726891554; c=relaxed/simple;
	bh=aF+UmSHligLoFLDN/vDkZuVG5MthhG4ANCLjZZhmxkY=;
	h=To:Subject:From:Message-Id:Date; b=iczLJHD0iosDYg5geZiv6pfQ0sYU33iGIMpPpqqNp5Ud2y9cwnZwD1cVU9kSOVhOtdplBD1+miczqdnDQlcakSRp0HnFDZdpB4t5xHz7FaI6tnYRIRD44fPL4HmyKeHH7CIGX1+KP7SvpwScqaqIKS87WRc3BRdcjeYDhkrbwmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7wVtgXb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7wVtgXb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3BA8C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726891553;
	bh=aF+UmSHligLoFLDN/vDkZuVG5MthhG4ANCLjZZhmxkY=;
	h=To:Subject:From:Date:From;
	b=F7wVtgXbjgI5sWjMxhu2cVldpVuQm3PZI6qXCmIq3a8zcj9vYTIHeJ3Q2fYNK8opI
	 jO+NSl17gFmhr0Bd0z8wKhTQe/sZZI6tSRllk1u6D/Zz7jIe0J1T+hJotUijHqJ+Rl
	 FnbzHlhliAriFtccJqkZB+9szAdWMaa1foYrqAj9F0ciIve4lYZm3/Nxd5eZwDiE/a
	 2uMBRI5NUL/ViMMSxVY4Eddb4+9ZfPqaIIjWEJFFL+EWs8SElkqe9aJqIgVIowCPNj
	 WDmpZ/uFw/IjSZ7oMCOwEqDDVCIa5E5TwjZ9p/KzSYh1jMmpdilvxOpse5eI1NbIhW
	 M4Knu9gSRPiWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A09B1CF9C68
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172689155361.14229.10828902993736782686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24e670fda8c67887a54ebdea4973f12e8d64b149e116ec24ea68d74bb0e111e5
Date: Sat, 21 Sep 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726891553
