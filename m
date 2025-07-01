Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E77730207E
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751405994; cv=none; b=gfXWktBVT7Du6zeLtMmUU00/qlMvOnyGhk2Vko1zZ9ElqBQEQr/rPcFSPDcia+kP74kbXHY5k64ItlZHiL1/FaHKZhniFu+MWEVwkLEqHm2tKjzKy8grG7YwRHOwp/e0n0DLH29OmkM49/EG6vTTu9VWB2WnySlva9EgH01GNao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751405994; c=relaxed/simple;
	bh=+arsyolitJZ/Mqc2jsReOlKkFg68j4wPO9a5UOJAOHI=;
	h=To:Subject:From:Message-Id:Date; b=DWhXgk+NoKRoOh/PmJZ6TpBVq9N6D2Q22OM1FjljWJzvKseRBgSlgtbSZ/F9QDXDh+9O20Dcu7s48q3Vz9yqbCbqQwS49Z5s8v5kYuzNEzQ3kPV+Z0bV8mrAR+V44QES/lh9PHrnl67FOwsVNOmdnTMcB77Di6qBSFnV6a1xdeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WVHjLrI1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WVHjLrI1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE757C4CEEE
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751405993;
	bh=+arsyolitJZ/Mqc2jsReOlKkFg68j4wPO9a5UOJAOHI=;
	h=To:Subject:From:Date:From;
	b=WVHjLrI1nrzKH3H5EFR2qU/fZU7/9igLxrv+Z3KrDP05Ozz5ALURpaOtrcdxkrv/b
	 YRpzZEJVzX6SHeh6MyvkLY4pYBfHnaY3mMb79/EV7ZlgW7TFdWPC0X/UDxMEFcutpo
	 HpS5BwxoLDPg8VQzmK1FvEQU1UqwyJh4L+4Ptl98zJv27uVUTxJsJpQlDiq2nxkYeb
	 IETL+aZh5aroTIaQOwy2JrxiJQCIVeVEDEhSfgqiF2h8MoJpxdcRVqmETCelI1Xfbd
	 4lSrcs/RCpB6NUVHasqjpOU12Ae1LhlSdYESup9CpzRavXSuM/DniQUMjC0CJ1ycbx
	 CO1S9MlcVMDNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9741BC7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175140599361.11064.13831170473134955439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8980996642fd56f6b631e65f57f02e128993d0e5f03f040098a04070a3e788cc
Date: Tue, 01 Jul 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751405993
