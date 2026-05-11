Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CA793A6B84
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778485834; cv=none; b=M5O1HY2s+7kVfBs2PM1HIhjr7nOfLU+Bt94nSvcN+qci/G5bPj67p5EkJGDL+VAGCoC7BX5gkekcciXjsPB7mb+GPZHGLe7Tkj+0Z43ddRH85D+eqw3rxdYPeK32bBWMj1nu0Bf/ZarUN3EOKSW/5X3u37ziHSAgoEEXt6VuejI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778485834; c=relaxed/simple;
	bh=Hq+PWPACD0Zu/4hRSY/YfbLQpAY/3JpL6+aHEz0/m6Q=;
	h=To:Subject:From:Message-Id:Date; b=D/HIRXWmy2eiegoA89qQN5r8ktANxlJUyU+hNHkT6Z8HQkcskV4voNheTHZa42/hCxBWEamOXnx9YylL8x/b32C/mzvJtpFQa+E8VTq8w6bZehWIR++OlmzFYinemNzVKRGyI/wukKoqCGmcAg0Vtw1o/BSRLtJoUqybUbEeNKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cDA3TZpB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cDA3TZpB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CACE6C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778485833;
	bh=Hq+PWPACD0Zu/4hRSY/YfbLQpAY/3JpL6+aHEz0/m6Q=;
	h=To:Subject:From:Date:From;
	b=cDA3TZpBHw6cmr1sWNoRoy0klIO7186K8DS6Y2EBHjtbWeS7ERiepXdk7gFyoyLKK
	 zjKcol1wg0t1ChqaPbowPyjTD+JGgwKU55jqf4Fl4Uq7MuNJslDAU3OUQ/SToRKJaf
	 Vp1xauvVYcOFgQuz7bo4nFNoruGgWryFW/a5Otyx4qza8qZj4GiUAVkFGtJqh1ZGdh
	 2V1sKIu6ZqOnAuUhjXEWy1QVpgSlIUn+NYpxG53SRAe9U/asUtvhQ6bnMSlkmbNWPX
	 wqoyeOsfSG9XGqOE5Qndb8fjPDR8xMPQXZDk1TOdkaaZAsWznkCfOAf3KSbLqMSXq5
	 x6hi0OdNKg0pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBF97CD37B5
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177848583375.3318.6397334123386329739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5c092e517b32a4f7c2ac29b9f7de0263ef8a679cbf6a004ea972a43756c7d6e
Date: Mon, 11 May 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778485833
