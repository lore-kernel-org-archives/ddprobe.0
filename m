Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FBD72264BD
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763205594; cv=none; b=pH+W0deLHZfeRw0jWFm5IsffFDES0r+W7YYu8WG9/OVYVhLyK1FRhklu3YnovdaLscLkuetM6Axol/a+W62wORt/C5jqQXd4NuKb05Lhv5lbH3nhGA3MZgtMyL5ZW43kTvp02VTEEkwO7PaWnlFHv6bhzC9v+QQUYicDk7UH3rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763205594; c=relaxed/simple;
	bh=NT08UJlyU3V1fNkBWSUIzfC4IXIjdPS6kqx3aNjZYKA=;
	h=To:Subject:From:Message-Id:Date; b=mUXLvEggXBYwIO7chZDaO+rBlLQ96ycA1AuoXq0PQnSN0XNmLOBn67MbUv9GfC9htqelhw/5r/o2pdXrvcfJjik1OFvVlxt/FBsGXThPXNX2aTLfn6o2Ph//TjnKlgqwOgEMjmjjhtOQ5wOgXyk8dYz+gN/4iOjM82EP1heMHwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lVWxTFF4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lVWxTFF4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE9CC19423
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763205593;
	bh=NT08UJlyU3V1fNkBWSUIzfC4IXIjdPS6kqx3aNjZYKA=;
	h=To:Subject:From:Date:From;
	b=lVWxTFF4yQFeGwdJkXCDksVKcrBjzhngPgENyrf/zoz4/RWr28kRQaIIA3IKsRqJ6
	 VwVGWQ4dMy4PZkNriXSirrM8WceZnwXjMhUa1HrqLXUAJUg/mC60JOJofzmrgZ5+Fz
	 NnyLMCFLuydgp1FeXVH2kxDSWmwBp5hUYRXP+zTtZRvaoHW54rof82DSw2N+XeWZa4
	 3DDq+onB7UTFB3Ivj5r12G+Fa249bAbQGqDGBCSOsBzDKMzMPg/jnHK9Gyu28SjbVh
	 M6NmdhyMjjcsYwd817abFIr3Qlf0Tbkgk4VTP7dU57cmQcoR4xXMlt+OvjauFy/GMo
	 RaI0Clai0YWDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91720CEB2CC
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176320559358.12130.8921012940920338516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3560e4593c645a35fc694df5f4bb289848e3762bb971e919c731ad5c4e647285
Date: Sat, 15 Nov 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763205593
