Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4359E3398B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737214554; cv=none; b=uzEkMG1MPwLgmLrGC3Ys6lZ5ra4gepgzvEa8o9Zb/9Ah+fVxcwJFpXXie9e6wzgQsRHyUqRvTn69/77oXpC2B604bdqkw46fKq5gFRA0/ghsp259Rcl7J5rc1LzVZiGA2Nx7yukWx4j9/iHTGAP+o5KNwqfwxV0/3Giza6eIL1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737214554; c=relaxed/simple;
	bh=bPwk5lp1L2ckNToAm5docebUW5syZcWQGD0NosHveLM=;
	h=To:Subject:From:Message-Id:Date; b=ncIDvQ3lHXKSIKXykSbWcHrjcTX1qMDeQz01mEiX59EhrM4JywGTZvtIiGGGvv/JF7tV2cG8iyQuDJVJEmAYbbzHEkaF7eROIWrDr2wIuwg2TLxUSXyh+eclnNG5hzDw+XXMEkdw/QCUwvjKWbnKQvu+GmT2/Nypy84hn86xzcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/DTF+Xq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/DTF+Xq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FD9C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737214553;
	bh=bPwk5lp1L2ckNToAm5docebUW5syZcWQGD0NosHveLM=;
	h=To:Subject:From:Date:From;
	b=j/DTF+Xq09KRA/maRf3Qi1/ijSAr7EEUx6vRJWvSe9ZxTYduQjx18Aae2fRirLCCa
	 jzqEkA306kju1flTae9sSn/oAjXfBM7RFyvhuTw5CrQwyq6pJangIKZ9mVXwQshC/V
	 0h5SJGloUquyFPNPaCkQNTzLszAyIafCS5ArTW9UKvjFIKLsgg35OZ4cNz8atocG6X
	 jbWTR5IVrlgbgVTfd0gugMTMO5/bjqvdY3txkh0tNxXjBioU8KcuXM1uQ6iCuxo+1L
	 ajoJyoP2xVu4MAUoWUOdQ170d/+aHepb7DTEZ1uWAD6PHhJb32+jX9/GQiucDIv3q0
	 lEWwbFgKjtUMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8D8C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173721455362.6190.3168226110318807205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74479863a07deee460046ea07cfd894f2a2708478c1a84b1cbfc70074336b8c8
Date: Sat, 18 Jan 2025 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737214553
