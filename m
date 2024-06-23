Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7118E13C3C0
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 13:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719148343; cv=none; b=GBaJP1grarHUYTEj/3Ig9sN9b7W4VSGh1Cyn4oG1GXaaUi7hVRbtalzISA1CzpB1Jk0xccQYaAru2YR8TtHOpbijuwM1pFz7QBkTeI6puZhQ1howkbufApFJQBof68Q0CyKtCXY3lu8Upy4nzqTnCdMej6XueDcVNcPQiUTNVkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719148343; c=relaxed/simple;
	bh=eJeCf+lqOZR8EfByDCs8ZXavPq9QGwnQ0ZfAbrkpMYc=;
	h=To:Subject:From:Message-Id:Date; b=f56N9T9EZ3VSnpkCBNvNHD0DJydT7r/XOhxXoITUD7Ji3Y2yEUN4Vzs+hseaN2UU0oVzJmKPEq3y0BLugabMkNMPUNF4cwOUGxPPmepwmoRmqHb/PSlcsdafLqE7Yy/LZs4ljfpDaD9aoPmpUNJn9kImhSzljeHnknJr/3L+HAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FqeayVrE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FqeayVrE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4429C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 13:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719148342;
	bh=eJeCf+lqOZR8EfByDCs8ZXavPq9QGwnQ0ZfAbrkpMYc=;
	h=To:Subject:From:Date:From;
	b=FqeayVrE7K14oIUBn8L27JzhYLPqBlNrZb7yQ9mzson84ygK061cEWkop7pjml/w5
	 /j9kjIPUqAgmEiDQbIHNhXSOeqxJU8XBkQdCA/mBCR8NG4iVUH548gEBORkoTgtVxM
	 4zywUPPQ9tVotHtLyHKlJrcfVe/iTXSPfEXxM6YjrJEpgxHSuZxm9ZlqDiUka7GRDO
	 vxxnmnb0rBGA1Yij7ZcMd3Iur+WEQp+U4eNxmxAbcFEod9O3EpomOIQYiPfd2dRAHP
	 A2XudMHB+0YtHq0EqpCNlV7dj405ZKVgLvPz1IPA3ylIgls8L+QTcmXX2ElyDqKiuf
	 wc4LibF8kaZcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5984C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 13:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171914834278.17488.10818629469110171443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c89d9c5265966a396683b4ad5ec367ae12009a72e4b650ebfe0f0a52da6dcd0
Date: Sun, 23 Jun 2024 13:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719148342
