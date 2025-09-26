Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C001C860C
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758898195; cv=none; b=aJUg+7arpASj6eDtMjBJ4n9an4Byns/BSz+ZQ9ZtMR580QQOd5MuwhfmWJhh744hLl5sBeXpGJePuP9pS/ChxemX1t8eP8ytawypJa/F1/E5CSQl5Q/BNjoNaPI4e05mlpr97aT/1gih6qetaNoAUkWkPoSi545rRse0dzBKdeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758898195; c=relaxed/simple;
	bh=5L1O5s+Yn76SzIcnNJvtSQgndnqiGzvqIxK29G0em50=;
	h=To:Subject:From:Message-Id:Date; b=kM3pi6GFfheLm+jLeuBDdr/iMD83cKDF7FjACCdsxwbmfNddWNJWk45BBxW9c65AnIPkmwRChZ+NKyxxuYxyfBLIE0XvUd4M202PObiwBIvz+FMJHoZgzirWYcQEnbWb+t5tySFpdb6k+Dm2eaCd/RU7wi4SHYI2k8Mb9VhR1fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/Bc8m66; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i/Bc8m66"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F2FC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758898193;
	bh=5L1O5s+Yn76SzIcnNJvtSQgndnqiGzvqIxK29G0em50=;
	h=To:Subject:From:Date:From;
	b=i/Bc8m66wDgs/mMrN4UgSaWbshyE+Uf5olettXv0piyLCo9vHTpyfn/+1v0W3RhpR
	 qcJ1SEoXuLAy8A1aMg4JxSuEVqY4iUaeWknJxq8PZZPywb9Cs645jWP4FN5OmWaKC4
	 LLPbDr6ZBvsnBoO2C8Fox2LSniaGM/H7lGFZZvwnaqIjAzvtX6MK1uVmjlLp+WUsgJ
	 VvxjwXYOyixhoKgSh1yvJp+qZRYvus6AmfKmnBjr4V/NL7UixdfoIQyDo/VIaDHqQQ
	 uUvQEko1L0CH/xCWeCR1+59Hh8/T0K+jSmp7MWZvjMNKAloBZV9at25fEy/huSSOg2
	 4bibfyUvI+2yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D3CCAC5B8
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175889819358.8566.14686101417582789253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d06dc16ea4d74ddfafe6e02449654f6806d3637197fbaf318b4da7db49490da
Date: Fri, 26 Sep 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758898193
