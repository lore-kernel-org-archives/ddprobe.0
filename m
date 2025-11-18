Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BB41330B3D
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 10:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763461914; cv=none; b=e/S75ryopyvahjRQdOLaHHNEf1Bo3sq1t3hA1CTEL9SE8OVmviMUi4KrNQt6lI9QRMcTMW5SwCR0m5C9dpfMtuBS7i4qQUYIHHQXMgdgrgRjuM0vdBGPQjKBw/u+jeCIP/Ak5yIBdpMIejdKE8la/pWt466d2KV/ntHZloQj86M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763461914; c=relaxed/simple;
	bh=IaCvQJbrwsnjyXpEFahcdF+FvB2naRWpfAIzhN6b91E=;
	h=To:Subject:From:Message-Id:Date; b=OFogpTvaChwn89RoiHL1KIM0R5HvAcr6ZSp4ne2x7s0ApAy4PS2Cr7syUoAWNEVp1zvdLx1NmHoG4VKKFfDNJ1Tb+QcwcDdnPGbLdcsk04xmgv10K8EitQTi7p6z4IMYY2l6ayFLXXaoEHhd/hb6gIO61VYmWem7NU/TS7eSQpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQMxq/qJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQMxq/qJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9862C2BC86
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 10:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763461914;
	bh=IaCvQJbrwsnjyXpEFahcdF+FvB2naRWpfAIzhN6b91E=;
	h=To:Subject:From:Date:From;
	b=EQMxq/qJX92Ef02TnhFGwqinURJJxNmN65aRVEdrdVtTumzJCUq7fjS2hXbib7/lY
	 JvNqBorzKCAUPdaS2wUzhQopov8WHciRhc25Ph/EV+VIDTtklBzgVyB+I3K1pi7KF/
	 YQaKSFoSbP19s8jOr6kCnTgu99kkB6WYKmWnl7VYt9HmTb5/Sz+JlZhoS9WWV7b0qR
	 KG2o64R8Oz/kiiT0wPHOs5tUaJwhAHgiRKg1/qTNN8w+rJpS+p1qXBBVj3X8IrT2iK
	 2+Y6GicPJp6xYgRJ2hQyAuE4kTNCFtzhiOtkkN9O8sUXK3chmz/Wg33SbMlUSXLf1b
	 +kgSqyx3bU61w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9060ACED272
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 10:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176346191358.9997.18231883378032254176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cfd44f44df828dff856162af0ac81c3666703f8262f5c2be5c2f03b3ce3a9dc
Date: Tue, 18 Nov 2025 10:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763461913
