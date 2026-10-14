Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CD891A9F90
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791981034; cv=none; b=En41c1kAyNMlo4fBdG43k7sdCGhytvs2cZ3d7QdG+YfBcyJZ1JiLszt4jNMalrKUXTq9jcqZz0HpLA9nXdXmZPWrDEuaAG6KiQQrnCQ/6GB416KFRe7p/JaRJRni7f1F8tV4zdX6cadSmQz12Xl341HZ4FlCiCYc/3a0LcJiHTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791981034; c=relaxed/simple;
	bh=EQVuXncz+xXd/ArvmtQYAu7A5rnvSv9KXWbG3QhoQW8=;
	h=To:Subject:From:Message-Id:Date; b=BtuFxdB2G/Ktlwo3kMY8DD8wj8FhBW8ndAtbozQMFdI7Qr2k6TIzh0IbGuFZieAR350PP8BN+jcEVaj/9/6qXmkaKEvQcwXE0fHJiznT80QtE2il95ECcKf83ZB+TF52GFrB+YeKq6h1QkXEniDrFEHrm1ihBGfZ5iZHEY5OnrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DxjOEJv3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DxjOEJv3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4758C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791981033;
	bh=EQVuXncz+xXd/ArvmtQYAu7A5rnvSv9KXWbG3QhoQW8=;
	h=To:Subject:From:Date:From;
	b=DxjOEJv3EStzzhhOkBgdb3TofaNXkaC7So1dUEKzGt6iykE/wg/aPEqOFyHam19Mo
	 gqRdbLssaFd4WBg7TPHUaU6bArQESBAZSVHGSJQBBXsqFHr4WfmpR5UcB9h78nhsLc
	 Xse7MKiQEf/gjDNkbNHvajU6vOuV8UkTJ4/gsRvLK4vhJMJAwFwc1bJQrQkTpVGCNx
	 IMzzRDtx+xTfXUrRHqq1MJXou4pxw9EBOt5pdl0PQHCd8AUm9B+Ftgx3mpPxIDYkcW
	 FPgZY9A6UI6c2ZKyqLi9LiEsfE1Ct2mEWKTe3sUGeYZKIpnwV2y67U+esJmcoCx7oH
	 48vBP0FhVPvRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D0CCC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179198103371.16362.7904672363687104422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c12c1977a0109db9cb1d732f6c2b6df3c9ebba64f61f91e5b1b726ce33ffd0e1
Date: Wed, 14 Oct 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791981033
