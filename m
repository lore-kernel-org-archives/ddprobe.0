Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ACA81F1303
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 21:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741039134; cv=none; b=cKgiE81dNK9DVodC80RoEpdttoMq4yjMRn67cdcaXdW/Dq8OgS0FO1kpD54T6Ijd73xkb9PxLZWwoMgr5AnYykAO9Oopcju3+goRPThslnUZW7FJ51CfU2avlD9Zux5w/jrp54uVlZIP3Kyw8Fta3UIV4YoLhS+Vwnu0RVBcJ8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741039134; c=relaxed/simple;
	bh=aYiXWlr+JqYr5ljaO2ZlNj0koMr4l5Q6e9kYwZDD7GY=;
	h=To:Subject:From:Message-Id:Date; b=f0/VhC3qwAELcFaeDPsAIu16SQsf7ACXIERULOg0UGZ4sSkuf8IfoKaKPe7L2+I35/TyWdM2hd0JDEJiuM7PkQn3BjGAvfXxLQSGw21+7b7rXqfya4oq5Y2YErlwD8I3FLumV4rcEcEuest17nnCGA8bFpgH7ek95Isvv59+7C0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f/7lvte3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f/7lvte3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD58C4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 21:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741039133;
	bh=aYiXWlr+JqYr5ljaO2ZlNj0koMr4l5Q6e9kYwZDD7GY=;
	h=To:Subject:From:Date:From;
	b=f/7lvte3sgwY6Jv3/YsAB6BTYuCbtR4SvoEtyNCH9F8mgFn4E3+JVme/9LP3nAD+l
	 QrBtm0UuiIUGdRBi/DguLHDaMVPLfYOkq9HrzI+As17Ar47JmqcaF41fPkadAQGLoW
	 BemlhY96utdXzZNF0mdzwC8X5QiHcNuEMJpontSzm3NHqY9PgS9lOUxK4Y58zZWKls
	 38F0cNotM4sKWIBwYx8sE3mc1Tqt/AILusFTGtbyT8z9zyZTiQa6qYRYYaMEt5gkiu
	 Z/HQ+nQyuwkJHIv+VTmuQPJBp6bhbjEMU0SonnMSwF+vFlp8v6/hHtFO4SHeHqPJ1g
	 dvcRxJed9NzxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BA4C282C6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 21:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174103913359.10792.5375663353634711772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3df63d3e0faf02b290744751e56d1afbbea06adf233a1b6037b8cea3256e7dcc
Date: Mon, 03 Mar 2025 21:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741039133
