Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3499418E0E
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732694154; cv=none; b=mDXo7lywfr7Z7w9+XpF1lh7BoqopZYdE6CY9TPvTF4IoFQFb1Foul2+hTKL/jk3evLflOK8/qUbDzf+ZeBC+5YNEzdZzm9aiaKIwDGVs561RTqgrMagijhrFDlvwEUP1bPcjX9lXU8q4jN197+Po/OcZ2x5O3jAM1NMPcMGCHbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732694154; c=relaxed/simple;
	bh=Km79Q0nBNIXmYEZtd2gwsGRNWDdikSkPd/mldB0jzeM=;
	h=To:Subject:From:Message-Id:Date; b=isD1/5XahtGRMZRUJIAmHj/W50Evd3CEc9rmLpmCCX3ZH0FBGl4+g/YKM842YaGiOPCinE5H3HtrZiLftYlVDaOTGZ2W1pXaRbv4iY5vmfEqMd5tYmevmFbndzY4JWHYJ+fLiGOQ01SLMbiPkVxzC9COdMGBVECjIc1qFUNsQ0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O2KH9WCe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O2KH9WCe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8EFC4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732694153;
	bh=Km79Q0nBNIXmYEZtd2gwsGRNWDdikSkPd/mldB0jzeM=;
	h=To:Subject:From:Date:From;
	b=O2KH9WCeCAHqDz6QVS11+UBvbtOlqLH1Pvly2/sBMA/nJwXHeFh4QZIH/OgWrwrzW
	 8CgxI9I171pA80B0nhUBwSXpvYIFY55my2W+3Ch1a8KgYJtyWUIEHMuNzLLqmwkEKO
	 AxdP2rT1FzTE/UnV7WqUInTtCgz75CQ6AyMauaU/2DjAbtSSWNnFWgtjvW1Urat4ll
	 S0roJ4YdFTjFtiuRx42l7Va3Jw5wFsgd3KKu/N06o/fwxL5Y0bMLjIlQNxlRW0UAwp
	 gD1mPAYE4+EzfXon4GzpIddoZINNORMA0y31uRhvOfbPdwOentWoCrPFRhR5jceHCC
	 0x3+xGsAG9e6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95390D609AD
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173269415360.29644.9439802887299694365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5506b0b08e33fdceb02f37c520e3ea7df9ee3ee8f0bca20d25c4b940ca98359
Date: Wed, 27 Nov 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732694153
