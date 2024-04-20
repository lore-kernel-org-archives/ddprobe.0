Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74C491E88C
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 16:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713630023; cv=none; b=Bc09I3iqwma8oOIgpAc4H8ApO8hA3Ji31JTwn8TE0EUfd0i/zVZo2a09ZkO0J9XGvMX78SfnUn+pkP0kH5MAarM+IKe+VtoCyLKJfcDO2j7BWQ28dygaWHPvGNmQeD+5SqSuOdTXKoU/em0b9lIwSk6zvgJ91FlhQC1MsmCIUjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713630023; c=relaxed/simple;
	bh=1SxGjE67NxI0iIx8Yho3E1gqjeIOCl+n2ocsHuwzNSU=;
	h=To:Subject:From:Message-Id:Date; b=sTPL+U12S4sMtab5Gi7P7iRDMJoOAMzSrxzDV+Ir+BlBnNXaILzzoG006VGmUsLki8uJgxP3SfRCID4Sy1yZF1RQBTPHOS0Yrv3jlnJ5BofgMl/xyIQddgWEtAbODNPlPTl7UeEYQ+NV3A9+XgPH+wH/KiJFOb87ZX5FtCWP0d0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lCKp8Hlz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lCKp8Hlz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9762C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 16:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713630022;
	bh=1SxGjE67NxI0iIx8Yho3E1gqjeIOCl+n2ocsHuwzNSU=;
	h=To:Subject:From:Date:From;
	b=lCKp8HlzWDYUpw87Vk0nAo16BFyiOqSAZI8bm/Y+kWlUJNxzFgoLrJWCsAnS8eorQ
	 SqRqum/PJFX5B6C6K+FAzvTZiLLASwd8AnqEKzACZuTgVwJkDS0w5m5sGl4V0+AiWv
	 AY9IxnqzWfvQwR8vY43QLzcjkQ+O/H4XDnRrRdCGDkfu3bE3ao+cwpJq8eKKToWDIy
	 Td4kV3dWcLfC/+bkjzgHLGcwo52ec/LjVi77RbxqbiAAMFlw96G1bjbAYMxAfkoxG1
	 Ktr5HqtqLgjSU0jllSe3LjZUbnq7Vyewla26sO8jgvs0xSZyU3+XcMW0rBDVb/kh8Q
	 Yink8GueHdZEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C08C4C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 16:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171363002276.11089.4924588490804200496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77c6f18e73b8b04b3b6d6419fb47d61f1d5dee930dc937d03090679b68452c15
Date: Sat, 20 Apr 2024 16:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713630022
