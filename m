Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EB4645942
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708396697; cv=none; b=KWSLnYr2XmXgn43eYsXLp9vU3twKs8KQWIFuPB8hnH7lfzyuLmqEH0cjR9ZM2X1FmAFxy0fPvmwl3/ZgLVEJ5N8Et8qk0kWS2vTmUPWmDAFZo/nMSs6MTT0aw7Ln4zzkjw6sc4QKY/gosj9AP3bPCzwtrnbeSfAAj0bvEnqNbIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708396697; c=relaxed/simple;
	bh=wUtC+Z0PyKbKvcsDBpx7eujcUm+xRp4apatk28E9AsM=;
	h=To:Subject:From:Message-Id:Date; b=fiumQBrUInGP6yz/kvOHE8QWMN4yaZSQVN+zjHNShbqcefj/TkdIOBLYT1ZWkdz+2B0wuO5IOu39Jsv/yMAoMXStQcLt6yHV1cyrs2DZGayC6oZnZBHgv9dSefsX6y0L0rG57MOiTWTqU5ETYOP3P7vxjRCoMLPzK0npSxTIeTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WGfxUae8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WGfxUae8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A862C433F1
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708396696;
	bh=wUtC+Z0PyKbKvcsDBpx7eujcUm+xRp4apatk28E9AsM=;
	h=To:Subject:From:Date:From;
	b=WGfxUae8ZefhC8GAvdg++VMHnWZt29SbgK+NryY8nOAmdkepwEhTV1+l9a6FFdNqP
	 LC3UKcYjwjSDlcN55Z9SuKV/urHrGoMhUyLHmyF3OgFMW/h+r8gt9cJgIY+Bx3+XiP
	 A4GMjd8RmFSyBux7qePNCe6CHR1/ITuNylb56vTRj6p/VyeussaLBMCA6RqHOwySn6
	 yNBUQSesVfYDw1/TRdLS2kMnM2g0qQxa+Ea5q3YhXdO48RoWpQyCP+lWiH90Cs5Tyi
	 JMgfiJjkTi+ARQnh7xEabMWC3dKavs3tXn/64wHtCh0yrtvPe4B/sTKw/Qi1wGzCzK
	 rPozgvDjewgrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7331EC48BC3
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170839669646.12894.8926715162722746998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 909ff931a90c9e4d7c28e447b18f3fb77d0cd1a4bdcd13690bd46ca1c6f3e610
Date: Tue, 20 Feb 2024 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708396696
