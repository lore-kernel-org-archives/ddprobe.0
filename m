Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C528223337
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755620394; cv=none; b=qLz26IlNK5uGrkmNNAf1fUMIM5FZj1Mb8kx+dbVerwqzvv1gg53KbZm9HvYQ5DGqx6GPfXCUscaCqiOawA/CCYWZsru/9aCGoLANuvtUvkcaYVdN/YvfaKhTdNR/wcaLywVk9gxg37i2Od/++51wRzbyRUxrfbaGXKE+UQaBvUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755620394; c=relaxed/simple;
	bh=gPWA1RAwe6uZP5OUXw9Tjv+tJDIjaWwhB1LLg6xuv5Q=;
	h=To:Subject:From:Message-Id:Date; b=CA9TuhNCNaHXFpOG3imQnY0sGhwkcUXNMvnMzUYY88q4CMvvywd079CTc8P6B1/mgV1SUEbf+1vR3OSGuKzujToZZBA9+MTlPN5RmW1gVd9wAKD7F8vrLBLMQnQTKPAm/ZplaGBZ5oQS4Wp3f82nUXbyx4U+qBuC38tsmn3ATAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fsmLVEJd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fsmLVEJd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A016AC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755620393;
	bh=gPWA1RAwe6uZP5OUXw9Tjv+tJDIjaWwhB1LLg6xuv5Q=;
	h=To:Subject:From:Date:From;
	b=fsmLVEJd5bmstQ0UbYhRtv6mTmTPvuLk4l/+KY26u8GC+S/nCplCjY6xXO79MIjY+
	 Sm5zlGDMW97s4MApfAXx4XOOZk0q1L8+k+JhS93uXV1ED/5Tcc3/Sn4c3zP7hKNLlY
	 yttO4bj16ivpFH7EQQogc+ckZx/SaGRZDQAtTDHPSkk7/3TQdlfEbt4w814kOVWIqT
	 O0DfyW5P3pJg9rHRoIHaeTbY2VAJ41TQ2r6UOKWTDzv15XKcoAqw7hpmw1/poiS8T6
	 HSBtJz/W2BThCp5UVc8L2xrrtN5K+L0MP5T2IzT0N1YkowyhrxNc6JhgDItaqKswtd
	 qWq25k5P9KNlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3E5CA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175562039357.20689.2768300894023488072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83e119cb68a72fb39dc04a95dc0a83fe650042887c708357e7b6c21b3e5fd5db
Date: Tue, 19 Aug 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755620393
