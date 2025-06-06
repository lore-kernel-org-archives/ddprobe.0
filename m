Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3205342AA9
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749193194; cv=none; b=eY14RZbdUVt+WsVkn0VRMJiRdK4Iw0S/mq0UpbaMU+SowuSruVcC1Wa8cim4Lm833RuCt3pfTUxldSoKWeHi4qONurhy6vFGqnAcZ6RpaO1nLiFio5HQlRtQdkY2sNbxTpHuLFLyRMdfky2kj1XW/OJAJs0SlVNg3y7EcFpi+54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749193194; c=relaxed/simple;
	bh=zp7fXuP30q7VTsKzqp5+AmYG0XnKg/AJ+JkbpH7Vuog=;
	h=To:Subject:From:Message-Id:Date; b=jSwiIrNFTWioHQIvqqeZfWdsJPAHEZJ7XBGzB15Zw961EpqLKcjZmDrr5HfH1gC6Kp+taGvZ880stDrQkqdAYmiQcQRfPENZqREZ8jAR8oKAfZI/bZtFpkzuMqSSRXkMq5iToh5J124ObO0zplZeoTPMrtiiG3SR2KAuJWB1WZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eyMc/y6a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eyMc/y6a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3030C4CEEF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749193193;
	bh=zp7fXuP30q7VTsKzqp5+AmYG0XnKg/AJ+JkbpH7Vuog=;
	h=To:Subject:From:Date:From;
	b=eyMc/y6a1gb8BkyaZ8cpSWhazXsquZ76HjstIt374W3/arF4ayyC0M5cugop7OqQt
	 zhjrAwTGGNYGYSM1qJ++GKfF4+8YJhr0ybO3Y9JAq0L08v1YGQqh/4yUXJD81bwRzj
	 YJ4WNqEQ9R4JeIEZ1Y/j27xHFBt5MRILtLDEVCi5Z4W+CyF7F2HpRDiLAes2IbQX0f
	 XEVIrRCux6hQSfStXLSME14we694vMGEicIPj7STy+ZORdIcbXw745w/sestvOfknC
	 bvhYUWnZpgXaBS3k/S+RfBHsqmQAWNEZZx8FuKsqUHKk1VMCow4LzN7jMDPIRrKoMh
	 csYiFqmw3rOFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB59C5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174919319358.32278.1222406165502501696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5aaff0ea18202db72a2fba390f1426d8ac01397f4834ed323f7e70f10f871c14
Date: Fri, 06 Jun 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749193193
