Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF8230AD15
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 03:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779937954; cv=none; b=ihGR51ilAgSF5DqT/RcX9QKQfRwn9DTDYF5F1w5UIDHM6WbZCIMTUN93P9N+tj4hc//imxwnOSjIq0Bo1LGlR/qN6IaztW65BVNBgKET+LhQctzRtkfDew+Us2C9/1XcUc/IohKR0sHvhU3IhS4ceGA5lAzGH9rpWSW8ymd8D4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779937954; c=relaxed/simple;
	bh=k/0f2E+onLc4HliyqQXmUXworuNAmBFeHSAPyXORglA=;
	h=To:Subject:From:Message-Id:Date; b=BjDa5WpHAezVpcGMh74vi+pqtKv9aE6SB0GknOXG/XZYXUPrJrN5a+K1azdgxh2398XzcFVjoi7IDTtbIzeyRf12BJHys4aL5hSETeuwNK7drXNTA+Isyh5hBPFhwVfqcqP7LYRk3QjE4qtI+Hkhr1eDL8E1nZsVaZAddV1Ks70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZwDWyEZ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZwDWyEZ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C645AC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 03:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779937953;
	bh=k/0f2E+onLc4HliyqQXmUXworuNAmBFeHSAPyXORglA=;
	h=To:Subject:From:Date:From;
	b=ZwDWyEZ6lBj4xASnGPRXXj3qBYU3QukGXDHCLiUM2VwFSDFVA2vGDSpvmc6WF1b0P
	 KVQaH8bQWCMd8XFaBi7Qrt8nTG8LNtcWRQccdrkHQZWXTzJiEvJSOFOv5j4Hpk4nA8
	 I8zaiz/olro6tDgdyGJ7737IkS/Wp0Sjqu38B3+fkE/1tU0Oa/tslWp0zCsG6ag4jV
	 DzDfJgp9NjDSx1UJ2mPB23n53lsBhUmPstrkrA4FpMz8yiYxIgt2Cz+a1pIah0VJMm
	 Tt6eGBRbsKGBu2SWBk2MGw/28Ut3MM196G0ai7t0kucYYTyy+D9q2jS1+PEebl9j1q
	 OhF++me4jIF8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD604CD5BD0
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 03:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177993795370.9084.6138569564981219207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab33d0cf375eb95182e35c10dac504f5276a7f8a81fc9422b7dfd7d97337f261
Date: Thu, 28 May 2026 03:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779937953
