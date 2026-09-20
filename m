Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D33328F5
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789894834; cv=none; b=dGnFmi5K4w3qhJI0/fPJrs2W2aJtgmwOrigDTfbHSIOaTRIquclvJCYRVLAMbWW8+ef+w5kaPO5xGIIvjeguWS6k6RETY9X/zbB7L5N/ZwNiJZbaxo2Cgn5m6NxK8PaThcwi4j5l7Oygsm/FeXLe6a/hIPl5f4/l1ofKkpbX/mA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789894834; c=relaxed/simple;
	bh=f7bheqi6wNzoiSRGrQTNKppWk7FQZ8rGUFTBTmvE1Gw=;
	h=To:Subject:From:Message-Id:Date; b=GOwwMqaBt84zCP+uOeYxviUqZy8iF7ueF7ptVuHi/nWCeov55vbbSl6GMkz8JAzJrVNkcBtG3IG0DdsiUPJTRIZ9T604P+uyAx9J+hWv4jkf6PsBvB+Kxj37iQQgr0zO2Oe4mTG5AVHPHaNsh6Q6ILLEYst3J6XVmV6TZuqxBq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ekSAPe2M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ekSAPe2M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3BD0C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789894833;
	bh=f7bheqi6wNzoiSRGrQTNKppWk7FQZ8rGUFTBTmvE1Gw=;
	h=To:Subject:From:Date:From;
	b=ekSAPe2MsC8nRZEBoReKwOOk0yADYyieg7mEhOHUo/ujGzSZOl/0WORteJEhNe1Qu
	 UJsufAdap1PfoVYp5jAuZz08gM8EhfENG3BkJ8TLpjLtFr0+9fS8dwaH6EJzs2w6l6
	 mkW0gnK2biKKyW4yfoqmg/N0wdBGs1FHp1C8xcK074FnsannD6ddnGv68dukal2lFc
	 HiVbKJ3t+rX9341judhn8pCRPXF7AEzIqBIPrWVAvjB9RnH3AfMv9rakJOMYkK7UNP
	 kNwR/HOlfFUi3zBCgDX9StbG3gnvqUk4WmoDwFaj5ygNduC/uewO5C1mSiIBin6u9j
	 w4rNtZgB1Sfag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD36C982CC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178989483369.8351.16812171406390534624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10c142f8ab3169fcd49850d15de525c70da8373f1b5e7ef1e934c43e486287d2
Date: Sun, 20 Sep 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789894833
