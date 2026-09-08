Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399B72DCF6C
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788900634; cv=none; b=O/AtAzSo/Y8ms3yFIer1q0enjkL+6SWZgE0UUgllLGmFt7kfHR+bDXhUshDNVBAcfTAxJAcLqCHXecd9dpJC8t1wTz+pe/mJDw271vns4KirjhPzX0l8CLBbDYmcHlzH736lW1a/x88xRza2qGcKlsXDHAm3Jf42pjqdgKLJaBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788900634; c=relaxed/simple;
	bh=GU6i/U0k4d2ptf5Eg7m/8gUN15SFhJe3c4CAlvVNlwE=;
	h=To:Subject:From:Message-Id:Date; b=QOJZCCqgKLUQSSPL9Vjlh14jSMS6UiGFWGPXZIa8WDHsH0CVGVyoZHpJYyOvx7CVhbsWY7itFvcsdIP+QwHaqZexNZ+Fhtd8X2o2MUxpGAkzNGRpmRaDUP5lVdpaNzdrqIlrAZF9AWjbPo0ptdIDddkNLcQfT7qHDMu11Ki2IKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A54AmFtZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A54AmFtZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD65C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788900633;
	bh=GU6i/U0k4d2ptf5Eg7m/8gUN15SFhJe3c4CAlvVNlwE=;
	h=To:Subject:From:Date:From;
	b=A54AmFtZpuISM4REsoRaaEYcgrAAEOXI3FOBV6m9JajRjnOhHAXJx1oE8QSPpi9GT
	 FR9XzxL+uXrfvwwR2XqEvMJm4ioENtgF4+QqrXZDq2mFF4ixa/afMhal5XaWX8Ya5m
	 pVDoqaXeh+0Ved05rdGWXK2PxZuro3q2VL751ycWW4L6XkW+c9NaOOTuHaTj9FVZQ1
	 Ti80yyL3EZwustrFOETEMNuQjr7oem32pPlLkN8s4nseYwH0ryVNTMydLn7aQcKhyH
	 aOrjaay1ZSgCfxpovXLxwhftWIwrM7+csM/cwZCbI+zLWorGlleVrmumr4QWiztQYL
	 NBVtDh17ouetg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD657C79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178890063370.31135.3046712037510861028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cde0e85bf6abacca0c259f2154de71a468714bf706c26ea19dc2f66ed4006d53
Date: Tue, 08 Sep 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788900633
