Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F9A238177
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743595794; cv=none; b=GxHW+gpUq1h+SALUPUfEXxXC9dc3ZEdre/Y3HCqhO9sOYCeVc3yPIy1W8V0siaK8t352ERB5Xf+uIhgZdZvjWKtDpV/Qo6dksPa6N9d68GgeCx56ucN2JMQnNm7eTMNoPUKJg+DkaoXYyKoaB19EoMnpLKMIiSFGjx1Gd0zZy/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743595794; c=relaxed/simple;
	bh=Zi79N9sqjTYJAIlA8Yk2UrwFKEbJNrKjInzddwebduI=;
	h=To:Subject:From:Message-Id:Date; b=QjcKDRT9jDgN6+TW14oQA3Okj6Jei0TVa3YyVXYL2XvJocAf4N6iRnY8JGghbwnFmCMl402u24EdZa4QoOHXWjzkJ1LDxD8XmhZ7e00RBLpmAYZh+Bv/RWmkBYddtcRa1MEeYfwwlYl8ZBKBr3r5pf+l1Y3eD4hxrY0HHZ3to6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGO7nGSQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YGO7nGSQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDE3C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743595793;
	bh=Zi79N9sqjTYJAIlA8Yk2UrwFKEbJNrKjInzddwebduI=;
	h=To:Subject:From:Date:From;
	b=YGO7nGSQMrveJD0eeyHg06fYRY9FlJqi8DVGPgdvbzzFrELAVGHP1i4zuXreo0eex
	 9m9WBSEoCVv5e3jC00PYRhCQgcW/Hnr1N2g7odaecF2kilRc1Df5y/UnYtelFdL+gu
	 Qpq1+hxU8IxmsUQDzp+BZIKxSi4QwNFooqnDCmRcdF/Xoe/PQYcR8zlFy3Qeg9PfOf
	 GqwMC6KGj0M4DJWSsh7lq1Sknp/i8p7eoQL1far8G5hQsAuYse6uz/ynpQztg20SHM
	 8FZszwMIT3K40GE0IYOgpVtY5mJidzlDxPq1OD+0H3QHrGqdEf5EIDfnnyJwND4osc
	 7SkbDyXKDfS1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C88C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174359579361.29693.17914454642915608979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e72cc32723d19a44769c00c5ef2f5a23c6567ac07d0da7dc47cb1cf96563c62e
Date: Wed, 02 Apr 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743595793
