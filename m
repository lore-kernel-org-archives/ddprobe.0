Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1BDEADC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753637994; cv=none; b=CyKTiu8SOGEWcHuPakFaZRquTap+T87RkdgSpuLdd1Gc3Kzq7X9GFj/cYSCrj2qZfOtfGCKT4SkhpppppOPGk50gULSPX7uWWGvG/KaF07eGwmyAJRHmqZGepU4tswdhRx87KezKrSdpNZTtv5YvbaogYaPvkVvTMh+N12Sss9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753637994; c=relaxed/simple;
	bh=zKj2anrHVMpWsMlWl7LsE9ZWoBZE9WHxRHxQbhBOY9Y=;
	h=To:Subject:From:Message-Id:Date; b=Yx9PkPHo72bbMqS4yPXqLPDMZdASGeEx0cwJ2vMK92/OR7lO0lRCFazI0ZXJsDeltpmKS4yD8x3+NJDo3SD+NGrt1Ncv7C73dDz4XKr0BP0/SdW+oijgtzJmRvtQ3JiVwRvcAY8JocHfFxTbfbhK2VcUOitfuYaySZLqeysSFjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RSuDkyLP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RSuDkyLP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6528C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753637993;
	bh=zKj2anrHVMpWsMlWl7LsE9ZWoBZE9WHxRHxQbhBOY9Y=;
	h=To:Subject:From:Date:From;
	b=RSuDkyLP0gRr6/ZavLfkC3IbWyo8HBADapwiTCcuS2T1/35t5DE4o/DiCtG92R2YS
	 qiFHXvI2QmXO3qfUIEpnWD4/qAA3UajmVH4JVqgFgoAopKC64iiZnIKwl8++nW9s/L
	 Ed2fHlH4ZxLaooNDIoDYsIBxMTBHBFo74uZLDWyDlkekkZ3Mtn6yi4uE89BbinQjyt
	 bu+etoHfLkfdbvcRxFyFlktjkLTtgq4yYy9BBK5B7YTUDdHx/gt6OrcCGidOo1PXOx
	 QN5RFNm+VUkVax8/ophGuxrgNJ5tNwEbrG8EakDUSDweRUdVpDto9SFTHkK+5/PqrY
	 6tts0vwJHShSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948D2C87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175363799357.2258.16758580639780055151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 841a378dcda9996aaaa7e464a55425dce4939bef073f617bea3c3c25a75f2f52
Date: Sun, 27 Jul 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753637993
