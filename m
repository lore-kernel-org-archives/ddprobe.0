Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 557FC46424
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 09:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714211543; cv=none; b=o5XvHz6RZQrB8iZSAC/6TZoilZSgkp4TsFFbx7sjqhQWfK5N0oTN81CsCKwf9x8Gr4SZflg/OAy7l3Zbx0a+p7Bw5UxBMQY0gRiCO0f1V2uWX2pvdMKj4s4bZIkbPmuEgsJABLA/xYsb42U03QzjQLx31ik0uYm56efo/XTrLmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714211543; c=relaxed/simple;
	bh=zUqv+eByyYmImdJb1HDHN44+NQD3E5qUbSxYeILm6vE=;
	h=To:Subject:From:Message-Id:Date; b=Rrm2hlMriHl19vi2/kKcrhjh+wgYpawXbfA8tlF3MFVLSKkF0AzbFhm2u1Z2OhK/qY3wPbI2bj9s++BPkdbmcyhuasjrMEwymE31Fr9/buF1JFmxkmQ95clMmqk4fwvqDXyT1e7Ft9ZGE4FZ8ocAFhWhkfYLN1iym3L9x2gPJzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G74JejFh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G74JejFh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC2DC113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 09:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714211542;
	bh=zUqv+eByyYmImdJb1HDHN44+NQD3E5qUbSxYeILm6vE=;
	h=To:Subject:From:Date:From;
	b=G74JejFhh/FhneCwr/AwoxVF/e1MH1UPS5qMpxpEghGRV3MyhENmSDjmGciGJbcLo
	 /QaO47mjYXo7/k3ow3rRRoYCkWr+s2uJbynrrANEzdoi30LSN3WnOXrxYb4Lkkqd2I
	 J+1TseObY22siDjY9DJuFI24PU9lW9ZRYpSkFsjBbcxZozUQ8UMI/KoRZzP/J5DJEl
	 RBm3Pg97pSbiUNeKk8L/gqxCO5N3Xc12uxzN9lPetVCh7YxVjEbDI/r8hyYG1h7BH5
	 l/7m2uTzTDB0oqEMtqWESzBM+MloX2qe/Nc8cN+ywMRReooo77A2ReNx1qbocidIpq
	 bFk3e/ZSnERXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB3F8C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 09:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171421154275.16018.6602165400058825951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf5afff8bb40a828d3f7df13eb30a561afeabb52151b38de5ec06f401a4fc134
Date: Sat, 27 Apr 2024 09:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714211542
