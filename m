Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E877E9
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744607994; cv=none; b=tNznnHVt8S9YZC8dYJRIgL6DRbahRZ9yMF3u0Mqby4rlE0JpU2tvV6onClSrZcg0oqcreVF5akUSqcMpvEmfNvAtBiqpR8wv1NBw4d/YOl6uKa2AmYZrQvMEXrjOcFez0i8rhOQ76fPJHaybtwYzLyRjSmolYhwlNOcUBEfeYEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744607994; c=relaxed/simple;
	bh=9FgUvGklAXAjhgBHkG80Cw8Is7NR9/W7ZQrPS2WsY2Y=;
	h=To:Subject:From:Message-Id:Date; b=Y0cUpzTrBjk47cN4EiWLhIeEoiSiSfzGVGB0CrfHiFb50p2el00s+exaTal9wwqA+KumpYsM7+I4MlFd9DelpcVCavuGNOBgmlvr6YJPA6cxgOYOdnWRSwUzYh3m98Aq8LFM1lDJLcg2iKSm7C2SET1K0r65FTtCMoNQmMG8FmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FebPzeQL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FebPzeQL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3ACBC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744607993;
	bh=9FgUvGklAXAjhgBHkG80Cw8Is7NR9/W7ZQrPS2WsY2Y=;
	h=To:Subject:From:Date:From;
	b=FebPzeQL8aNVLvfH5a1WEuGL/V7qTOY7AxKRXNYqJpWpqTOkOdS3dnF3g50tLQseb
	 gt3jibJo3y4H3cyXciidr1vZOuIebTcXRTguQScSTGmwbhn1U12WoaG2mKAzsK42ZV
	 vdz8N6j3bdZNW7oPDwLDDNhE1ffZsivZ4Sa5+nTj424lwLWJg+3wJs4S0Wn2eIMfJL
	 uhOg/sDwSq4Us/ikPeffQ8uInA/rNCTDQoKIiB4KSqkTjZD2ENuBI2lhWkXQ1zpJN4
	 9UUCLrAZ5o5nHRymgSKmmXEY0JfJm/OfEMY4P3A9rUIllu005EZLXtCn/SJtfFbcYu
	 YTZbf9miwJWeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A159FC3601E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174460799362.22513.12333623892930638181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eae381dddc10d85821dc835d99f0b7bcbde8ffb909d2d58bfecc0c190ad09b6
Date: Mon, 14 Apr 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744607993
