Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEE33379C2A
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 20:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778705434; cv=none; b=hk5b1dMQ09UNuf18kgVAc5iLA709l1BpM4BB0K/zbK/ranrqVBnKMH2ITJ8goPIVbi0g0r/NTQa5d4Kfz/0u2pIgd3On6OPgRoUt0FuCf1fk8Q/5IAT+lnM/rBS9wV3NDW3PB9jiYRErPFh2He5f9Vk1hgIgeUEl261s0+pZhok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778705434; c=relaxed/simple;
	bh=2VleJj1z+pJmnwLElOuTlG5HkafFAKPmUZu1e+806/0=;
	h=To:Subject:From:Message-Id:Date; b=rd3ZPwbApDf0cU+RuJ/O8pbpx7Dkvpbus7HeL7hUnBL9ajE0qb7osO7wmaYWaUXVu/4sLelLVqWQsf7OmxDni2P4+PhW3YRbhlUUJF+H4A+opa007aEwGdoDl4XJ2ZKHFsnbhyr1tR+8nCAEy5xlpA4UZsy8mxYF5pIsz+G6hKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHZh6PTb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHZh6PTb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7327C19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778705433;
	bh=2VleJj1z+pJmnwLElOuTlG5HkafFAKPmUZu1e+806/0=;
	h=To:Subject:From:Date:From;
	b=pHZh6PTbW9HCYhuBsmaxea9a/qEp9ceMTmbuhc+42IokW2EmqhYup5pJs/l55XrsF
	 k37fQ8g5VKYSZZKHtnHsk/6EdYtZaVkRVh37YCxbnFAtIEd0Z56HVJmb8kniYNyLAs
	 hnIzayU9oUbWT+AvjweH3m9A3ZK4l1JOXYeqhC9LGOJ4Xz9rEImz1taMjmnEefGqPE
	 bnjUKz0tfylPJRdCKEw6gwZxclupMSFbbjnVt1A3LLvsqDvpsM8qK7jfBkLuvI7Zlc
	 h1DZdRmM3srMdnBjrBDcVpZuRwOXOQ/BLbZq8qInI9lTRraRzglwt5IBe1YxfI+Y3V
	 z0LO/oWsSgF/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B64DBCD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177870543373.28379.674424444930604898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbeeb7a59b292985f0c932e8987c4c51eba0762554e072044097c716dd0dcdbd
Date: Wed, 13 May 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778705433
