Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16DA71A2545
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756054194; cv=none; b=pc85MjUUFHdxMqaznz2IlLKzkwQn2h+22L65BHztMq9iy4FkJY7htFx676K7uqcWZr065AtP0yciOUTC9rPOACblUNNfUEEXuzvIxH+fCDDfN2UmAVPMFp0ehnaOH2iMXTyJ9pKEuF7kv07Mj8wOmM2eNKkCcso8ykm+P0RhfLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756054194; c=relaxed/simple;
	bh=CVSLnzr4GU5qUoEJHd2O3VmOvdIbpsF3bb9Dn3LHax0=;
	h=To:Subject:From:Message-Id:Date; b=SHYDjY4TNoTUvdfdYFsukQJ4Gm2xiG+ENDEs74j3FtMTnVw279PZUniWmXQr+8cQQYFMLfvpeTH2+Xq++23E5PVC3bRA8Cir7S8rSOo1PlUAxxEd3qbzIoT12pgUKSXy2H7GVD1HjGXBhDTm30XoPAeEvn+VgZwofKEitmaA71w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V4qbEpWo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4qbEpWo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A520CC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756054193;
	bh=CVSLnzr4GU5qUoEJHd2O3VmOvdIbpsF3bb9Dn3LHax0=;
	h=To:Subject:From:Date:From;
	b=V4qbEpWoecVF0M4FD9/NalJnLjLu1Lj/W8jqfwhs/tKEGg4lYF8gzhyqu5GkrKpvT
	 dIZIo9PSaGtPsNJjlsY+s0ekI2valqosF5Ls7+s+7rhh7OZc5gucD6SizltWz199bh
	 M0QvVtngmTVC84bS9qb11SMv8GS5M/kRYhAdyyAqz1KzHuqv1iLoKbnLkwCWheWVjx
	 uzyab/FYqzfmMQzPY/hIIratmq389LGUBOqj2QR71D/a+/Qtzhia78teCCiIr0h+Gt
	 nv9SfoVP7eb1MNawXw5dwcEdkJM84Ltbb41y/arLgwl+/yvUjDxM613oOJUcaoSeU1
	 F5754gfqK992w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94003CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175605419357.26508.2667547107274138726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc6d3e99a845072308e37f02efa80a10b84653ad4727e4a1f39439dbf63d1f98
Date: Sun, 24 Aug 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756054193
