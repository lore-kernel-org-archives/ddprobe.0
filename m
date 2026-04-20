Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4B13C2769
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 19:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776715054; cv=none; b=rkDopxSQIAz/ST+XA1otN9rFm4zawA7qk8zfsJgGyhecXG0woNOHC7RYU0kij5ow2Pm0iFugTJBNMglL0Qg5yqNLK7BNgYBlyzR+0nxNwqGDd+Nw6wtMc1Jox+lLGvye9PgvtxmQOMk98qVPtDLTh9a6m688VsM6NRCT43ZPALA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776715054; c=relaxed/simple;
	bh=iFCdh+XlQ5M8wBmISRs8Xd5S8OLmvaYc1vmaH7nhSOU=;
	h=To:Subject:From:Message-Id:Date; b=TyHsUdq+8HBReoNEzkMnKc8H+EezGoLokjkaa50qn18hl2JiTeCl6MRZtsyNsvdXUROMV6bW/QYe3cKocdywnJ1dyvAajthC/UcuCkVrGz7xS4My9mumKc3ypZwoHL64tV1FVL8Y8qAxnj8iT7m2sQaIr4enJXB1ABQohgDCOPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kMSNoGgF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kMSNoGgF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8884C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 19:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776715053;
	bh=iFCdh+XlQ5M8wBmISRs8Xd5S8OLmvaYc1vmaH7nhSOU=;
	h=To:Subject:From:Date:From;
	b=kMSNoGgFXZcnvPDAuR99gBn1rHmZZ18po7d2czhwD3K75QoBC4a6C/Oh+jFFNJTFd
	 L5iiQcu66YJpgIl/+dL2683qOi6S4YaH3h952XDUNtmENvGPs9QXxzcendzIh1IOej
	 zs2ayHgNIWbzQdLaqE8sJk1VZLNr0OQYeqFC/9ujn3+Kstn28tkeAPZK0H+pbDhpj2
	 zcvi9haiulrHg18rAVvp2ySNCupqRjPkjFCHMHrE5xzyOl1SovtgxX7QNa8s4iIIE3
	 FCaI29c8uskk7L2FnsQ7CoU7Fr4tstmZ7tSlN63F4koJnfcqFiCxUn1y2FMfcJtNDm
	 ki7+mJvvZ4dmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EACF5A8B9
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 19:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177671505368.26637.6893147176697225816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 549de031781bd016a06f261bbc4d214801b86cba09a3614e540d398f1880e9a2
Date: Mon, 20 Apr 2026 19:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776715053
