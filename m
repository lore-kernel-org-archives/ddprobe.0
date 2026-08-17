Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC053E49DD
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786962634; cv=none; b=iSkg2xHq7G5qUBlyIz56BNnB5lUGMqh1kR0qm9DxrQGiSNXYIus/ba7fl0hVEntSATQRYAw2MLvebBnBsSw0HRfOLUVBwUTbJxH173fIIDdzvF0BxaPeGuwyho948x3b+IU0BJCbwyTZjY1mXtva8qtAdYvOaSCDoKo8xTgWzuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786962634; c=relaxed/simple;
	bh=HOae0Njvpg2h2aBppwMYvWiSpHyBPr+dZDrJSfdg2RE=;
	h=To:Subject:From:Message-Id:Date; b=tCih3S/GqtQ9p+6Ef1qWDhzbgxK9fmxkatfJxTNQp+PvP8i477lTwCkZL8jHZXWDZU0/1iAGdkAvEBlE6jgbfPqhhE9JhHVvYgxI6/NRIFLv0wuJKk+ouzqnMyyocjAK1OFR0BpoQzYyhhEggrebiCAwZ/blMkJxonM/G0TzwK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dD+BV0Kf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dD+BV0Kf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7326C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786962633;
	bh=HOae0Njvpg2h2aBppwMYvWiSpHyBPr+dZDrJSfdg2RE=;
	h=To:Subject:From:Date:From;
	b=dD+BV0KfXnqghvzDIS+J4L4jSXNxd/TXEMYfCQq8gnGaQyphMoluIgDqp3WvVPAOP
	 Ylorxaq8Vn35yPPxDD8I+U0UDeQQon4p/2FFOiZl6/g+hqzHtrMNEWR61GfTlLcfgk
	 zc6er2R2HL0SBwq3zF09nLNA/psAMqsS3c75qgrPSXk66IGUvtgRQK36wwZltK5wpC
	 9xjT7t+ZGzWin4aW79h+1Jz8G1/jy/lSvip8LccXKC+fuOqrJl2zpIr20wB30kmDp4
	 iy4y5gV/IBygoLiNYnr5cwWOoeQ/i24NSRCy0wbsja4vKJw04o3s5FH5vtY1Wnn0km
	 IMLl2eBFd/2TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1001C5DF70
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178696263371.20142.9353701202730614436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22fcc43a8a2d868f333c1815fec54a1845de6f44bc32523dccb409f19349259d
Date: Mon, 17 Aug 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786962633
