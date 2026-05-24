Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333DB23C368
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 01:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779587554; cv=none; b=aoaEv7FjB3rNEW300dRetXxLAasfYquTIpXNBHMX87gpahcCvOYinLw//y4sjpIX3dn4hkSukEkv9tWU3d798tsmgGJT3YWj/Odc5mgPsyhyvXkUgScJDHXNRY4Df6lxnHx1sDdkaCI+wY18mDCDS/ssSyK9XHtMuuIqiUQ8owI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779587554; c=relaxed/simple;
	bh=sG2SRmpHhSgcQOvgqkIzz41V5GGetCLxOxYF812JA/w=;
	h=To:Subject:From:Message-Id:Date; b=jfGi1FKjEgG4yYNMoESXuWZiNvKjH9qLhJqZ4SpJTVotkA3MJ7py+GcLp8L0THx9rtAmPHw28nRKFcxsD9mu90DfErnLU1Dm4zKCn0JYmRXx4Rop/DIEOvI+e+0MnsaoJaUTFA/AoohBcYLuCaqv2VgWBF4//RuNTUhjOnKtzbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G3DT1MOp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G3DT1MOp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C08F6C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 01:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779587553;
	bh=sG2SRmpHhSgcQOvgqkIzz41V5GGetCLxOxYF812JA/w=;
	h=To:Subject:From:Date:From;
	b=G3DT1MOpk44LUCnPUwpJLJMr3AgPIEXFfF2+HUW/xaWizEw91lKbTszW3uQLcoAQ/
	 BSFIsaIw0DhkxLiSWT3QsULkJIjtovG8WuMa2tf/sdrQtwxA0d9wGL7oUbh6FRoeW8
	 PwFQVbbFeMslI6EEbp7vJm7vY6AAUXj3zf7rjU0YV/D8emdtK0ab+N/KmRwqMvuxut
	 BOKNyeKdoL1tz05iAaBOlvmmrj78pkebISQAbtmuUhReoBvOvemkPqBOcfq+wwzrk9
	 8LXhXxt3xLO6HA7RT+6kGulX2Q0sbnsatcXswHNPaUC518NeFV7S3AeKfq4/lXnH6a
	 SR1afA5bzDXkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A887FCD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 01:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177958755368.998.4934645955360969980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f3f5a2e5751c2043c141534bbc3a69fb2a49318833efa9db6725d88e55d5e73
Date: Sun, 24 May 2026 01:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779587553
