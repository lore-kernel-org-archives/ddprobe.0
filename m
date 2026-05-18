Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D51627E076
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779114634; cv=none; b=nQEwbXiWHWJCos5E1f47e/Gs88zSD9c/m0lroQ0dwCY18v9yNLGaJynJnrro5FvVXkKritV6+zNRxvUR77sYY8JjRWoNksP17A1ev4L/BO029FkcEg2eeDYSUxKFWwK+VXGake0tb8inq+LmlxSd3s57SaNiu3faIS/BXYZchDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779114634; c=relaxed/simple;
	bh=FfQOdUW1MTo51ducAKI3SllUedemAHq9DwyzdSPadao=;
	h=To:Subject:From:Message-Id:Date; b=BGxtGMaSEt/DZFzrES7vrg1Eo0TPOQ35j32b7VKxkUtuBNcpL//WwL4QxHBcW5nyi1gWEOFKIvD0JXyu7oiWmYrMOmJBO41F82IR67pTGtrOT089BcP0gG+Xbn1s2nZF0dEB/C6MMw34EjMgN89I7K3fc6HmAf5pTAeWY8jm91Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W8SvChli; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W8SvChli"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8CE2C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779114633;
	bh=FfQOdUW1MTo51ducAKI3SllUedemAHq9DwyzdSPadao=;
	h=To:Subject:From:Date:From;
	b=W8SvChliCxto8Y/5mHhWCAYLaLIxlWVBP/2To8Aj0+dHwNC6xJxIfYbDDOqsRqI+0
	 penqLFePcOU2HLlJ6sKSo5tco/+Qr7B7wG2Gq3bvLVTm0D4Yp7b8qMPYnDKumfEimM
	 gLaiR2toh0OBHW8GTffAUC+7YqSZAjvOs8qcEaFMeu39HFJrkDNgPBzLFZc8iHe2JZ
	 kCdiuqoGlFggddDdWupuBoUgFWqmtSJztCRFPL1M1j7wiv7jLQrW2UHNtKcMYUEY+w
	 akp3s3B/ro/ck1Z+s9knBgCyi87oLQTSlJJDZ7YyJ1agiRJeRx5IVEk4JBq4yof7vb
	 IcX52EEkLIaig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2FE2CD4F4A
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177911463372.15849.11874339837820696633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d849a2c6798afd07df67a6c8e02d896b5533acf3ccee4ea4673d638672bc6d07
Date: Mon, 18 May 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779114633
