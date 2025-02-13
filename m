Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47142208974
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 07:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739431734; cv=none; b=rqULZT1xzOOCwJ0SNc8HT4b/aRCq+MNhIfqH9nUGGmIgVUhwSuzX0FqfPgfVnt+xmxvy0sbb7SYZ11evOI4EjN5m91JbsUlhXj+sknh72q7u2HNRgYObpEMEM5M2HniYsfAcEZucNogoKhTmOzsflGrYjLeZJdLnMI923Do0+YQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739431734; c=relaxed/simple;
	bh=L/df37cZBZRQ7ktW2gpvFxj0dmfH9jagfuUPt6LL4WU=;
	h=To:Subject:From:Message-Id:Date; b=r6tVraL+F4F3GMF9Jqjm70ZtFpb0C/okaref2vy4UiQDGn/0azUJN9a84pVbaz5F97VKCyoZImqgVFWNNGSgPJuiev5kwR4uxdHQby3SqJhL5z3eZiYusfh+YIjbZE7irTxCBrHwxlmkhJnZWVoUehhh/dl1o55ImTvGIRhqnus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tpu+egv7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tpu+egv7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E5BC4CEE5
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 07:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739431733;
	bh=L/df37cZBZRQ7ktW2gpvFxj0dmfH9jagfuUPt6LL4WU=;
	h=To:Subject:From:Date:From;
	b=tpu+egv71q6/JD1nOhKJio+wEBwkOrvzOFKCz31imRa95cJZX7DERPh7mJ0I5lAw9
	 slA6hStzslVHsZOlyrq6esFhV4G6S03nJfLu4NKkMsoyLRJ8ziCGd0nmsQhE7kgK0Y
	 HXmZzrRB+jLunvrCOliovtN7U9QYAOvJ/WwCFOnbToY7PPIM0m6df2pe8k6VaTqtsM
	 lYGJcGX526JO7MwUA2O2s+kejUgIWamoiQ8UGrR4+RzkbnPrHx8qLKAp/WglK9r1oV
	 OY2ITeSUTeIp4vx7DMg67+CycWo/a77spZfII0/LbIk2oKI0VOjLeqzSSrYmGs/FSe
	 IEIJzjD2ZOmvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D0C5C021A7
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 07:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173943173362.3890.13490237319902100153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2eda728f134156fec457438441f254773c4a42b58b1d3227d28e1ecc5084481
Date: Thu, 13 Feb 2025 07:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739431733
