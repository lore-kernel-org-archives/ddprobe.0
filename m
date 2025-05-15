Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439D61A0B08
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 15:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747321795; cv=none; b=VAfNZvpc4tRzbIg2fwnwac/RRY/VK99S7oH3/XTmXlzVncf4TkNJ/lQ8XvfDhbxvmBHAUi7VgDc2cDnZlCXPrsKy+tqrNVW0gRgzZhB6YJ8UL9s9iZyC7QHC/hvaCdth+rRuID7uR6s5Jy7/FK38vsIXcJjUUr9OzUnI/0tKLRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747321795; c=relaxed/simple;
	bh=UArlhxQd6/4EU2AcvJ3c8AZp8YsNDh7lkJTFS79MLLE=;
	h=To:Subject:From:Message-Id:Date; b=ZtMfqJ07u9+Ia3v8Sgeyr0i/ZQ3peZI78c6ovTMLj5t+zO8T00phCUw5twI4ad1bqrRrN0RkqGSvcwqDVrApAodidEpOCRfJd2Do5RPDZsLO3uUM+cvAg3GlNWqUe6A/tveH3bI/suZG04DfjMDd1nxiF39bh/0/0rHF/lrMae4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FARS6GtG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FARS6GtG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B99CFC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747321794;
	bh=UArlhxQd6/4EU2AcvJ3c8AZp8YsNDh7lkJTFS79MLLE=;
	h=To:Subject:From:Date:From;
	b=FARS6GtGtAF0riDY2uWOjMXBOgbLYu9OhpN/3zAKMMzjUSSJfawJhspFqu/qFCEMX
	 8fwzdV0oMtdlIm7jhALXkEmt0w4Shs9q4d8Xp9PMnsI9AulyADt9rcghAjLHauyLUT
	 3KXsxl4mZUHCyywPZiS8IGozwKMA2ybZnV8kWysAi3kTWymHaBqghUhCNd9udLHB6I
	 kRyttySHY9TiqIErcPgHd36+29Q2zo01VdppiR2lAcgPZQphNcXbuhwWVL8ctzZSRq
	 oH8gEnSporihsJxOi94tL0ruM5i9SME//0kIMT341Xpmxnq8V5yV3H/JQybyT+TpSm
	 f4jRDsfgGwq/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EF90C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174732179364.7959.6591957748873028429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfd52623a49e644d01964855bb159632d4fed96103e0944147f2f4d949192c66
Date: Thu, 15 May 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747321793
