Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F4B154C12
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726853154; cv=none; b=RU7TxqG//IrC0EwdbEvyqp0CEKXQRt4rjTVNcKIpv2d5LuS4Rq1+JWbeA6QhtcLRzFcsYHjCvVDqQvmnJKLu1X5VI8G4saThhh2GQD3GirSwKmLUs07/siHBZljXW4lJAMiswFkcYhwFQL8+bM0HJyW6Zano46jpcP1d6XR8cYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726853154; c=relaxed/simple;
	bh=2F6v+bDn7X0ILOr6GjEl80qG2LbUckJVn5RojJYzmio=;
	h=To:Subject:From:Message-Id:Date; b=AffFSMOPQTZ6AfAoEiQ+Avzg9RLrPuVm0kudjGjkCGdW042u9bKDIVn2+KYvZM3dIDYUa9x474p8TcBX2S54T+KYMO7c1FxgLaSCgqAmGUkV3Z8L7qdurNBfPCVXnq+HvoMlvNNOcykyU/laM0Tn3ozleD42CQo5C5K6bW8KyFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sS9R87bx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sS9R87bx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9474C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726853153;
	bh=2F6v+bDn7X0ILOr6GjEl80qG2LbUckJVn5RojJYzmio=;
	h=To:Subject:From:Date:From;
	b=sS9R87bx/XgubrAS84aKCu7wI0TH6WEPtJqUhMuBVYqcGR6eGFyAL3YNZ9T31tFjv
	 n9fv5ERvUhxuo0YR393FA/+T9xxWoJXBP4aDPG5AaZkaFoctiVlqJ+13hYVyarGg1i
	 3/8dJaLwvrSsn/mro1tVuASYh7V7DV4yeSlx2LxKPo0B3n5ShBtd0oBnX+fIbOnzYH
	 d6R0hSmBborsRt+CZ8ryfJ+eHVhHrvoMMIFpFmJCcO4I6Gjs+35Axe7mzif4yRAQQc
	 vl2xDIDw13vvg8UeFAvJPgWev0meGzB9MnN2ZGk+EOKVmLf5+E7E9uHzr8uYfqgDhW
	 Fe0segJcVhhDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AA4CF9C5D
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172685315358.6064.14179275496050099209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 702ddfbe538b71be39a6be922bc656d84fc644aac27aaf4a18daeb149d9f8a59
Date: Fri, 20 Sep 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726853153
