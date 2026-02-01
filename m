Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3179B2D0C7A
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769989434; cv=none; b=GH4uQnol3g5WH0GaihNWPJQ1IHqBpJxN3EFWxrZ+LNZPL6raTcupcuJDxXyfXYRki9ROLhjOiWKf+CVqZ9ceYEdTq07KNFkGeybNbVQGnJkX9fp5sAsyg8j+/S02jjgYLnX+qP1sNL41BACQqxXipUfUFaKDzW6oW46xFMu8Bk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769989434; c=relaxed/simple;
	bh=hz0DBT83mJSPgIlmMLJGnAIHsn5DMdLoQ7dLob4xVMI=;
	h=To:Subject:From:Message-Id:Date; b=iPXICb0bohy9MVzjWt2Umgnyspg5HtlsVdQV1YUKQ6rkl6xfzV7ABeIZsI6Oj89MoZGd17nddBCxZ9muqihE42hsemnbV9mdxhncl9tL0TkQk+JTR3ofNpGBrnyXXKAnsyqNd38BHtcSrkHm35j3jLPJDkWZnxP3+FizCbropG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kI8Wi8BG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kI8Wi8BG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF4BCC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769989433;
	bh=hz0DBT83mJSPgIlmMLJGnAIHsn5DMdLoQ7dLob4xVMI=;
	h=To:Subject:From:Date:From;
	b=kI8Wi8BGlGk06Y/8TmOjU66MqQQ7QnXczJFVZS0KcYk0fDlzqznp0ffZFu1zyvprr
	 eC1MEovxTfM3kCq0lDOVJBXPXcOtMPlPn0ttC+MFiCD6TqqyY1njCoGm6FKmB6RSz+
	 DpI49LFmLsTseuC0Sf91PLFZ+U/+AL3RbQPCn8jVn7Sp5O2YPgttJ4kX8AO7QcR44C
	 vmiJPSyK4chgCfHDE7+oijFULQXZxuRTtm9wt5TQcAjd0RH0dqaOZ4uCIMoC+UucBe
	 1YNDAt2YC8gR1WgerXmrDcQjrj2lpMZ7GkblEgNtcsXsW3gKSDpK7nWfVHt+SYwJBW
	 YCkJjLZkfdxyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97197D172A6
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176998943359.11134.5067236131966349152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35208ccf4b3d3cf7de6f2ee1c7be07da5cc213f327ec98a261e36a16f92fe9be
Date: Sun, 01 Feb 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769989433
