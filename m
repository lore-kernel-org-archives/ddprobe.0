Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D05041D4E6
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 11:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783337914; cv=none; b=hK6YtG3Js5nGavlA+oQisvHt0jyjRhnf6aawXZfu5q5FFq148jDUXh9YfZkOmyhMk/vnzYYKvEVuY51S1C0BXkaJhMQPi39F8OoooM69YncwyPcMKNwvql6mViSaDPROhGnCyHP1GEs02aJrZZqmFsU3pOykHOxmkP04fcgB2tI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783337914; c=relaxed/simple;
	bh=EnSsjOa6sDWM9zfEelei9Sf4VlkjYerAmDsoVIWo9Ys=;
	h=To:Subject:From:Message-Id:Date; b=q2C+7dv12EkffJiCmWuLPXriFWruVAnqMwc3YPrehP4OsA0FqO6q1R+AOPUusNFQ311byTdRXK9kcXdL1FUUgVLwtMDDYLnby5zWs5p1wmk7bMjwfiFnpifz2/twGPbwoJNkw0iAbgvMdn5aWQMw377HhEpIBTwWZit2JBglNEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JHxqEydn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JHxqEydn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A68C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 11:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783337913;
	bh=EnSsjOa6sDWM9zfEelei9Sf4VlkjYerAmDsoVIWo9Ys=;
	h=To:Subject:From:Date:From;
	b=JHxqEydnvRcMUyuNoYAgxW7Zslv/vXxdk+6ogfYJNyr9lGlEG8cTHzJA/TczRcjFk
	 1apivP84l+Cw2HUziIOS1JgUcfEEZ0ROtDZWT56wY1QmCwOzUGsG67mYy4cvF+X+Og
	 OoSLpD3rEY638s3mQtfXGihIE4rWSj1kxcAL9Q6aLwXJzZNOXC9v3dPKl4JEN2M+ou
	 3BblBzEAHI4kXmKKAPl90CT114GjmM9J7OoiKqr0VgDTWvDm4kl2PhtNdsHk2LWL64
	 t5/KLatRUsCe1UYn5I5/OeX5t6/7KhfHgj/DhAMIye9aVoONPIl/JvEpRGAyW0VyCA
	 wmLEfZj7cq8+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEF2C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 11:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178333791368.25898.8127245418553480144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 087710fd98e578b5ba63f333aa5aa3299654cc8904b9ec4cf55e92298e93b535
Date: Mon, 06 Jul 2026 11:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783337913
