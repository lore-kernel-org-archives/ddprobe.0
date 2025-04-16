Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F482DFA31
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744778994; cv=none; b=mvExU2+pU73bq+YCUDQtl/uVH4/m/JGPYn2ggFXZGNVhuwvr5ap9WpmZ8K/3FDT0V6w8eX1ZGed0Y7P4DA8rq6bmNXtGKnf/RUDL7l+unzqjrVqa5EAD2GnbPVVvaFSDvGX18Z+7Pe8a8fzUzW1GGppeqIyLQzMqaZaVsgNGics=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744778994; c=relaxed/simple;
	bh=0EKBajW99/ThBwlmqcfs4bxZzH49jXpxgWtSvefFNHk=;
	h=To:Subject:From:Message-Id:Date; b=Ztrq2W9PUaY0UPB3EiMG1zZY/BewflVoVyxNjlTPAYcxfuSAj6dUh6w1tj0RUUv4FKrocHv/9hyLPypaC0D5CgtYLqxs2H9ztv4D+8+5SmdluJEFUm+M5txWM3BcrJcfa7Eo9WqW8JdQlb6uApzIhnZDUFUIpjiLLkK+U/M+Bs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=drkIkfCz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="drkIkfCz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC84CC4CEEC
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744778993;
	bh=0EKBajW99/ThBwlmqcfs4bxZzH49jXpxgWtSvefFNHk=;
	h=To:Subject:From:Date:From;
	b=drkIkfCzgrd9NjZlTDncOBxpuyIC6qxHTlMjvam+71omKMLSDRLWDFTlroQIR1cOm
	 NTDyV5GX+bAl8ISSg21WrHUr01a/CtKzCFY+xC8vmL6nARZUqCIPxmxOgFU/FvneHs
	 0SpcUpw7HztDjNm+r6SMuEDXnwDutltJDyv4L6tcTyYipReQPbA+OqGmK3eay7wy6x
	 WUI/ohcykxVzsCn8REnISk6Vj2KDhVjMT67e06OTwdcnVxKDUU6Y5YtWmIU+D31XQp
	 AVPhlQNHcR7mNywI5K8QxMdyKzYhQtUg5xZxCcWQ9l6DeIrCxyFcbXLH6PfMdcQpVF
	 F+9IUxgSiKTOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96991C369BA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174477899360.10175.2370396850216274182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eb123e2d282218f859236bd4814324deb5ea3d458fe5bd65b0cc2a589f7e208
Date: Wed, 16 Apr 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744778993
