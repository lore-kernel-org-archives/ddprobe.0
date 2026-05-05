Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4075431F989
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 09:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777973254; cv=none; b=rPvKVAV2Khu2q9Mv44HHBE+ktlFCMa8Kr/BGRzK0QDAQV9+BT8Xp8lmfcpn1LdHPurdHRF4/RNd0mUxoF4M/78JTEqUoxxZxhPgLnTGVvR7D7xpOajtbpQ5Rsuxb39r/wTyGC5S1NbbFxEbv+OyKr7njF7mpmtaw/PK8PnUpZ80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777973254; c=relaxed/simple;
	bh=DV0ghB+9WghwFbL1REohU8tKdw4fFVlyVXUFpuV/lh4=;
	h=To:Subject:From:Message-Id:Date; b=QiDFiazxTikIS2Q+1MfILO0IU2/Ou/PPWVYFlLfgbBpX9U/dyGTj/9KF+v5x4VJgWRN6j0YsiRw3RdMfHiltFQg4EfC2eF17BqKhCJrQo8kx2oxCQsfsRGsRcyp4w1hcAO1vfLqI3qzWz+lF/XCbWlL5Fgymfba8sUaJEmeeQrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/mEFlLW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/mEFlLW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B66C4C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 09:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777973253;
	bh=DV0ghB+9WghwFbL1REohU8tKdw4fFVlyVXUFpuV/lh4=;
	h=To:Subject:From:Date:From;
	b=K/mEFlLWdIegexYOVHGvCpG+jIB+MvrWjJbR7M0d/KlIIZ4mnGholDfaanjOXXUGM
	 o/9QWN8iWxK3WnLeDstHA/zDpywTMpUI3Jjreh9lrS+zBNdZD5A28Hr88QJFcbRl+c
	 nprSATBobhJBSPtfB0l2LbUV8NerqZXKV3oUzmM6Rk58KCtgrUBK6lRVhZluP6ivl6
	 /PbT9Kj+z/IlBtxdBqGMcEtjXY+5MZWnlEQD8CZ1K5s4f+yrZvamnZRiQmZ2GKdXmq
	 UuMqI8sKSTh17FFXltpMjHv274rHh7JJoLeTkRIsM9AOHAkT2P8VwC4gPLvWKSQaQU
	 TS8ZPZd1V6fUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E23CD3430
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 09:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177797325368.23308.16288653145924445930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4413a3d356a4f8fcea39e40d6c74072eaa93b534f295bdd9000f44ba83db6899
Date: Tue, 05 May 2026 09:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777973253
