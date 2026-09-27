Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6DD348C7D
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790510434; cv=none; b=A7qSExg/wCge+SV93Hz6vlut8RWYGHlRnIeY9J3rxc3ghDGTIKemKagMvkrv6hODL2Dm22HIbajmNTHTEl0TZ7kv2GXu06DNBJBNjEbUuTkiTGcIjqm1hRH+yRx3Zudo6dDHZYv4qA9mPo8rY3LZ5IDjc1BxE5SwAaOJCETegh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790510434; c=relaxed/simple;
	bh=uuXYZ7v8MR57PNUl626mNR1v68f9r8BzDS4S9UG9VJg=;
	h=To:Subject:From:Message-Id:Date; b=F79+90yCfKooj7Kwj2tv7qDXcvBqOPcNaVlCHzVFAFGqjz3Oo6ozJFwqMwn2S/6Bll8BNJj4Qz3ctj3NGTV02fL55CON/8VzNZFOuYdGvlI2ntHDTU6apULspeER+j9utNOTKS3LEQN+NrFoMj8+fEeDRKGpUf5HQNiGLdztUVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qiihJoKV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qiihJoKV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE59C2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790510433;
	bh=uuXYZ7v8MR57PNUl626mNR1v68f9r8BzDS4S9UG9VJg=;
	h=To:Subject:From:Date:From;
	b=qiihJoKVs6sEeuu3WLOdS4SO0j4PHahdAwVEPPvgjApBwp8p9Gyuj/9aYLWIwFXXw
	 JPKz/9ujhpqu7O27EXhAS7EzkrL+l8vVWsdwIOmUaUKfiTym04HLXN0MRoAkX/oram
	 bpdXodoM49XsheFDIkm/y+qboJr2d2e9QeirNY7FDHTC9hUqRABXWtj7/Bd+xff8SI
	 Rm0MLaUzOd/o33AldT1w+FEYgdGTCOPYTOXgxRpwB0eDdXycK6P4gsjzmKRFwJuTxQ
	 mC1AQbdmSEMrXZXxFEYSqsXUIaXp3BqVqaEJ1zIOtD2VglC8/dmP6s80fwHTHqNsnx
	 Cyl7go3bRSREw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD97FC9830E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179051043369.7828.4297659068160560992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cbc68c79e35393cd81b3a02c64def9d45d942679efd2f8c8f440ac1fb09bb13
Date: Sun, 27 Sep 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790510433
