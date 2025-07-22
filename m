Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 086262E06DC
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753181994; cv=none; b=SaAew0KJQQUO4aUVOnzjtQwOAlpv+5J66zA2aUaH2wEZIcbvOaNlqqbCbePamBClG6FZnCwaya/21BufBDMFeOpDv/nxxHDbbFv8QwnvHpGgd40dgBWIpwSs3wsheT8iT+qE5s6IGlcZOGwz6UHEVGY2ueCOf4Db7r65E9kA3r0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753181994; c=relaxed/simple;
	bh=OprwKiVDnGf7zdNa2c4lqZxPrH9XfThiSpha+ZWLvAI=;
	h=To:Subject:From:Message-Id:Date; b=P2YROCZ1nfdnqQQeD1aJZrBc0YioXMdqNzRb4IYCcwIIYu6uqaJ1edP2XOX++tl/BaQInmk5O1IlURT62scvqQ+H0rB1vZ6iblJB2YIL3YeX/+RexsPMi4gQzjIlmXDvki5PtPbGJ9U77eAslkiEmz54I7UEelV6yx4b1zodGMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D5eEUYU5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D5eEUYU5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13E3C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753181993;
	bh=OprwKiVDnGf7zdNa2c4lqZxPrH9XfThiSpha+ZWLvAI=;
	h=To:Subject:From:Date:From;
	b=D5eEUYU5F+5Q0w6qgLoBgTvQ0B4k+m7t/tchgSssdK5yUGBktdyQ+SlpCSNub3FhK
	 HrEUEnqundiq/qpCHLomksttyv/ai3vWe6f+GytXKz8TNc08GKTGDIoO1O+U9nKgDV
	 6tEPfazbX7nbo6PPekFi67dgMNQuJGCxP6i8hsiVsaT/pKlobYTnWillrhp2gWS3kC
	 z44Ki/oDZazeeCome2oPBr7E0H35Rn/enLDcxMDmUPE5olMUsnWxOdhuQsm8Eb6ZyB
	 Jqyu774AS9oHI2Hwk8Ena+U/C3amr8zA1KLwoHBMmE7ooU50AHBwDFBHqKMmumlG4f
	 h+8YbuIwcpBPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F602C83F25
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175318199357.14854.4866989983224204419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab9fb40e7a6a19246e6135a04b549cbd5e63ac82bfba2e6faefa84db120ca81a
Date: Tue, 22 Jul 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753181993
