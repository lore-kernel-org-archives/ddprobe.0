Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1245A214A8B
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756681194; cv=none; b=loTVKj2q+wtedb2GXDhHvherhxsHpfM7szh3ww5mDtDDkqE13s6z3Y2ezTDJ5uHCgPo6E6N5cgkhS7njmNZLJ3YvCKTPGNGx9NazXrQYDbOV38SQUXvi/OrZuLsnKb6EiseajqCw7R1az/dl0eWIaD39Q93V/UnMwUSy/kuSfGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756681194; c=relaxed/simple;
	bh=aPALG7fSx4t8kFg50ge19z7emGQlzaSFI2Fs0oPanfQ=;
	h=To:Subject:From:Message-Id:Date; b=UVKRNDJsEiOPv9GxC+lcpqhrhSAX4neBKaToCBdMbmBsvKyOD0D+MaenF+bxRul5+PueJ84Y+UKlpx52PfT/hBuLFMh3H0mMDE7jlZxi/lP+Z7iRNhNw8ppr67hXtFf7fV45xvrR7H6WoV79J7HVOw64KLJGz5GrqnroLEHVWZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lFe7RI3K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lFe7RI3K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCDAC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756681193;
	bh=aPALG7fSx4t8kFg50ge19z7emGQlzaSFI2Fs0oPanfQ=;
	h=To:Subject:From:Date:From;
	b=lFe7RI3KyU55QAE22Y14jMvvGyyWW47CnqxRpEPBY7t8ApxEVfvpbN5oMPn53e9Fb
	 /tgCyWRTVuBMzpddZrbJaJ9VGyqCii3371gc+1aoVU4/DubCmnyqlCD3uIYWrR0kwj
	 fsTAglC/qBkTAzmbiJ0Mwna0YCFTZIfV3bagmGPaJjxJ01Drcbfjt4JHnMqKa4mn0K
	 /5b06rhayBJsTEbByEpA9BeThTV08IRibZYYe62roaVOXV89lDX+50P9MfxQ6aGsNL
	 RfgLvo4dD1z3LQ64EjKrMWH/4w4sCLRWiuVFnjEL0LFP/UoI1t9ntbQM37YiFPTgNv
	 Y3wThU8an9KsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECD6CA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175668119357.22232.6032214129384437886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a065de4a447e35cd72561175125aeb22b435eeb5db1cce3bfd28f3a5945dde07
Date: Sun, 31 Aug 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756681193
