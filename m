Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352AA3232
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737599154; cv=none; b=bitNtNZod4l3BMdzUR+2MvB1hEzFIRCZGVbGoKfA43KzkYzkFpArP3QSo9z3o3qcPxna3hckkMTb3s+FxAT1x3AghKnJkSBSiqKVgFmJgsjQOmcmgmStIDisuMNiwjzhB09A44qMKrNcr00XMPZ5/RMFUqUN5zvYVkrKC1HtLNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737599154; c=relaxed/simple;
	bh=iCE3yCfdOQTHX7TfhebCQjLZIu5mwtLwP80WgoTCOYE=;
	h=To:Subject:From:Message-Id:Date; b=nsr7V1/G7NYp2JE5D/6lSYgyQpfA+0w2e5nbP1Qxx6BBzAsM9bNF59ecA2kXZJ6LmM+ZBJ+sc8AYfIkyCs/uPoBcSpqV2MeJzZwihBJNuN+c9vdrzoMsQnQb2a3RX98FRFkBrlKqLst2xUAQE6jvySUBG6/0GhgNY8Ys6B39W7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cc0ghH0U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cc0ghH0U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0942C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737599153;
	bh=iCE3yCfdOQTHX7TfhebCQjLZIu5mwtLwP80WgoTCOYE=;
	h=To:Subject:From:Date:From;
	b=Cc0ghH0UyPPbt0gUwlS91wXBZjr44VI26cDB/7MVGLYNmEBAjtufUkJJPAOLGqR+Q
	 RTM35rchPZd8xde9XQOi0/E3OdnXBrvxE7U2fumiBp0cpuQhkus9pihJm35ntsqp3+
	 uZ8s8NmwqFo/eeJxkm2dk7GORvt/0aV0O89mBJKSmrmc967osN5XjHp4dOwD558pZl
	 f+4g6TTDro9q+gjTxnXBAYeW1NxkoyFYFunS6fNTgUwVWVu4Jn8it0OCLhkYJJwmZN
	 XU0ZeP8DgwyNbIj4D8sbuG8TbMSUE0zl87GFGLINgbZGZOwktD04xh4Rq8EBlYN6NK
	 pfBjp7yCyie1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A73C02181
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173759915357.27163.17207614462706879711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b379d6787f2befc88e2bfd655c14a55406611a5fa7ced20ddbf74aefbe4bd53
Date: Thu, 23 Jan 2025 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737599153
