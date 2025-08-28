Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151F0308F13
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756375794; cv=none; b=TIidxTHBpdrui7h3cerDxmWXU+AIagzEkXSawf/y3wCPprO1zuQmo0FR0q0Fc/J304xLctLunndfAX7eUewjlGGux33mUEjo0FX9vVrTBD+pLGJjgRhVCRdfSZMSzWjV+OlD8MZL06KUiRQot++XM3HVr70z+qK7Ob35+GXSxo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756375794; c=relaxed/simple;
	bh=My8Hhlh0k1quknvg5WXlt7pZvCRpJ9+qVnLI8OkyDhA=;
	h=To:Subject:From:Message-Id:Date; b=cT/EATayo64SCH7itot8TjX2Zr52P/61BvXEWPsKHZNqyRUQuzKc7MCSHK2JoGKeUsWCspjC5/ZVviyX19dFZXzd1uOlsElqlY08Y2dlbYs2CywRfjRxxgeN8vEsk9Tv1H3t9sFT7uiohSSc+MA/F4eddQwKypGnihnEhTK/8Us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ry0CYkG0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ry0CYkG0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3887C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756375793;
	bh=My8Hhlh0k1quknvg5WXlt7pZvCRpJ9+qVnLI8OkyDhA=;
	h=To:Subject:From:Date:From;
	b=Ry0CYkG0vHoeWPQf9bS+ul/sTNn709v8nxXvZtUj92gSlL/9l1VmEA4Pin2+YAqi7
	 aTe9vfNjNvTGw1oeTHMhQCJ+30NktNYj8POBLgCFdtY5vy+gHM2vpOf0WwP2Hl7PGZ
	 5L/Cx7CL4rmF25i8gW0DuHuJSZ99PyxiHeZgLTxM9tkCSytZPZhJ5M/PjJ7s5om6MR
	 pY/QfKUQbrYYm05sEF/gkO/6akVbYbd0PDPoKyPMSPbODebfUyEbfr7buEeoom2d1Y
	 Tkjp3WNM1fTte9bq4K2w2AGE2LM0+MD8VdVUf+1RuoiCdVCaE2AVtIgCpKa7eL7CB5
	 csoduFYY5pFxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902F1CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175637579358.31274.3542393795117961051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94698425730dff1fb32211f3eebb5c8b8279505b10d6b33675aa0db002cec2b4
Date: Thu, 28 Aug 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756375793
