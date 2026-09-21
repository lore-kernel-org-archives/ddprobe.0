Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64DFE26ED3E
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789965634; cv=none; b=knWM2kLEi6NxLbXXoStGx5g/qAKkAFqomJ3Rz6TMzwSCI+ylJKyfZfV3zcu0Amebc5qpOUeINu5xE4Bjb3c7LTt92J7VRGrW+KEN8Lc1LPXXTKmN/b72jLYEuQXYK1p3DMKMKL2D62DiPoxflMrtbWohkICqy5dpLez7O2pviuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789965634; c=relaxed/simple;
	bh=aHQFphs8WAcuwvoP+gJGS7e0zk4Zmow+LrpXxV9aLGo=;
	h=To:Subject:From:Message-Id:Date; b=JhTAIDwqRQFJnDAY3DnW3II1Rix9gVO9k8m2YufG/Lx9U08OJ8yajCemVvrDfriV/m8QEQDxiMdNgyxBdiAmZzejy4sO0KuYUq3Ds3HHAN1r8V1T3sEpkea1OLuyt/a8aWod+u2+GuZs4QtuuT4RbJU6ao7KQ0Lt7ek8Gd2F1mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WsrWDEDA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WsrWDEDA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4512C2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789965633;
	bh=aHQFphs8WAcuwvoP+gJGS7e0zk4Zmow+LrpXxV9aLGo=;
	h=To:Subject:From:Date:From;
	b=WsrWDEDA+3WZebhYuSpHT9XtJr1v5k3CRfgY08hGGalQzzeSON0VbkgjFPSlVf1bl
	 3SXZdT0sosu6+MSoe0v+RLaR3V6Vr8oat4jyus2ZWVX4+8+Oicmmo+KcKWDdxtZBkp
	 Wg1PhzIqPJ+xs5LpL2IiUt/PWhJe4Sl+bMkBaBEN8zeA4/Yh2osb3CaE1zY4d5dzyr
	 BjhlL5mQtCmRm8t9WZ0rJLgYExy0gqKCabBSzSrSWI3Ks5AevaL9JkAR6LTIg/U0+W
	 wgkbp4sorB9HjY4l2kzOkS3YiRZcgAgRLOHOGIoQQX94zyaEjxuuropftLOW3uEQdb
	 K+6JTWCJPaewg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08E2C982DA
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178996563371.20435.6478246071617547747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a88ae38480b90b557d4c3da24bb3770e7f8c26afda94ce5532958fd59225b5af
Date: Mon, 21 Sep 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789965633
