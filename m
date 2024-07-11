Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B933383
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 01:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720661243; cv=none; b=UqAMC0KZWfpACQ5d77IcaM1itsXVjFoci/+974itCJZo6bgVjTtiuYbgo62d5Rab0aa4v9ykQ277xkHSDticuC2xwhpbEpNoqohnRSY6sKKyVFwEuQU45Qw5vxgdrw58cEYdT2BsF/i9ajeLfwHwZx/CS+2IvIIkTtkFQVv/24g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720661243; c=relaxed/simple;
	bh=1gPhd2jDsuPediBbv8akQfU358q2fLfn2EVh1AmGvw0=;
	h=To:Subject:From:Message-Id:Date; b=tOmmX5d/1g3Zkty9cCTsvdM7joEqU3TzsczeZ4nrFDYsw29nBrA3q+fi0s4tvKKCr2DHA4SMtQSJ/s4hGrxfAFB/X8NvfKP21Vm5s4eeoAxR1kYOS6nlV/Arw4Jkgq5aHXW4kPqzLsisCOoLQL5FKDGxYorcz+M+3/H7UwN7Wac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MHVT3YPS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MHVT3YPS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED8A5C32781
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 01:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720661243;
	bh=1gPhd2jDsuPediBbv8akQfU358q2fLfn2EVh1AmGvw0=;
	h=To:Subject:From:Date:From;
	b=MHVT3YPSIOC/eBF8wRT7X3bRlAB6GlolMfpem5nDRd9rAfxGxUpHsTXh+iWF4pr0l
	 AIas7RRD4Wx0iQNmspZeA9O1eicLf/71T4G9kbgl5wn9earqoc6Ai1eZHEQ2Q4n0ym
	 e+xWnBEW5Vu+wfUSakUDJcePaIkgYJJ8X/g3Tta7krTdcrZ1KLv7ZKPDUW3USAzyy5
	 R59awQkESkfEnr6lkmGtSAB8rfkVHaExqyn6zOn7C8Pnpnwd4ei3rW1A5KQiQE5+8B
	 c9+phgmaEzkGyRLuxTqjukf39dfzS5w0A2mejP/w5mG85fEeKy0r3zs+JCjhp88VW/
	 1wOEvofcrSvWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4EC4C3DA42
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 01:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172066124283.7017.10222826751778694901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6373fe16ed9d8a03c496adaccf2d9d217081b510e4219ea85e9754841a393a27
Date: Thu, 11 Jul 2024 01:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720661242
