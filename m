Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95F112BEC43
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787652034; cv=none; b=I3BMIUNgsg6YoM1nkcF6+PeI3RwjqXu5AqSqHyTxMj3JRxY0N9DSqjsOXMWJl83MNmEyLfBJVHFHvop8R3ukLpwy9ah++pNAKk/jaC0R/hGns0fXRzKL5CSmvTEgc190GRKycM3tmHcqqsEu9/PIU8acl6cVW6MepdzbCZNBeTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787652034; c=relaxed/simple;
	bh=VK2pF1ug8MK10MvKp13KLSsYg/08S9iSCPvTDZyLVPk=;
	h=To:Subject:From:Message-Id:Date; b=aqzx/CCGPYTJlYEIqwCe9e9jFNcsB7bprkdL+oqDFhTJwR3iLyf9aHhqF/lBRHuOtw0WeEfkhzIO2eya7NWQjQmOJaC/iKZ7msvLmuCYDxssTzfvJtcxz6yuHMBi2kKg/GmAbgF1mprGFqnbmUkJ66sImZoSqe4n+AtPcP2qUtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QEpZp2Rv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QEpZp2Rv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEAC1C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787652033;
	bh=VK2pF1ug8MK10MvKp13KLSsYg/08S9iSCPvTDZyLVPk=;
	h=To:Subject:From:Date:From;
	b=QEpZp2RvQeaCBMUt56UNXFXwNJVpqazd+Qk/MCUtn6Djs69ar/M7sHIMa+C8b12Dv
	 JoUHqiLA50V4PSMQCZYiFflCV2YEe+asO0shFcKofWMKlTs3dvTI/IC2kEG0Prpuid
	 bX5Vo55i8BfOH6dNAyyxknGcBiPMrOniuDqWXUB9bgOS7xpjZOSYlm/Ebcc6kRqUpR
	 ZGQn4rh6s/VeVPYPct4hdpwI5fLIPmj/GlgqKjFvP37xv+ztzoxRRLTtC6tD818THU
	 1MDNHgcZ8hFYEFb92Iiisf6mFfLX3I6ci1P4wKTl0Is035DUllkKnrHyXErcL6PwdO
	 hfcOYaoqnM4ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB17C61DB4
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178765203369.18474.3324041198309331473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c13e8acdd71f1516d1e0f3292622db713418c83e8614be5770b9b90a4c2be123
Date: Tue, 25 Aug 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787652033
