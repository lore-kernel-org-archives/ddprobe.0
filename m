Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE6228F4
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744539594; cv=none; b=dJJz2JK7+TuaOCe50EXE5EaonRKm9mcCnAkDhzGsS9WdHtmm5N5ksgXZzXtZyWvDYDqcTWHc8ZLlpUiy9SO8GY2CVJWMjtTOJzTVUYhEDWD6o45Ip3EKtrMvmcHEC+CR/g2E6z1XSBZ54wIfy3NLuPLJiwaZsQEVGaskUePcJmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744539594; c=relaxed/simple;
	bh=qYw5pzgipQxjcfmqsIeQAVabUrrQ2Dwr/3/U5ZFGHrU=;
	h=To:Subject:From:Message-Id:Date; b=R6IhUDw4fjwmI1eHNDQ3t3AL4DclXA7/w5HyMbvog1cniXzmD2YHJU095cy1thaTXWQmrip9JioIr8H5GwxK0Lal+iJoyFSdeOKJY1byvpf+mY0SbyAzCZ9Yvo6uyCzF+ogt/wzXGh6mB1m2CZDPxr20COfMj6NI4WTqx0pMUl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tk/OIplJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tk/OIplJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F84C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744539593;
	bh=qYw5pzgipQxjcfmqsIeQAVabUrrQ2Dwr/3/U5ZFGHrU=;
	h=To:Subject:From:Date:From;
	b=tk/OIplJpna4SxG+m9MTEz4pBlihq/bfYHKi9tZqBSrABiYEo7hBEu/V/YfCf08jQ
	 h3d0XTX51GcKIzwtWvawxetKmTTKxUaaNg+HqCkE4UtG/7ubJWLg4uxJvKrp/pUTpb
	 u89kHszBsnyUUagO8XrpXr/mOw5RN1o8WWHtQ7t4Bn6GAaSt62UyIMP9iPzbVmoZeE
	 HgDJK66xC77WXzE6NoNVQjuEIDv2IUoWXNaL0hmf9PAzZDU2TPa2yosV61ypkFZtUU
	 uvWv4Oc3zO/WBBf36uexFVVJGXs7TP7JTtZ33kUcyw0YaXlcXthu8LbFK0zhIi9sSt
	 yg2zpcSelcnEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AC9C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174453959359.21199.6275040518976949662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81e5153f84d0d89b3d1833a80f962253efdf7d545d0a367bbd6c6857f2d85f4e
Date: Sun, 13 Apr 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744539593
