Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4974E246BC0
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785074434; cv=none; b=elyzmP2+5vEZFusT2gS5lr1wQwq9G4Qw+IR/oK+b7cM2SSQSfypOMx9P/cR5SfXRRJDz2K44AmlisIXrlCsRPioi0NKuebWjlN9RHIEnM1gl+7rVmPtUJ0TXxzjhOMDU9BoWAgbZHgKwuH3CZzC/m6rki3wawxOYirKirD9oruQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785074434; c=relaxed/simple;
	bh=EunGei6SGi0sNfgscE3xV9gNj186A2EhDoNAOyD8D9M=;
	h=To:Subject:From:Message-Id:Date; b=YcCKG8JxxfnRyHYs89ZX8zzilmp1z6Dp18qC2eScRof7BNLxtrpANQeSZjEuxMCavrRJiyii7Y0YV+CMUR6ODAIx/sHstpfHrboWQFvmFlxxkoCZnRoBZToxhUhQnt2xz5NLR8ZBET46ldD096rXgPqkMQYWQRPzVfXuZu5ueu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NVD+kcXN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NVD+kcXN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E32C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785074433;
	bh=EunGei6SGi0sNfgscE3xV9gNj186A2EhDoNAOyD8D9M=;
	h=To:Subject:From:Date:From;
	b=NVD+kcXNtv8HCtTXVWhvlEQJOh2eEBWOk7bcJBWVdQghqMJKwWuobRxZCTKuW5nwr
	 Reu3VOK8dPKZCd7v6XpNoNK5JG0UleLqTC4aG2KUoyvAEcWh+N+FT2DajrCG4sERn1
	 xoZ5eyS5Ag1MRQO8men2PkKOoar1yJ8X70GRiYjQ5F5SWupn0fok76fjkMhjNNup/P
	 gNXXKYyTeZpgfjZRnZ0toXtxDOeDfINk5RiKJJgF+daCC1zjBvh7FGBMRJWFDaxtdF
	 aVgJui5PjaI9vQ+/83Jrl0WVgjvkgcsXt1Z3p9X412pFhHKXTxn61hfVncX2qYaXOC
	 BL/Aps44zlI1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF0DC531FA
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178507443368.1132.3940995436154036605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9718c6f853b80aac015f53bff1fd61a9af2216169b4ebe56e2e2450377dc5cc5
Date: Sun, 26 Jul 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785074433
