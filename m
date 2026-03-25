Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271FA2C0270
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774470894; cv=none; b=ZkjnR7EIlF2odEnC32cgVUGi2MjWl4w4dx/LA/SauxHjLiJ6BesSXfI5K3okE5F0nBovuLbSQp/C2AAu0crhm1gsa6ygO4kIk88NCi3LPwXqdIkn6oQzvVsTJfQsmQ4uuiabYd2GGEuJnCdknVBdSu/k4xIjh+hxMxQ/hT7utUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774470894; c=relaxed/simple;
	bh=8GX4RnW6gAbh9cLx7QXj1NAyNJOgvkniYv+vJZ3AIH8=;
	h=To:Subject:From:Message-Id:Date; b=Jies/hA3K8LP9hHyfZAGG7xD4ESbQnb034iRKYrG2n90VNDekInaSPbFRQ7WT9Vm62Lu7i2IiH4qDsq4ulXVjqrCzLEss8U7dp7Ik1chScTG/r8f2+spkOfwvu52RIkk9tf/OBOT7zLsNjwHMPKmHGGbyELEabfMdmBhFSDxpGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S5uKy2g5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S5uKy2g5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B8BC2BC9E
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774470893;
	bh=8GX4RnW6gAbh9cLx7QXj1NAyNJOgvkniYv+vJZ3AIH8=;
	h=To:Subject:From:Date:From;
	b=S5uKy2g51eeVVmALpqLczsKr06qmDGZEEQ0wi2M/er/hP0uAv8l2Y7N+MKDAB0IB2
	 kCforfa8ZIEWa9lsu8OViDkFdW9b/ptQsTM8eRAKZu9a1j8g7LVlYHkTO1ledFJnRT
	 0rnlsDgOIvsH3ZO73Xbh3UYrSKGRX1tPdyQz6n+UncJ683/JVEfCcOMjqzCzTEimw4
	 FUpbHhrZGbppwwpv6cxgdxNCr9yxneFH8FEKCyFaCgW+hesQhBK+dRp7RQlwbte0s/
	 GYS4MCLWrHdlxiASJrCSwxTTKzg03lEfxGWkXOPvAYPAmec22aYsKP3QRe5uvRX8VS
	 AZhgxyt2qzrFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92955109C05B
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177447089359.15113.5582793388569176710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4c7cfb7e3c43f419a5272638e11aa8b53be29ec8cc703e9dc3047b54ab38c8d
Date: Wed, 25 Mar 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774470893
