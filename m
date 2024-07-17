Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61374A930
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 00:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721177723; cv=none; b=XNkB3xufpdBH/l2pd86JDUVasQETuiRc0stjqrHFPvooFsLiGZNyPnozx5933ZECcPeuy5LGBtznTeVQeRxC891EuLz8UCcSRFVzksy3mytUphKG83uSyE1Ma8+pJfsgUf4dERGowJhi9NQx/0kBqIG+EOt4r0m/LjGWbKPnldE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721177723; c=relaxed/simple;
	bh=/weze+A6xL03cL0UgfF1ZKf3w3DOpebW7X1UQALa7w4=;
	h=To:Subject:From:Message-Id:Date; b=KDU3lyP3/CC7KCMSsqkQQKwNWgHqEQIt3pF0lBT+xFVsum6+ffg9FvsK8Mj4GZMWrGXCBagOv9EcJw9cwpp/e/2vRSZYHT73fvkzbD20L6pW3ugdefffIjMVo/3JiNNA4DJkaa5A1tHNo6XggMg++a6/M3Klf1yUoKGRcBiCa5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oudFYOFY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oudFYOFY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0373C116B1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 00:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721177722;
	bh=/weze+A6xL03cL0UgfF1ZKf3w3DOpebW7X1UQALa7w4=;
	h=To:Subject:From:Date:From;
	b=oudFYOFYhntZyyYBPxZiS9le3mWgDtYEr+THnMWj7HD5nyJvqEU/ci1lhaDIPCjoS
	 mRlPZZSbBflh50fP+w8F9L2/DwoIgJPuJFK2BeT+k5EXD4W4KVEcwulPs130Uz1FXV
	 sj2k955LqadhZfRESLXKNXg59tXKExXLsL/E9C+doXvW8DpVk6Usy2gCAN3HflI/QG
	 9kcokiBcR86BXxuE52iCKiky/U2qIdStq0poEFS2w7S/NZBY6Rx3brKrvcXOcyaF15
	 ZrTlRaSzFiedXQoK087wzzeNwElPhwJju2/rrjU77cUMT3BDg9HqxP8JFgoousPAqA
	 dk+THWa5mBysw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB859C3DA59
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 00:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172117772282.26946.4965389634729661975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7419eede70af98eb4c1e2c8783cab510b4e4f819dc02626d6a5d458e6ae8af74
Date: Wed, 17 Jul 2024 00:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721177722
