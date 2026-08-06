Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DCFF32B112
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786025434; cv=none; b=c+eIdTfFOxaSKjA4AxygXE50EPHUkbJrQPP9ga6yRFToPEIYbddxyqq+yUwK5aWV52+wW/opfnNZOWXAvbf0nH2crSJyL/z0W1CWF27RLYXkdbKdIWU7CzjrKdkT6nqhePw8bij8qQuGL/ZPR6PqUplXaW6k4JI9oilmTSKvKuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786025434; c=relaxed/simple;
	bh=UkNB5HI+mLiduFXsiNKKThXRvW9Hq8AlOy9OqJ1cHbA=;
	h=To:Subject:From:Message-Id:Date; b=jQcGOLqMRDS6XQyQnhiuX4aAoINCfsJROEM+GAANtzVQrLlZoeITL6l2vwCQss6QXH7ZihanDtmyOEUpcnJVhBpndPLCzrcUpNvRBm+zTGfgNsdDTqwMAMlJvJ1ImN+/CQVzMlrF3Gi46QnP+YRCHc/XBaoTeoJNQezzYnXwjPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WaP0YiZC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WaP0YiZC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D427AC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786025433;
	bh=UkNB5HI+mLiduFXsiNKKThXRvW9Hq8AlOy9OqJ1cHbA=;
	h=To:Subject:From:Date:From;
	b=WaP0YiZCipyfTu4MQrWVyqkmYuLMpOeKf4Z7cNrgQUTfG902N0Dj0plHWxYRMGyOD
	 UqdZg/EuOX5eEv7o2upslwIwsBfdasvajsgya2Are5hjbZLC55aBvDVoIP5+T2y9tY
	 VDJO/glN8q7oP1WehRU/D0MstagT+Sqlm6PGpsGyz+bH6EUKoXSCpckJXsPzXqBefa
	 K1xAsgnXmTFe+b04oOH22q426+Y9zjlojESLT4p6MhFOu48zkvJtRGaLUji2aV8ap5
	 LjNQN7/IR1+V8le+3WbPzZr/q+CitKZK6hl0hqLOQKmPlZdsK+YpLaf4Sxn1jRDCbv
	 b9apKiyyb4ubA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD527C56208
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178602543369.18438.5152514880451340761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4695e9da4bda32ea273d4d3b31d14ccb17b84103dd8c889fc8b21b3fec7a01ad
Date: Thu, 06 Aug 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786025433
