Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC1E8BE5
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745542794; cv=none; b=DL0Pou9VtUEYzCxNXlUVsuKldto8nDp/+B/TO4ueGEwkVOgWM1d+aLXkGPbHIhQ2tzj9mo/MTvkRTNHKbCjkAQ3XN1BqEcjomJ/dCqoYkNhtPIFzCV2zdVusU+4C9BtRwlFk/YjnVU5Y4RePxu/U456k68s3uHfACcOLxTaGLr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745542794; c=relaxed/simple;
	bh=jf2TIAu1WIGyR/FWHM1Txky8zHLoJLa2RqfmekelsNQ=;
	h=To:Subject:From:Message-Id:Date; b=sqcju6cxnNZHzbGODrkjikXzr48w66gAJCScOlyLfrrYy8p5U8SyERUfnOn0Wi2XVDOX4Qf9MtkaS4BX2dqQz8opABdz07fEZcgJZZEqSuyTpZlTWvXPWh+6FLLaA24gf9TDjLP+rbW97I2N0YeicKfuYh5//UOm7ve4DhfiMh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l08ROF7c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l08ROF7c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEB3C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745542793;
	bh=jf2TIAu1WIGyR/FWHM1Txky8zHLoJLa2RqfmekelsNQ=;
	h=To:Subject:From:Date:From;
	b=l08ROF7cH5P6SThypWJVAMz4VSigwz0lJRydyed7RgGiv3aKPZ3irtxA5+9CDvKlD
	 uy4b/wTCOLSwTw3OfdvWCyW4CZVd/NJUgbUZNJ+ckUFuMakwblMVI6EBDUCni3UVLm
	 kwCWK8P6L7wroHnJXWZB5lEPW96hXvMj1dPZ64JOhJoQGDh7k3CZpgXtZI+xmgPfv/
	 4XvAdKMO/7IdnAV7LlXlXmjZgaTnaWc8DP6EIlOUDWwHQNhM+R0SPZgAynvRpt8007
	 B5x6q0WEiRBu4kUVSpXYxN2k4GdAvmFLdsDYFsDELJ211GaWBe7oMMSZsh6NwWd18L
	 A2GvQrb6bSuIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC58C369AB
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174554279357.7379.4282601722034116394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9ed1ac78894f05f79414cf5d2900d5c961a8fa11ddbdbc4eaf9c416aaade6f8
Date: Fri, 25 Apr 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745542793
