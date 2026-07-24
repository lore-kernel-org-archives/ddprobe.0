Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 679CC3C5837
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784931034; cv=none; b=Ld6V/45TP2PS7iIZZnA6BQSlzJWPLJ+CONKyf2F5lDlSoSOZMmU9jKOVRRYviMCml2Lj1NBHDcioNsq+S0BAsniUeK6P4egLHRkMH4SyyE70mVk9lW/Qr+KrmJAzmuO7+kYgazEEIYXz25Tq1PLibOwowCjjZX9MQuGwf0AsLb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784931034; c=relaxed/simple;
	bh=S7RODfmhom2mhKp+TjokEaL44SdLuF1LHLvr4JI3lQE=;
	h=To:Subject:From:Message-Id:Date; b=FVnAWkAZVeaRc+Lz5B2vcR5x1xlbNBTafLOtsCOPBgdW5u1gEL7umfcGH0ht2eXNoVifPu+PwT+dEuRbFyw7gj66ErVNECYp9/KpgVSWD/3skTSNNuUv8CQ/LuBodSMi2KqGTnppQvo1LJGzMNRkR23XQf6M4b2r8wq8niznnbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+eYT4vK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+eYT4vK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF05CC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784931033;
	bh=S7RODfmhom2mhKp+TjokEaL44SdLuF1LHLvr4JI3lQE=;
	h=To:Subject:From:Date:From;
	b=r+eYT4vKdGjy60O0lmcGQYE2Lk9OD9XtgoVbxs4oiKDzbE+IN//JJgS60H+IEmyOE
	 280abPvB1XMo2voOkFqHv/eHwxfy4juw8lQuzkV7nL4dMLoBRVnrd/LoOHM4clCAUD
	 l2k9pH+u/lVcvj7ucsXZ8N9Hh6RzBLxgU4Bc/DtJvxO7TKlkG2M9fiWJWWDHjq/4Pq
	 pT1IzioPVwDquts8ldi2Rp9J+H0A9ZSKwuokhkwqJJaAZOTR+JSD0aIAbJcQdQh5f8
	 WkO7GbPb+EFXJtV4aODiR8adTc4lN0KzV1mEveIeR7uNIRoS7/ydufAaDD6mnoy23S
	 kjnAfjGJ5hmkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC4BC531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178493103368.24148.10527666466249621001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 110c7e93ec048d7509490d01c9add31973c0412ea1a120de96c7fbb1327dba8c
Date: Fri, 24 Jul 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784931033
