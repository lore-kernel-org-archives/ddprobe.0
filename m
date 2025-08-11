Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3611311C32
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754925594; cv=none; b=hy4f25azJ1YZuRhHjICqXaaa+gzqqP9RC7lOB8U/ggOC138k0lS0LoWl0Fdx0EZIwUF9fridWtYfwU9ZuG+J4OAadW7PooSO+6NdaaphUXvc7+O361Pe4OYdVFiuYKGU2FnVEWCA0V/55JK8jg8ynHgK3wjaGx/VPAAx4k+15fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754925594; c=relaxed/simple;
	bh=Lg48rdVyHNnNmCjGhONOVIjZyyMQEQEukCST+JeUarE=;
	h=To:Subject:From:Message-Id:Date; b=JMdZvmPRnOjr3dM3fLA/Cdc7g6Xe1dLP6IOTD5NXHNnM5To5LsvpFXFmLgjOH28MzRJ99hc2iJ00IjbxrXYw5a7ftCF8WearlWoQiZ7RIpOfQocK85Hg0kpa8T8SOSOndVZPhZ8vR1aSyC2Q3O1bnGU4wD/UAkwYNEuslD7dJe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCtxW+Dv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCtxW+Dv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95615C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754925593;
	bh=Lg48rdVyHNnNmCjGhONOVIjZyyMQEQEukCST+JeUarE=;
	h=To:Subject:From:Date:From;
	b=aCtxW+DvCUYKdh0TgHsWeWToH/uocRx9LmuqJdBzWuV88a4QyIdr7m5uH9kpHQwq4
	 waSH+Cac3PIyGMqYov63EdAzwN3hgce7GfyC3AO8w54dSJjUTsAIz414BPQUGKNm5X
	 e0uysfqlAN2da2KJIS17mwlT9ZvljpN4S9HwDBsOu2XK2G4ZdGDkUQPwSVklo0UUl2
	 Z86owYZGGCHJPArsGvvVxEbXmaKqD52XfHMTx8B6FLwHH1cZXZI1KfWxxIAbhAJ96v
	 hQrcocvljrDfTskrU0tr7pjdv8EJpMGGrL3e0X8RnVUJoCemjk6VomzsZPuDGTAnoa
	 EHgG7glaekNyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECECCA0EC4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175492559357.7793.15894437855625654530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b92af282c20f6a70542c090fbdf85396bbc8889896f7faffc0c0428675e82755
Date: Mon, 11 Aug 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754925593
