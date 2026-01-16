Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D17B34D385
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768589634; cv=none; b=hgGIrcCcb8SM+eqpuph5hbg9zDDE+5zwMrYPwB8BXBn6TddQQ3navBbSeDfhGDEK3C9iLcNRP5fP9fAudwmQ8bFo8CN1M492SyEDzqGokZbuA1aU+gU+iG0oD5SLStoHwQLzCBHyPW9SLOTpWyFbZW8PobVYOsmP9VOMyZP2jec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768589634; c=relaxed/simple;
	bh=J8kDTU1yPL61BTz+J15+J2BxGdhtnOsGJ/mun9h5wyg=;
	h=To:Subject:From:Message-Id:Date; b=X6KWA9v3fttK5qVkCEGhmLJpzVIxvnJE62c2a+e8H7eGscdWgaXCOtxiEJm+qzN2/2FN7PbChasZvoy7QmWNZNwkNL/puK+uixzGxuLNXEObiCBQgKBUfPmzt2r5ZM/crPvseLEdA4mON2JwWJbXcT9f1QuE7dHzrlSWt4uD8es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QhK688/7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QhK688/7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C7FC116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768589633;
	bh=J8kDTU1yPL61BTz+J15+J2BxGdhtnOsGJ/mun9h5wyg=;
	h=To:Subject:From:Date:From;
	b=QhK688/7S5sVg8NpBnrGV9aXQOxp7+Eb7Z4Cefa4+118T+fd+2X4V6aR289GaiNSr
	 iQkcv9Zbkei65wnWkEmYixujP4JyiP7e5MGl06LoeVq6ZAHxpBwPiaVGXlbvj57VBM
	 fMkdBcIpblfRIlfBjBCsTEpvadoVS55Go62MmLWQHCVECa7W/KRmrzFCdwAI75B9q0
	 TKiHEAF6QbeUQ1Ny/8+hOAIe6Y1y0o2LYss7yb9DBAKzpd4gtPYzR/Z/e2jM2WMiQZ
	 mjGnxdz0SqgM2RvjvYmJtdWBLxjZxRMO1V5+vhC6toImGl6YDGjUDiX8Wm2d154DXb
	 413v6BSill2PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9072CC982F0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176858963358.21999.3688628124300620448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea77bf2c0531965c934fecd25b3bcbe34e9be29f65ad0703e51b347a2b12b98f
Date: Fri, 16 Jan 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768589633
