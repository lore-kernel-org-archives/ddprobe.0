Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2989282866
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789087234; cv=none; b=fyAcuoKOfD9qJ2MYWGvN8HwDf/MkFSuEV6rFZdwzcPBrCCif21dAS7FXNVmKITwXVdV8sOtRRQhqMYCsBnIK+6jpNvOpo8qj8SxZulHtteSR8KuEGbG0QDxbY4yGoyeeCgFBID9A+vOUFEwYtA66XvFO/pmA012G8coX5/d9438=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789087234; c=relaxed/simple;
	bh=eI6smyOrjqmrVL3n0W1JXzcFTH8HqFgVZv9Z0W5+YuI=;
	h=To:Subject:From:Message-Id:Date; b=sHsMOaTNq9BhHl6veuTm8qAXZ0CNQ4r+NEC9EpcZwf87o0YDIVdP4Aq8RBDTA4nA2hP/LmoP6I9i0kZcCAB+kTZD4xkA5lO187w9ExU9lTXF8fRHWsznBUHepMqm15wgcvrjXct2ckjHawnOtJE87HXOQMh4KVwnRApvmKEhV94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RyzrBHEU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RyzrBHEU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE353C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789087233;
	bh=eI6smyOrjqmrVL3n0W1JXzcFTH8HqFgVZv9Z0W5+YuI=;
	h=To:Subject:From:Date:From;
	b=RyzrBHEUgOJb4EyvJcLP/oPQSwmklZJORbyRpfpF5FvMrN8UGpjpa651+xyJhdBHp
	 R0mfA7GGlk2OcgbOClTAjMR3/zDJYPFrSoAqZJQxKKbTYm78AHlARCWq3e2PRuMAjb
	 G8SviWilHlVoKs0GSET58udUHqmCFss4iEqIikl6FQAmXHraRwO9zrJxM1+WqtsRWH
	 QzBc1PmbLSDqfUko1VjaXVDMU1SAA1IAMLMoGWqfPbJoVU98rhBuZ66lLjAR9LFo+V
	 +GLCkMHOsOWRbezSyEWkQV4oTh62uzwsOU9fEOPjqvpKKqaHXr8usikTBabrMvAzVD
	 fyvgYz5RuhfgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8E4C88E41
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178908723369.4985.2019003840713485601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53e50baf7447676c3c9bb167ef0cf05ce986684023f856292115bec7b0356558
Date: Fri, 11 Sep 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789087233
