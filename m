Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266EA376
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746326394; cv=none; b=EhKF65p4wL7AVc6Lst7TtqdxP3K36Y1u1NkJ2sbtGfv6mRIUufdpDaVQPC5cP6mXOiTwLtUX4lHHlRTOtk/RicAEnIHo47IOVlAe7cM0hCTvg6KTut9b3pGkdSBznqrDlZCefe9B+Fkc9ryOIyaR4nByODIP1Ky60Oox2ZSIYQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746326394; c=relaxed/simple;
	bh=/izz1CXwDxYddMKyAYxEQqiuKOCtB63o37pl07kty3o=;
	h=To:Subject:From:Message-Id:Date; b=MTJArqwfSfGMSKj+4/NxOxfgEbEriXp5A60cE2DiQD20PWq/l3IobSxGJ6HlgzWGPvWETHVx8VeWSggWpXUK5fU/Xmlkrb7Ikyz6FAgiOK0byehmGudVteBL7vsKJDFAKn5dPcGHpiZEsXr+oYtNuB/tjuDk8kcXaTzH7V8n0yU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SodoenE3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SodoenE3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B88C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746326393;
	bh=/izz1CXwDxYddMKyAYxEQqiuKOCtB63o37pl07kty3o=;
	h=To:Subject:From:Date:From;
	b=SodoenE33T7Ydc10fDpxbY6HjaqxCPur8NCc2Gj/jf67aJS+1/8EV9Ao0Orl3O358
	 9RHctWmhdF/oeLc1pGnZdyVBCoK+LOUfm/tEk7WkMcW1EeSa/a7XcDmeD/69x5HyVD
	 fFW/V1W94502HYvs9ekaZmakupAgONGKt5UQkfEnewGJZiosa3z8Quwnrpni7kNcVy
	 XmdQYpKFfaYyoUafhqEvtNr948Suv/yihVlSXiHJRTFDWkASHWMoUWBXEMS9mu21V6
	 CpeEGFU75tZUUIZFEUGEDXa1gz6gPgswBBVOHePEqLQ9aINIPanKiEaaNnm1TVrjIt
	 R0h8D2JOB67iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E61C369C2
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174632639357.30951.16643587245163147849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87b4e655f88841b1636973895c031fb350234882222cd25c45ea5b606cca17e0
Date: Sun, 04 May 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746326393
