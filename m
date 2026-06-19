Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7723446A7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 19:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781897194; cv=none; b=pmEhfJe89qHNilH40AkW2U9+cRlonzGEGZlMwn4wiabIXS15UEIXsZpHBtmU8hI+PHAV++CQVI1gBFT4mNc46pAuFUCh7W4ZcXmq2A1yQ+SbXNG3ah7CeexCZ4NjqmqtU99mtgozdHYoDN85WFjhJoyDw5kYJexWLJXRyjumHe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781897194; c=relaxed/simple;
	bh=+udb4Lve31CrZMAscIvkXQooXEwKJTIgz3dx7rMl5nk=;
	h=To:Subject:From:Message-Id:Date; b=kH1SEPH0NYteWjhKkLR+EhLrP5UX1mKV7lQXgGAuwtfted/4/n2zoV0vwkgNvq22rvQO2bVN0cwZsiTeSWqLvauZkaCoeMmrzuizwBdjbVtVlvaWRcppp+r5lviTZSyo5Oj3Q80mzqHXHKzoPrUUaJDF58GyeZ9NUs3Y6S4PgCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pkdNXYD7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pkdNXYD7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C588AC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 19:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781897193;
	bh=+udb4Lve31CrZMAscIvkXQooXEwKJTIgz3dx7rMl5nk=;
	h=To:Subject:From:Date:From;
	b=pkdNXYD7ulMVHziKybY+0PU9Z01NZPQ7LTgYd6gHXTccYY1XkebUo6Zaa5Cvz61R2
	 e2OHgznrtyzVbqgTf3266VYy5wFCRMeFLw5V1Eh9E82fwPrAbZsoImoKF5I3nS0Cjw
	 7nqFvf2n5jk0EyRSg44PVfSlqhi8UurMp3WOc9sNrx3mm6FYu1bIq7MCSmQPB5I2Bb
	 ZRiJZ4n4dsFYRHr9btqX2ckqP9aErRRu3F0ZWxxT3gwk7ungo4/VGi9Tu7h1I4dKLc
	 vgmVOkxFoei7d6DfiQRjXzFmmf9NPAuJTBJO8rGgsFn3AAlFyKz4aDxAyfGsCUfW5o
	 ZKoOyGmL+CIWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99FFCD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 19:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178189719368.13824.1611763134706183613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88002d736e118f95fe46ba5b10747a36ad00e457282e507a608eda821614e31c
Date: Fri, 19 Jun 2026 19:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781897193
