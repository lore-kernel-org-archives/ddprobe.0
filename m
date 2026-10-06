Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494843BB689
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791283834; cv=none; b=EZPPhP2dE6V2lOjUI3RPmGgByczgC4mbhMZ3ZjHH3/WdlMeRdlS0SSpURcm3kGVehaAm5O2Wj1nsemlKIgwfc2WvPvm77wNs2MZYAl5+9lmsuJm/Ekt2RQV8sCffmXsV1gi8v9U69HxU8RC9X3lxdiKI4P/FIiwgRKmei2X6PIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791283834; c=relaxed/simple;
	bh=HljB2XH/qbWMjB8aSLdUikjPouIkMYUvkITteMxzzHM=;
	h=To:Subject:From:Message-Id:Date; b=Zdl9D6wDQ+KNIh0Nqy/VnqY1nMSPvl5NiXNaePa9YR/7ZL3g0GOdKIaXt0G+kV1tPFYQ6mn/sxySxyNqjGnxIfhWmpCaAE2fNIzDJfvy/1jYk0deN3It+RXFz1DBbY1pg+KxImM5KRpJbRudWTEKbvbRPcibnbHJHQveB0wCPJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ApFHS26B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ApFHS26B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFDB2C4AF0B
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791283833;
	bh=HljB2XH/qbWMjB8aSLdUikjPouIkMYUvkITteMxzzHM=;
	h=To:Subject:From:Date:From;
	b=ApFHS26Bj7vjP1LzFXiyazWrY2r6h7m2JUplARnjHZ4HU9ZCNyw1GOXKOrnOX6yPn
	 3ktAOGqdp5OV83FfaqwQK5r4EIvdx7GPBQ2aROT4ngB3OjCCHVxsnTxleFZNm2N71R
	 nkscDZtMKJNjkLjb5kT561cnvVxOPMJqxoUGxMLP0vwQmIkL3T+EBHq1lJgrmiEmCK
	 m1kWItac1UonZMrH+b6unRIHtdoC1zYYjX9dyTw++vmlxlSdEkIE6hvku4iiPPgrNs
	 +az57D2Ao31VF/iOSsy4QJ9JJVdmys40pN3eZ6iGW2ISzSboZ/SsOtyytfBOc6hQCQ
	 UoIKPSgKVaDAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACCDCA5FFC
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179128383369.28153.5425538253779574805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5251baa794843e06a24f8b08a26657e03b3e8cbae9894183e8c7b7de1eef216f
Date: Tue, 06 Oct 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791283833
