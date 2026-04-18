Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B84B2DC78C
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 17:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776532654; cv=none; b=eYLTWhydYOjy7BJZ8tst0qt6JS6WaJ9Q+15I74JWZ36ZR6ryQehNCOyK5Vhil7s9BqPwRIx7KDLpDGn3INwMmAe4APRjTCYtJ04WUyvljENJO4M9IarCJbM4b3iwnBGwt9h+J97Il2Xs0GaJ3SWT77BQGMwutDfN1v0+3TwPfno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776532654; c=relaxed/simple;
	bh=Jey35W7yfAdKwuysjxJFXXSwLsc4lVVe01NVAryxtAo=;
	h=To:Subject:From:Message-Id:Date; b=UmwTkN+nyuZKS4J9Gwcf+nm4EUdu9mCpIwAud3OpiVuq4M4k+L6XicKYeOOdg4fnXgUYJEwyWDnm6prtDexTIWGZ6RuxRU05VT5mYdiXopfc8Lz06p4JhkQ9NKmJfGZKMoZFWkzqQ0dNkTZDb7bLhdMsWZPEfEHTH/HPM9d/L94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AkA6gFzc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AkA6gFzc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0958C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 17:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776532653;
	bh=Jey35W7yfAdKwuysjxJFXXSwLsc4lVVe01NVAryxtAo=;
	h=To:Subject:From:Date:From;
	b=AkA6gFzc4H6cLQhF/UCs0/o49GjRHYjNMUwxNA+eN4q7RskxhF2yc8LPUZBSsn5qd
	 yjiR90JmSvrBI44eaMZbS48a2sWqTLugI6Ij7Zc6MTcGiRjUHHequYN50MCnMFwiXo
	 e1L9HRhs6kNvrt7wrkkx/tyZnHFdZP7NvojEvFick/cqKJaXmXppUtnpL+v9J64G81
	 OthzYhkjGm++G2yiEMW4/80D+qR+874AHcHAk3ztd0clWO1TEbqDO9THn6xTKtUMTZ
	 F3XPV2BOYpaiVBvbty6cGlUu/jOUGB0+H9Arngu/f9xynv+M2t9Tx6iWsckOg2/BLa
	 SoWvmn6ZRJNFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFB7F99C7E
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 17:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177653265368.24162.10206121782967049536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b796e81b89c283e31055e5548f3dd5e2f8b260150e6d2720f9df8008455eb1a
Date: Sat, 18 Apr 2026 17:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776532653
