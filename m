Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D9D1A314B
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739016954; cv=none; b=OSc9qsS4VukPfTpudFRgkkzGJ1S9IkHGHvqdXQoH1x+PHgM7x67/0qjP0CNEjVJqTmzxG4AjyuK4i+Ct7kLagFkv5xgFZTajanjLNnZ3c7K5D810HAQrmH+tI+vIavPONVBG/XOJbdTgjdyhejhvUYpNo/UyFCnuvwzl9UIuhJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739016954; c=relaxed/simple;
	bh=szGGDL2KZN3oMFBeXpJgMO+vAanU8wrZcUgZ5veCP70=;
	h=To:Subject:From:Message-Id:Date; b=Z1Tn8lUU4TMEw//eI6TjWCtSGNixpuOK8mbEI6JlDFVdssSan/pdc3XcD6ssVZMCcVsYH/J/xClj2CNruu6ywe1xDKdKm84HJPgbVWAbVK56B1qJ5ghOjXJVBXwOhXpV5+B3wFy88ruh6VAiTLz6airGJNzWM+mzLVrSkz9vzyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ste3piu7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ste3piu7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D64C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739016953;
	bh=szGGDL2KZN3oMFBeXpJgMO+vAanU8wrZcUgZ5veCP70=;
	h=To:Subject:From:Date:From;
	b=Ste3piu7fjSmMvbx7c76wwWWS17kz/Nq9Qg2AoiWdhS/pqQWzQiMZ3olKeCbKbxz1
	 xQdncxqWLweW7+0ksnR6BO3JKOoyZaP4ni9q8gKLBvp6VVyvm2OFL7OMlHWB8Jcj+G
	 L2AFYAgpYr7wERDkrhnM98Obu/zPkVgenu+uSRboYpETLqXZFq41Luofz64lfBcG60
	 Y0Ut/9xaGJVEXvRvUGRoN888UieA8rVA0HIOqew4hVWv8o8HttC8kLVkxjBn7Ej12w
	 HY1IP3ivCnBOZWkdyMAnxFZRv8gxQyaE4ToMBM9XbfAtLwVN6UoMovQTLxHg1UX4MK
	 O2vwqLGcZ89aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A094CC02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173901695363.11660.2248544934766746183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aed901af32cb29273b4b0c066f3db3a4c3e1a5f0fa3fd06ce9b0704fd507452
Date: Sat, 08 Feb 2025 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739016953
