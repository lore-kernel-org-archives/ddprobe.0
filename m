Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B577B645
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 05:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715663543; cv=none; b=PTd4Tf0iok91kQoVYcXOzRsDPiCMoyOMnnWYg32Owf5JK+NDIrMO01nABqZsEt9hfxOiKghvcyFs2N0Fjsf2jqnnHC3fNvfAODHqyWOIgQ+dbxnLnAO8Om2ow6KKUsjuHOuC9GbIVhKyw/i20E1SC315R+Dw4CPMM5EI+VCFuk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715663543; c=relaxed/simple;
	bh=lVUJp2AOz9wanGdwsaJOJomlnksL38lAX8nvanttG8U=;
	h=To:Subject:From:Message-Id:Date; b=NSV5y3PQOXiHN9p0+vhSibyHAuCTD14ONkmCZFulOYKf9X6pjOvip0AkMFGAfZ5L8KLw4IOvRSYlhrgfdKeO/o5So4jIkcsBm727iIlzlhVhwiVJwSJKitnVeMXtJar1AlOCFdvUQTCXC7mxYRswYIqOJb0BtvG5v1Z3x3w02bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sE7cK0OC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sE7cK0OC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6D00C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 05:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715663542;
	bh=lVUJp2AOz9wanGdwsaJOJomlnksL38lAX8nvanttG8U=;
	h=To:Subject:From:Date:From;
	b=sE7cK0OCiP3zPyppf5rlnakMKKSkbme5p6z/Ka1ociqmAIC4LFnIFZjoP42AVY4lI
	 gpmfDYf0Ib7ppcCt9oQy1jzDXauEOvmf7A8S+cdXyeIYw28wvH1peEkwURpWTrRA9Z
	 M2xpZO/PKJIv1NNRtLZhqsHYm3BXCJLUyxEJOJUupUQlz7CIlNWNom2rnz1Uyt/rtw
	 wchGpMUOpaP9ny3bX9tk+V2TcT4R5cUcIM4hiK90upS0jrOBrpmw6nn5tV/Pc0EAXY
	 ww13hSrSpVrjDuZgoLRJ6TlxEPDn0kLuArECfc6FdkVaAn8j6NxDKNl7UCOvg4F8UA
	 B04Yte4sy99uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3A2EC04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 05:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171566354285.26021.14059609828555395201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e39486937eb77789b17248634699b2e033cace3a0b30aa52fe08827c51962c94
Date: Tue, 14 May 2024 05:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715663542
