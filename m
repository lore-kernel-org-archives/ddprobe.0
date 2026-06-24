Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73AD33D904C
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 15:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782313654; cv=none; b=uAmqaTDSfEUAwVbgYVbnivsUJVRUF4X6OPyjBtV91PAqvDLlt4ybMJt+A4ako9IkV0lW0DvMxnV3zCWTewFTE5Bb4jE2UhAa4Onm2us5TVaY0J85xX68R0yxUu3DpU7c9/gl8U6eSj+HfJgrHTS+r4Y8FlzLgTeYt5DIXqmbkts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782313654; c=relaxed/simple;
	bh=WEWnjMSISHtpwBdbjFyn7FkvHtfWWdMF158smhqn5aE=;
	h=To:Subject:From:Message-Id:Date; b=mS1jhpcgiGQ2eOE2MK2xX89u5+nj1aXVY2WkHUrUBAhelgu9irpael2PRpuapn6wrfw+DxlSHtrjxn3AzcmfSguXkjrs/kvQpJlAPB7x55Um7bkfPz6Zogxni1ZSWxwPQHEpVLj8/nepuFpPC3KlGoJjt2QLA3hLaabhB+kUaY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mPtXW+hp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mPtXW+hp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D356AC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 15:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782313653;
	bh=WEWnjMSISHtpwBdbjFyn7FkvHtfWWdMF158smhqn5aE=;
	h=To:Subject:From:Date:From;
	b=mPtXW+hpNy467DR7xLm2Sv6n//dXvF9MbMcsZGtl7WJGuAxPFSnQrG9+Oe0m85U1c
	 fKVPK3RXPEv0RigQihMTcrmT5ANxMNEH8xiQnDnBYaF0F3TOy7Yn3AGh9qDMc7ijyo
	 qvdW6CY+0EW2W2FewXo2n2rxVccD5aQTz21vGlwGwiVgJHjZ3fpGnnuH1840LsZEUe
	 It+urtoX8LpSGxBkYKlelbaqoPvNowhmKtCp6lDKJz2FJR4lFtwdqT22D4I6WVHVP6
	 GI6If/OF/i6vrIpVSkWd3SdWLMiugrOLgc8yax4lF1mRoFIrwzLnY+DK28QqjeIjhR
	 2Y1nDUIyjLQtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7A4ECDE003
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 15:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178231365374.19553.15224849865987477369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9d40940de61a61ab6b064473de3b9b565e8419afce863fbc350a97272e70091
Date: Wed, 24 Jun 2026 15:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782313653
