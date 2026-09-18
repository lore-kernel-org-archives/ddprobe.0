Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CA074E3246
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789746634; cv=none; b=rCpFHIhH7VD5NRzlqdSHXdVDIwSZT94XWa1kbEwORd+Kl5zvjJjc9gwfHstmh2wL2ri9WSNZ/5cQJEKTL17AZG8WFOcNIZTVCtbtFTrmtIu34c0gMeF21qPauDu0WBGaIGiKnbPSMhhQIK1DGUYdt9UZ+MYE6UjZ0Clt/KT722Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789746634; c=relaxed/simple;
	bh=Z2UrifSUkgcON/JWp2eGFxYc7O/2/956IFL2r404BVc=;
	h=To:Subject:From:Message-Id:Date; b=QtKSxQsfYeHWIOewmFL1621ASqcvonSjsTsM9rYRLQod4NVBiFumKyW+pRrENUwfRQzul5WjflEo0cyv/SKkwbRxriHhQx3eHYBaKzAhybKVJ5ILpBqrSjlAB/tovjNmZ67UlrkiTMgE6qxw3RPED4ktFwH6aZ4Wq3oz2UHy1nE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H0KnsXGg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H0KnsXGg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D54C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789746633;
	bh=Z2UrifSUkgcON/JWp2eGFxYc7O/2/956IFL2r404BVc=;
	h=To:Subject:From:Date:From;
	b=H0KnsXGgGgG+n1Q6TdYrWa5dpTpqQB01IGEgRbQwChaFQwJHaDJHWqqM/9BnUMcs9
	 EvNygummCaj1VFSSNycpNNJO0AXixLQ/610G34TUc3jAcXFP9sgYufgXO9eUaRyBVu
	 0EyZr3jvch4HRR75kYRhHMxvUnWtHlgRoZ6S+nA45ECoEhN0d7u9Ap1JyB80eHqsMb
	 PB51/gl5po1FLJohRjNESIfOUjTqXnr5cOih5IQkoeaG7cvyCU4jI2nhQFGb8decO/
	 13h+QMhZYlkXB2WKnbTNek/WUGz/qFwliifiutqmW0ZNDfIsHKm8P4etzAa4si3Zb/
	 U5PfMZuzTS4nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3277C982D8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178974663369.8023.1311123168108157959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f57de0814dd1707472e0698d016fe121bf4360ac28ed81a312319291381ddf8
Date: Fri, 18 Sep 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789746633
