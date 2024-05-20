Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21181137923
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 18:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716229943; cv=none; b=W5yu8uNNm5VC0RZtyRxdBjR/JgWSDkskfJM2Y/AUWgnE0IRyfleTeluf+Nb/v01Us2ryKC4Cq19qbDwXuDPGAaalF5yPTXiweKCnBe+pB3iUcz/vljxyHBB5FfTBWih8NSJ08S82JthDsCJIxVJqmTbTBZMHF4dvP8MhvPJTKdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716229943; c=relaxed/simple;
	bh=IhIr8R/3wZ7lQ//WMQyNcFXdYIXO22vFx30IVw1Jt4w=;
	h=To:Subject:From:Message-Id:Date; b=EJgacv2EHoiVKGJiXDddYZMIUCsRBSa679be+MjE/mZ/YJHeec7f4vYn3sT7QQXcUn/GOvNkOv4X8TqTNG0sju4ZT5OrQ2haZ/Z2+gxI7Aqh7GURINsgwabqlqpPa0zXGhvVGDM8mtcuvSCesiCh2gQNvHy5fuMwaUdwF0p1Aos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=utblDJGe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="utblDJGe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E08BAC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 18:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716229942;
	bh=IhIr8R/3wZ7lQ//WMQyNcFXdYIXO22vFx30IVw1Jt4w=;
	h=To:Subject:From:Date:From;
	b=utblDJGeWWvfBEZ3MgUVuo7j3ZsF5EwVvqwSQxhnzerEj6uGti8I3clqFLWHhj9p2
	 DuZFuBSfbHfuixiSw6yxKBQCzKqyp8Wg09ZFTxFlT3lcmhtBduMTKNxpwVlLtN0S50
	 1X68i4rU99Vb/e59ABvnJnoi+/TkjruUHUzCC0A/2AOREps2AUVuSb66PWvbgrWBh1
	 e+JnwqJdXUDDNFA+YOUJFv2fuRUK5CxHvD1YboNEj8Tr5qHDiLUXqFFhAz+ttQeZNc
	 QXu1pdGQNtlTBNgKz8zWtIn3TD8m5q9lGH45sDzOgA/llNkoL2f7igOK2TuwdsL3hN
	 cbv9mT95cffog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CECA5C04FFE
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 18:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171622994283.9161.16324946763953513966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc5e946b3a42ed0df762655da0a17e39c0fdc97bf9b14a4f6f6a92618b8820f9
Date: Mon, 20 May 2024 18:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716229942
