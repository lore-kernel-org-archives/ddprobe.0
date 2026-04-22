Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAED19AD5C
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 01:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776820054; cv=none; b=DKbMNRPzjM+DwW5Fvrx7JA0h4fQuq3VKxNg/0OXKKEafJE7J++Xi1pxzyJiWLiCbze59eu8ccXU4D4f7bJk94sGgQnJVdp5HPlV+FfdZHPQoC+53sMQEtduvNywHU+sQYM+010RVXm8TayKezHBlFe2u4xFlTfWly2x5csN4sek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776820054; c=relaxed/simple;
	bh=R+M6egxU4O/co0pSLTana7lNT3V3FNhHDdmojAGWmBA=;
	h=To:Subject:From:Message-Id:Date; b=QpRV3KV17elID2qOHYSQKFInBLQXdQUeokD/dTHXQWYTe9NmdewHThefvdaOjPrp12VNvd2c/Z6dZqeJovXXzUBc4qmb5mTOKx65U08TUVjObW7M8O+xHumwCF2UMiQUXsr7/4+GZ8rm/NS2GYatnvx2DDwI8kqx3w6Gi94JpPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O+ZxcWrm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O+ZxcWrm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7670C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 01:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776820053;
	bh=R+M6egxU4O/co0pSLTana7lNT3V3FNhHDdmojAGWmBA=;
	h=To:Subject:From:Date:From;
	b=O+ZxcWrmzIyYw9zeVqZlQzzeA/s2Z/iP4/koRb7j61zlENnFdQFcTOVmm7axCp9YW
	 9Jzeg396lsFLfaOdg5k5Jp5pan+CgyMvPznW5rhV/yiXQFd2uJEcZ8TmCzK3ri0+3Q
	 V2lina8bZuC6HbFO9jWA7xOuK7iWm3+vpl5UPd0YiokuKFh4waSFaCR2X8CnBvmeSE
	 iJdh7ZVOJ2c62ZqnVIZzFg1iNuKYyKye74sAt1v0zffUn9sWk0bUzJhffgxH+YQkHK
	 nvdz6w5rS4UERkQ2AZCyFp+L9f/t3HT23jOrvKZbHCB8/RQe2V+HxymPaNGz60o+zm
	 ubrTr86+dhR+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CDFF94CBA
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 01:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177682005368.6195.11103518144410582897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6599e9a9ca8347aa0b0794eddd5b82cda1e749791947712f7aea537e5684fe45
Date: Wed, 22 Apr 2026 01:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776820053
