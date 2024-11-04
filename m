Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201EA5680
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730723754; cv=none; b=tFj3CWuH8/1J7yUKwanRNKs3W1KSjlyC4cJBXrwm+vuAGN6HIOMJ1krMdE1OfZcHOuXgFHQj/r4wK4WN2e2uJkSoYDVHpgzvir5bdNjp/fijZ2sCJpOr+xBY5EeEJXowpx11ohHBpYnrrYLkUOczChHIOFbDU3d5/vXXTn4teTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730723754; c=relaxed/simple;
	bh=0+QWvZSd9ICslYIz2S4CJVfBN2gcMfbq+twe1g+7t0k=;
	h=To:Subject:From:Message-Id:Date; b=frtEPsKaWk9hkIIBGpJYKAUFMc3pK/J67CuJuunaZp+FnNw/KX47UH2DMozmXrbxWXkYHM8YJ2hYTciEEnLFm+uHcf2BY/cu25MAtvjpOQiP/Y/mg5aDrkdaBC9SCpZTpis9L3oTpUScwRngLYqT4QHqSedeQhnvPNoC7dg/NaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TrK4fOjx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TrK4fOjx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B51A8C4CECE
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730723753;
	bh=0+QWvZSd9ICslYIz2S4CJVfBN2gcMfbq+twe1g+7t0k=;
	h=To:Subject:From:Date:From;
	b=TrK4fOjxgB/NusDh0FpCgdR+uvQQPvKG7fT/IprqwpD0mO1/M7CvoXLOVwcPGxGsA
	 I33Pw/u75ppaMhZjH8Qu2WlQ2g9YEc6QiLiZxIqKDsGbg6YUx1cLaLaTj+024qgGyi
	 qyPnKThncMQS8delIEqDcX+nJquvZrOFPx9h9UBwZMEpXxiaJDskRJgiL2RySRrVqy
	 xdv67hKqxXFC1hBV1JT7HuQPynQHjlg3DBnmIC6LxPIWz+D/v0aieixqXv5LyQUfz3
	 evi3+SXdJCKNt0+wdCmqnptLglJlKoCVAWhDHSgzBI76iXn8wSqYVv3lV0kbh57Sv2
	 6H7gLG0Goo/aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCA1D132B5
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173072375362.20594.2791522823275643442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3653c50d2bf5d7427763379c28f05d616ef3196d63cbaba7e597db432e8a9bbd
Date: Mon, 04 Nov 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730723753
