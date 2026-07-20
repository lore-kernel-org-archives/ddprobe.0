Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B19AD3806D7
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 05:58:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784527115; cv=none; b=IHISg9maovmeK8IEmwha0l62TTGj5FsapEE13aIRftGgQ7XKGh6J2zHiqgqCqS6GMqQ66qPVSPIcDll0Y03/sAf3SWnzMB9XZCloGrBH/CwPE4JKRm0zbCjkk1WDvp63Rmjffi65a6QCld8Jr2k/7go7QGQnlsk74ZezlhSFJbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784527115; c=relaxed/simple;
	bh=LUPC/MtDRC809pFTeSkmTYCZUKARWSx+8pWaZK2SfHQ=;
	h=To:Subject:From:Message-Id:Date; b=ZBDicyhZ1GrPj17jRfxh/+A68kNZ0n2eYWDsaOKToxXlJ5kFl3hmp4Lo5/6cBEg+oM601bvTATcmhwwlSwDaa2J6hOxb9QMIxxC4dnkzU8nyx9QdMv1LR2apxhb6/tiL/RVJxFocXzkdsUCD0XuhIHHxgvK9l5pVEDNCZu3WrZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=giulFI+O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="giulFI+O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8869C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 05:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784527113;
	bh=LUPC/MtDRC809pFTeSkmTYCZUKARWSx+8pWaZK2SfHQ=;
	h=To:Subject:From:Date:From;
	b=giulFI+OhhSbkMBI7wU8CZGvSu7has7tUwBw/VbKs9QelhVodYk6khuXIbDPpncNc
	 tE9/1atyxm8HCSUGE2FqmjVpOgJ33O8OSbb6jR1fqDnseyaREDOCrE3CObkjSf2qA4
	 1y5N6Z7b1m6/YXnrIYws+8Y6YqU/fokXsAs26T4sch+Y9oXHGXyEdKj7xYTf9+UYcK
	 U9OR/dh8tzrT3KvK/18/8GYhXJVztx0PUM16jTQQkR6m830zrbWyk4PAHGeCwyj7f0
	 IKkNclb/y+CXRrJKSmKEDMqdKTRs3evyyqwLfhUvVrhVVgPfN/qDs9KtE09CWFlGhR
	 10EXPNdhszQ/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABD9C44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 05:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178452711369.26896.10293504456452685050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 634b7a3cc97787b03f79d8ff813fee5335a81c94d1b03f62b0c95d9b8689fbf9
Date: Mon, 20 Jul 2026 05:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784527113
