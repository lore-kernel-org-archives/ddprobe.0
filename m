Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9665328DA4
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 09:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715677343; cv=none; b=Pc6patmkCR6RkhDv3MMo44trG3l/Ok3XPSax00Vg2vtJV+7VVNbxZA75zPYIr9oCPVNH5qRoG5kLYRvEcsoj51h/95U1c7o4NgAvuFPVukie3wzTe6411X4SZ6H2j+l6ldnR34CQAilTXFe5TXYoJhGnXA5UXXwwZqTef/HYTTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715677343; c=relaxed/simple;
	bh=dJ3hFYSHmR5fMnQ5bUQzRT4THALUNss4iBlgonJ2OY0=;
	h=To:Subject:From:Message-Id:Date; b=QKsStNeOU8PtFo0bQhsB17x2Q6BVOdOLBK9aPLYefZskTxxgvm/c0/VfiO57/W3Gom/J8YwZccwcvpOqYm6xrbh13dTtbXeLOhny5UArspjxvDFpLR3w1m6Akt8lbDLO6URQYdXM0SGn8A80XPO+0G3F7WKFUId+D2FZzWMt9p4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nrsh68mU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nrsh68mU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 20BBBC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 09:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715677343;
	bh=dJ3hFYSHmR5fMnQ5bUQzRT4THALUNss4iBlgonJ2OY0=;
	h=To:Subject:From:Date:From;
	b=nrsh68mUufYSf6QFH+pMw2UskWoBFu/U0ATTm0zQh5Iz67atA1jzKuz96XQjnGQG5
	 n2BnrtyzVYFR5yfct5+A6P2mW0OaI+7jxarRgJIQBAAgiFP4jyWfDD11s6J3/m5PK0
	 8IrvkrMSDc2syZM3oHm3CBtFaPypFH6gHX7z1eHpIu3c43mhOIuy36G2/XNpjQmwpI
	 7hYnhSaMqBvBCpyMAu5hqq8Gwzt53eirWAgn5hKMpJCx8HNK1LYy82bDTb3gRm/z6V
	 g6tXreRHliAAoBlJ2ULWGWxxRoJR1G74ZWfvbKMPcVacfmAZvM/7eQTknZKkiXWaOf
	 E5uE3J1dzbqKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFF0FC04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 09:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171567734280.1022.2311418395256105868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1a6b8f30a413085a44998c447a52ca4e22d42b37b594773dc80e45616d4af27
Date: Tue, 14 May 2024 09:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715677342
