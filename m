Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15FBD234994
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784983834; cv=none; b=EyZy8JTzke9q3odS127HtZ1A2gnjieqZTEOe09K1Hw78j3Vzk60g2C9ZQ1L/aIyoal8VmmSYuwMXZdTRuTNdQkXNSM/6SJ6+GnUnLAM5rSarjdcaGRBDUctAwMLm5lR3ONZuiCIOmf61jlLQh+D9RKC7163WidP6E17oaB2MjBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784983834; c=relaxed/simple;
	bh=ouT7cm9WZqZklw4YnH/yRbeKJ/RaGFLj/HQKBxjzv4I=;
	h=To:Subject:From:Message-Id:Date; b=D8zCePL2/BcbkKNFlOeUSVoHHa9NOV6ZZW1KTL8i5NvMj2BL7R3vvrYIhP4PmLkeCcI/81uULxh/DS/4I3VUJZlQZwNfCIsTwJgEOBusIuanEEwuxwyAzjkn9PKZ+r4jIn8GTXBAnHo41l8FUjntRzYuVwlfUZnKyWa7vWt6SNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h02HYqN/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h02HYqN/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2E7C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784983833;
	bh=ouT7cm9WZqZklw4YnH/yRbeKJ/RaGFLj/HQKBxjzv4I=;
	h=To:Subject:From:Date:From;
	b=h02HYqN/WDPhhkz/VARnncltT8HXrH4sXXfi5J7JYE2Qjh287ugaWT4f/xeTRBBXy
	 hoanyj3Jsf7f1EfbC004aY4jRcHIQcvVPgq7GqDSmNwR46jBJLDHHJ+VeZOtLdwaKB
	 JXhDXriIs0wURiZE2umc3DO173+CQvhuczorEwOXjnHsy4EzhOteamL2KKAFO/InyI
	 orqPE8vs8JdWz+JIW7IokTS8u557hl52MLj+Y/T8I3uWKRt50pDEHaxGTV4tQuUK+U
	 x3IR1DDHu0iFXg+dqWmjWSJ4ocJ7meYbmgCMWeonUXOTBoFfG7BhdUiGNpoiMzMBRV
	 G/eXt2/aEgmAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACFDC531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178498383368.21240.1117818354068097857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac4b58e11a99eda057491f95ec7baf4d96672427a0e616b873340bf7cd85ea98
Date: Sat, 25 Jul 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784983833
