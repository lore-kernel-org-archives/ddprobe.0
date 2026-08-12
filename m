Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A02B420486
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786531234; cv=none; b=ZFxafhILYLmBFtPuwntFi9u9hzqpLDoz0Uv3J8gEkULGf9ccMqnwKWBKcPMibn81C0or0zZGUXba/iTo0O5omow0oOkZCbc5g8l0oluaJL7Wa+IN8PcHGoGFwkzaQRwco6Mh6pAyiLGBhZEh+Kfsk9RiXJikFenk7MU4UIlR4QQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786531234; c=relaxed/simple;
	bh=lw9cc8dfdie5bYH4ZGYUcegSeSkaYu8XBUEj6uOJZQ4=;
	h=To:Subject:From:Message-Id:Date; b=GnZtzioe3rbJmvjSwV2zpnG+cO5R4ZtsdYamF4jVExTwezZaJWJSsVEWuQG0GztQ5DurRb+wL3Q05rvBGjxSEGYReBzNSTA9vPHXAZ1T/YI76T9E/+NBLgFjTUHdGUfHZXo8uSaNLRNdQBXpyCA3xmeJPsTsZMADchMSWShvJSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MnM3Te5X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MnM3Te5X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0858C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786531233;
	bh=lw9cc8dfdie5bYH4ZGYUcegSeSkaYu8XBUEj6uOJZQ4=;
	h=To:Subject:From:Date:From;
	b=MnM3Te5XiCinDhcjr6YogZnS09ihyvRZ3xfdpUr7njgtj5GhMSQ80ySySC91CXYi4
	 cRXGn8DeAKLScoc38OUxKmOhb5lruVXnVBTiS1Ztu56gBwi28oRhy8ngO1T4LPWnbi
	 YPWg9f5N6VYm7X1uiZLcp6s42Gvbe06WiG3qCJ27BxDEaAfHknXlH3yqNxWXi6zOf4
	 3zaYKYHDdNaFsRkWA3lkJtOpIs+NS75peXCm2zp/A0Gell4d9+pknNOcXqsukUwNkJ
	 QgSOFEVCP41jNSu+y7blSCGJf80yV32BuRVRDYRAtJVQ27Tw6ItTmBwZqvZL/S8skE
	 7v6yNWTFie49g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1A9C5CFDB
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178653123370.28284.13082868327082908766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40733c7c67fa45e46fe39c00a5831c9a6fb1471ec91d18b58a3b7db8941c1abb
Date: Wed, 12 Aug 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786531233
