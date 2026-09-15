Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D9D03F1ACF
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789464634; cv=none; b=j78O9vCinEDnxpqZh+ouCrljRFbK6KXZ0yoKWcTi5OdB1U88QAo9E8RFND2DTOvH2Kz2UZ8mY2nlhXt7nHVY8QeOow//oF8ugSavRVTQyRwh1zkQwO/PDZK5vca/X5E//DUC8gDtxSfjE1deDo62nNiWpXu5g+jH6E2F68/oiW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789464634; c=relaxed/simple;
	bh=oJZjHRH5TMbzjFH8E265eOpsyxeL7kAhB2z0bFe6AOo=;
	h=To:Subject:From:Message-Id:Date; b=hvUYm/874XkZqVMYWbJgpm2IdqzB6v/CL5PuP6KSJow14CEhZUF9IvUDJ3GLeEtKI8OSEO6a6YB25bkCRr/YU2aL1GWbcfbPmq8r8uE4xT0clVgac9Edr7cQGxY6wtUBbjXuTT8aH5NK+D1qyYG++v3xuIXM7apuHSkxQF++SjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CU699gi5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CU699gi5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC169C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789464633;
	bh=oJZjHRH5TMbzjFH8E265eOpsyxeL7kAhB2z0bFe6AOo=;
	h=To:Subject:From:Date:From;
	b=CU699gi5vGroXmaSZE4zhUTX8PI23HT1JEBa8IbjLnw4CbOnj3fO8SRF842Y7aTCu
	 QisoV2HSuX3jBVlEVCxEmlBUAkhrH2+tWXesQTsA6HCESSwu0Sf9Pu842tETM3OMGQ
	 cFMoT357EXbnvv4nZSXUtO4dfGmXcK21KbxsbzsxVHn1UBRZgsiHRk1K3b6L7al9MB
	 vECkDExFcojP+FipA9mW0MpsaL2pUoX/31BUL96RQa/ssltez9J9ZFVFnO2eNvYsJp
	 qIZIatl6bWhat4OLniFGaU2RZAMCFGvNfoW66WiuGKIA3ppe4eKHjisMMA4AurMuHx
	 XLNl27bOqxg2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DC5C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178946463368.21139.8436700612954042478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23aa6db9b55de7e09657f1ea6b037969b607e37b44090a0a1e44ea2b2800f6f0
Date: Tue, 15 Sep 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789464633
