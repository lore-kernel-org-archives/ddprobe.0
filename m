Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFF127E05E
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755011394; cv=none; b=AafyTsE1osDMeSKgWTTptvt5ZyvTHqQVneT9rjPJQiuIdq0aAk7d5+Gk3lsFL5Uii9OCjTUreBf8DKRCrPwDnR5JaCQzgqr/Vb/8lP0Jly0/VUKl1M4sBDYb8m55tbyg3hkJB36S37e1flYs1VPSeB1lgP0mMFs71bHsfl89uSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755011394; c=relaxed/simple;
	bh=WA/hX02QyFIX9Xqp8Whr0Ni5g9AkqEq3ZFdDUcocMWg=;
	h=To:Subject:From:Message-Id:Date; b=iMTRk0GiuHQ4h8qAptMhh/yXZqWvxkarUuRMDZKFj2kqcZJDxI88uFHFVtgrM2j5pXayiWfkWArAsyI9BK5KjrBE7Hrnh54Ywp2iDfCui8TfO3UYc/YuZb8ZAnJanc/ApwJzu+AumYL1SYqZ/q0FPYMzF3GMjWmWMks+LpIZZzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=snHez1ZQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="snHez1ZQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18A2C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755011393;
	bh=WA/hX02QyFIX9Xqp8Whr0Ni5g9AkqEq3ZFdDUcocMWg=;
	h=To:Subject:From:Date:From;
	b=snHez1ZQ/3IYPuOyK6jnIOgmQf+Y/y904i9Ek0a4eZUy3MO92CuabFMoWCylGo/Mg
	 KaJh3X05IOr9rdhBGPL3/jpoi+ipM2ms+Mym+CrXz2xZvow72HxB2Hw4t5IDVTv/aS
	 JsMw+dtVfm2CWVtNcCvmf9zrkBqmjXDXwKH6ckz1gh4bYg4cZImKvzhVWHHaSDCysQ
	 JmdnrLnT5O6t6wNyWg5ZSd3VlKZVQ6flusCCrqxpSw+LX1Yu1UNwIeZ5psugavqTys
	 pZzNebFO8bkoJF5xjLO0zpIHH7lMn80fRwFD+89p5yGLK9Lu8BldgVaBA57v9nCccX
	 i2LhDyiBOBldQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F374CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175501139357.14777.14000775918969212560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2065cb40ccace7e5f0784d25f6e2441c9c7ead47620ee3a6a986d087d90f76ce
Date: Tue, 12 Aug 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755011393
