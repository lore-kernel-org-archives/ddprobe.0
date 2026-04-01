Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F601862A
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775019294; cv=none; b=oz4s+kKePiYsUrmhlWIIgps1tZ/5XjM5qt8L+8L2/x6yf7rYa5IeQj85WSUpmFU2y2XJJVM59uLKUtJDrG0mYFci+VhbS3QLhLlbOR0ub06pNML5wn6z849MCOuMd2ETVMc132hgEmbXd81XFXrsyQK7pSI1o6Drv3JaeiIkQpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775019294; c=relaxed/simple;
	bh=IkMwqKgzrGDtI3xvDkNc4YrHNslL8Q4mY87VYYXYHWM=;
	h=To:Subject:From:Message-Id:Date; b=rNlWXsBJAgp4n1NGXBLfbp5Ks3/Xuzhn336QVfkuw/sIfj/Rd7KJuGdNdCihf62hD9HtWxNoMeGc5k2MlP7/K+CLwTKPr4hyMBeevqMUoJj8e66BnNMpvf2o2CZXxxV254gkbYH2QrsS2sUq07AhvR34GvE3D8ahJ+3FY20WI/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VchU93iH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VchU93iH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D98C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775019293;
	bh=IkMwqKgzrGDtI3xvDkNc4YrHNslL8Q4mY87VYYXYHWM=;
	h=To:Subject:From:Date:From;
	b=VchU93iHMlz6VsiEmx0LQjVwmydtgf8F+svxGUyMX9znSP3PDXoviSjphggKVYMh3
	 elg8KOKaqz2EJh4h8+flYZOP1YeFT3zUdjiH+/IGBXQUgs8U61zYy4utHfZmw708CQ
	 hrF7OuFFUUq97NF9P4cAuHZZdyFfXAgzXS9E+ZJaVH2LEx6/kROjznle2cpdWWO78h
	 YJXiI8LZMAQ0CEafQV1nLS2OsRJKaIkUdNzV1spWogXi2THAaUWSoDLE4wPI11wscp
	 kjgC1wws4OyToCokoWlOQv8jd8HK62HGFrMhzSKT0eXu6TtVfnjoEpe8aDv8wRk119
	 oP2XTz3TKbu1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C8C1076361
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177501929358.25912.16304876925556582789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5331d12040166ddbadfc4baf9531b14090950165f1701c6fb95372ba5b44f2b4
Date: Wed, 01 Apr 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775019293
