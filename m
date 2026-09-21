Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562EE43B6E1
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789995634; cv=none; b=g2YGBnvSV0Pd7rOM5s2kk1FepBFVZvDDudZLmmYm9FF55LTGSspFELLxYOvPQlHa4ZmKEMNL0aVlu+1s7B7arEv5FkMO4zqJqz8r0jL7QXN++lPBGQ/wVOgSkus1VNeFGZx0+moK1h+RSjHoaJgpGwEnFWIMUnnthNypRq0QQMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789995634; c=relaxed/simple;
	bh=+XI4qVVChx9kBmEnGuC+dW9Yawr4I/3aVKRMHgU3l5E=;
	h=To:Subject:From:Message-Id:Date; b=J5ZRRU07TF+ZqJr98PYQLom5M+gImGalN3vqn+anja9Sr0ancA/HGOYmKUBLQFWZ16Ixp/W5f+J2bKdMdQP3WgKcSyHr61xcLmRcadlSvUB9KBZWwk8EG03JEXErIkfuYPQDvuYUedH7m42sLoz19eDMk3H4d0DgQqP+ve9eayQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kd6g6Y/m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kd6g6Y/m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFCB8C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789995633;
	bh=+XI4qVVChx9kBmEnGuC+dW9Yawr4I/3aVKRMHgU3l5E=;
	h=To:Subject:From:Date:From;
	b=kd6g6Y/mUcBQ+89Z/C/+ZzsIq6EQnrY2tYCZbqS2nh6e02iVEIqttXooWNNaY5zd7
	 tgLgsbAGJLmtF/uhNE99pElYYi10hRwrQ2zBsNHUzFN1MS7gdCaskEM2voDrqTU7+T
	 ibsZY9K+9OQTgjQKd6lyguZzHOsqa843MIH2NgpAhEKIKjqJEqChxIBEeFGaq6PgIE
	 1BQjR/7f7WyrBezKHLYUyRzrvsYPziCb/s5EEFEuiSMUE1j+oblwOJeysbNyZn2+Yz
	 bXoF8qEjKTbvGrKYB6/WiFNNQ7gBIxzVKq8YtaqS6+1Sgd4LvFsOHsbaOQENeEz733
	 wGrIFzhcIp6NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3D5C982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178999563369.11455.13849047884183965321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5c56266ff80d6ffd95371a1f448aa61cf5d30763d5c4809d60ced9665c8797b
Date: Mon, 21 Sep 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789995633
