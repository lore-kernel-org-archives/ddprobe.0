Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39CE43D9540
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786678234; cv=none; b=cFyTDpGQEHkypyzCQHqQCUuOKVuuQM2FDTZcJsYI6EoXjAVPpEuH/8MYAY2FQMNbizatjg/ijlJBAFlk9gkq3Go6N4aeqDvNIcZ3RF2Y834ZsCAqyL4CIU2GRH1mxDF6qSytmfcbqrYlIRISY8gIzF2/VWjG+K94ieKwUuCPEB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786678234; c=relaxed/simple;
	bh=/CoLnoEh9YJntuy97L5WvwXNY6MlocU+wEf5S/lmtng=;
	h=To:Subject:From:Message-Id:Date; b=s4/8ooQOW7vcg+USlGWeB8sYyEb171inzhwUDrharLvtpx4kpNKV0Lbgt7kyyq6LhbUUR9ehqNVaYRRgstsinG0YOCXkX4Z3TwTF3Jbjj7cp9xDQm86qoBCpG86imRclWS9kajkYsgjg3KDafrcp17tdWbcABfVBny08UsAUrR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=apSeLBgD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="apSeLBgD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA91FC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786678233;
	bh=/CoLnoEh9YJntuy97L5WvwXNY6MlocU+wEf5S/lmtng=;
	h=To:Subject:From:Date:From;
	b=apSeLBgDzG03CkbwYIxxoUo5nDqqp0G3rhBfu6FHrmKGzXRuVgQYKMHLABe7DkczF
	 JgoQorD2Sfrj163Sw89LjnGc6yfp4LjRzgZWP638Ji34aWdEw4cIcfED1ZtUb6R7/k
	 oQjk4Kk8x5mu8A87lfiDpj8xwRqVh3UI9Jz172Bsn3RuRhSftV0DVuqDiT+FrHgF6I
	 Aph7jx7cLdNE6oz/c512eBJSHIn5srCXtRW3x8szh5H2ivMYidV2J81mSROqVhzihb
	 0MAzaW+ZeKuj8kSaXWKM8iZUi1XZPpLCEKOhov84ykSrKfl5MRKRRgMAiSQ6z45jDJ
	 uspZAR9GUmZuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8997C5CFCF
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178667823368.30543.1452202751853841628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07cd77a5c1b81302642eea4c740d7f9e78beefc3821f684502c8a0443155f771
Date: Fri, 14 Aug 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786678233
