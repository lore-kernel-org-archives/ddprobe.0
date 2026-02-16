Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27AA018BC3D
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771218894; cv=none; b=jAbOodOn0yIbIChOXwQZbyc1tgAwjasBV4q88rhO7mVCCGUVRKgfKCWUfmzHdGTK4Nob8yZIAIO/pT5yhSMlB1A7ZT1YKpc6w5F32uEKVm1Nsukldwx6KYf7Jr8sdyb7SCGdiepBXpTaUqXVk9Nn9BvGwqoYcUAnqCOekjwHr6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771218894; c=relaxed/simple;
	bh=a1ESKqoL4lvIXFLXf/fQmQKBYh4VPW68SNND4JJ6Heo=;
	h=To:Subject:From:Message-Id:Date; b=rS262LOoeJs5IQgLT48dIHc8yD/5CL0jWAkJH+cUM7c5MqOdXQXvbg2mG5fyoxrhkewMtLhubH8vx8C52V2untJDJM78REYTnaGSV0fSOnhI3vaySZZYmnRIFJnXjaJr3655Bqy2DRnL2mVwtMr/APC1KaTNWrnoiapandYnXqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tOYNl8mn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tOYNl8mn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB449C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771218893;
	bh=a1ESKqoL4lvIXFLXf/fQmQKBYh4VPW68SNND4JJ6Heo=;
	h=To:Subject:From:Date:From;
	b=tOYNl8mnJKCgvJLZ/g0ZZh7Oj7vG4OGVSJMzCuJF1PL1ZUfKYDFaJjXe6kDWafPY4
	 LIE3OxXdgMGyPMh6UTHRjhuBxX1YcsOAKE5aRFNVw4zr7VtG9Ae9QK7DK4ca3tBtit
	 3xBY7JfXKw5Bd72yxgdKB19FYEHucmtC89/ENnFJgb6ehPoZJJjJI1GawSxBlbIThO
	 QZ+iYz3lsoNmALYR8PD8dZyB3VwflY1n8LNxm9PNhhPrCtWNyOd4KnctqRKJqtT33B
	 MxTfMKo9GqJuhNMAgJ0UcZ+aP5qDFpvsoDsdPIOscOt4ZbTk57T/ygE2DXKfVcU6yH
	 Clb87ZHhRIs4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955E2E63F25
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177121889360.26851.7371614413365759815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf47b587d4c8e955dbe26fe1bba43dbfcd23f272b7c441a4f92a03558a7d70bb
Date: Mon, 16 Feb 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771218893
