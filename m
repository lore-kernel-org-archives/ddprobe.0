Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DDC13B2A5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727382954; cv=none; b=oVo69CHC1BTNSdFWqNgy+pIiqLDdMSeK+9y1JsNNVQU6oUaLJmIfqLb722z1KFT5/A/Sww0d0ZQi1TUgIcpLeTgY/0GmCYT64ZJoR1/yhGiKt+d+ssb6wiwB4o2dhkHJs3FMxarQEc2A+ekrXHZOEj6XXJt5BOldi0R0tzpzhN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727382954; c=relaxed/simple;
	bh=FrPqu+nqjm62O92+D3ELmvGTK2yA9o5HXnRorqjOq5E=;
	h=To:Subject:From:Message-Id:Date; b=Eub8IZ0nDffWwDHM0cdKmKkaJ88fKydLZr9set1auDUXpglMVUZqhyaaSKgt7PLuwS5AJxWso5R4j5Lqgh7PgneDZ9TYR/Flfvn9xZWrVbbs11CgVoz55Z83tF1MHzTTd07xg0RlzLFO0EXMwFJRYCLSW0YvF2+L7jrf6dXLAYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sBtOgJUZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sBtOgJUZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC0CC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727382953;
	bh=FrPqu+nqjm62O92+D3ELmvGTK2yA9o5HXnRorqjOq5E=;
	h=To:Subject:From:Date:From;
	b=sBtOgJUZNljuY9F8guzlcejdsFHOQeo03knj8SGIUecJO8ww6qCmitSWzDIX2v9GH
	 BXW4Kw2vNdi7yBtBSCEpuAsv1pp9btjk5qxwhirZBLLwXCUGmAs2hjneFMVbPPjH7D
	 l8PiY6tTPPLHswq4yTxrc3IUGeM1j95/kulpWev8eAJVKHkYASRI+5MpNnxASVVEOP
	 CKSDnb73AwJkdkhOr+tQ5tub3zMuZ8ilss3Uk4lXq3CukMBH0++5U/0iLq5JHot/lk
	 2UxIozQSOCHFlfB1DATeQ/edSo61e+hqF+KGTA+A4Yd5hbqqyNPb3s8rGs7A1XM/tk
	 ATCKWBRIEP6mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E2FCDE036
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172738295358.25158.12062584611728477735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94b612f4ba0683f4c005908d48b99fc2c5d0818e900080fd20b1e9c9abda27b1
Date: Thu, 26 Sep 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727382953
