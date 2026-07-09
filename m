Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4373E3DAB
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 08:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783586914; cv=none; b=Cb2/sXf0qZcnyTA0faJAcKNzzC1MqRQdSTkS1HPo7O8wC72LdrUN4c/qd7sLohuMvjY7OAGfyLrhkPn6t/GzF0Na/QDnfVbsxZk/EpHPOgIh1AEly1E/5cMT4gtn39sEZfy+GpHPjev8VLIIYIcP1fpXc4y3WZx03Y+2qfRNyB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783586914; c=relaxed/simple;
	bh=xcu2Nm4S9Ie7MvY0M5LGtCDVAWYTjGhZDaJKHZkG2dM=;
	h=To:Subject:From:Message-Id:Date; b=HbmymRExb0tmSfpDdVqFV+5hFJVD0vM4u7SgR8OWnKXRiljhDbclAj34NAjrikv9zh9s0nz6UAvFMUPJUGV+/I8ITu74Zou3jwNGe9Q+wsfziTlmvShdjlZNkb5OO7liwsp79qsvxkDLRLqLT4g0D2HrM10q9GZxWSABpnDczzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RkOUsMs0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RkOUsMs0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C81EFC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 08:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783586913;
	bh=xcu2Nm4S9Ie7MvY0M5LGtCDVAWYTjGhZDaJKHZkG2dM=;
	h=To:Subject:From:Date:From;
	b=RkOUsMs0s0pX84A7g8uMrXOLzjj6BcAvE+6GJCPLWn/TgMK6y3taZW0h8I/UpAPJx
	 lR7nHMsdOldzPevhzBiZcbrL6+BQJvafvV0HITUzIHv+rsHsiS1G/u7pFHhXLSmqqE
	 1PhyaWOW+q2zfe7WPaEkknGElUuDJFqzBM666njpZ811OhKSfgxdUOHz0YuaIgdk2A
	 xt+Aaj8HOAmggDEGCrfg34pMwavxCXc6Za5xQ0s6zxAHWOhrtKp/LKkbZdJOK6p+Ca
	 8TwZUtwm+e9U1yQiS3X8N24pX9tOMa9FtAamjkkcGNbVS7HSL+P/SQEe2qX9nOp6F6
	 87T0C6JZ9gJpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85A2C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 08:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178358691368.25590.1661041068986461848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99ca31cde1df83b1391f9712b2cc1b9a7992c2d2737764da97493b74842c2a89
Date: Thu, 09 Jul 2026 08:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783586913
