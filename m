Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB48322C92
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758304194; cv=none; b=MeJVoOw1ny5rsghpZ5RUjGMIjf/gA2sKcGvUc44opJOCEIvcK/gzuyww/Z4lIqM54N2rxN1w95KG+cYWufVoNbA8JKFrU6FFMwOhknZN2nQoG/bHoj0ce/5LofNnWsO2TfhsB46zcH2uBIMmmKSZW9gTaCExip2ITjCA8wHIp28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758304194; c=relaxed/simple;
	bh=qe4UqQ7ut5zLrdoAKru0NiLU+DQFiqiiH0gxYkjQw7g=;
	h=To:Subject:From:Message-Id:Date; b=Qjg+460VU9OT6gi80A1LGelLq5jTkTYc+syIquxUA2ykHbcum4VK69jlqvdlVsg/xFeWtTzgJxEZ1B05WqdJUU9CUaY+StPKhopCupTTx7HbtnmMeLPvxHK2hBuJFnzrrWKt96b2XgGNaJLeZ0GX/L4JPirZV2FVQsON7Q4y8SI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RSlE2879; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RSlE2879"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DA1C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758304193;
	bh=qe4UqQ7ut5zLrdoAKru0NiLU+DQFiqiiH0gxYkjQw7g=;
	h=To:Subject:From:Date:From;
	b=RSlE2879v6AHhiiAuHpNcmFpFc1ACfkN15Lckg5lhUWs9grZGhzVxEyOZ4cFfwblC
	 oTCSTGKzwXiUfbxIvUbfYV7mBKkmkWdwgWLn7N8rHR7gcNnKjGE+DF9HlgTDGn3GTW
	 NhpdX5fxe62eNur3MnE/dCSqqjo65aLHaaNXGKhBu8LeTSGSFDFcoekfButPo3c/J0
	 mYmMiUldapHV5Q6PiqwCL+KFIOAo1KHpUSV3FIZ7TTOoqtugXDBKfcdHngefXXnMRm
	 /kHFrOu2gKTiBrzRlZRUxQIpUdOm9d5G6zzsZrwunuALgsCWia1tIdrymibW10/SAa
	 FPqwJbJwqmWsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F8FCAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175830419358.1391.15588202236323381909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2588cb3165dd39f133d6f055fc7a37161633d9f98b116f7ec9d56af655b82150
Date: Fri, 19 Sep 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758304193
