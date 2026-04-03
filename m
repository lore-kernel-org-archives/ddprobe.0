Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B705386455
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 10:15:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775211335; cv=none; b=aaKLwhCJxaGbknJpc1VfV5CrrhgEMdEe/+4hdbfXrz3gZmQZmsr/7tsBuU/F93Y2+dOxqLiIPHS24FOA9fLnHiYO6L+AqvfRCHNCu47GMbfhC+sPFPG2OCiQKzUIhi/SL9c/GIRDC7On4JSgs+UDRIOyg17KkeO91HyYzgTTDlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775211335; c=relaxed/simple;
	bh=Z9fmbcihPFUPdF8fz5Nsy+pX/8EUZeO8Sm6Jhnkaglk=;
	h=To:Subject:From:Message-Id:Date; b=YQAbfbUSiHk6ENuSgeKtwJLvD0q9Wz0XxL64Zdi9kGF8AxyCTgd539rjJ1xUJTs+PKTuYFyVsUz0iyQ3X1JW+GykM9IAcO+9nEA8gSk4TajACxjitW/BIVEQeojwibcHDI8c4swp88N859CJrCB/7ZHD3jhtIWT5EKyWnK37QrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U0y778FL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U0y778FL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF44C19423
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 10:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775211334;
	bh=Z9fmbcihPFUPdF8fz5Nsy+pX/8EUZeO8Sm6Jhnkaglk=;
	h=To:Subject:From:Date:From;
	b=U0y778FLAcSeCIRMJJsaFzkXL2AiOCtTM+W4xyiUZVjs+Btt/hPOu5Opi5jv8AHwo
	 7eRB24Of3J2S9cChZNVMtFQ+8v4hdDujBNLwzoC68+OzkT+gvrlqkdj8joTGxsImRV
	 KanId10vsp3Slm27purut/HpT7Azme8kzEHI+LNnx96sTUljIhudhlC5GbJdP2yUX9
	 sxIZqkA2uIB6lVH9pl3dzWfCZ0drUODcKMkZldyKoGnb4yJ+KOEWnTBK3PmXmqUvC1
	 Hpw2vH4wYiuKavA3fq5f/VuXzwlyTkUDtUiTg8x7yUY06ycSARFsjf1cQAgVau3an2
	 y5S1EfMdkW+pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB229E7E35E
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 10:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177521133368.23064.17818895946277814085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 304dbd6a0d064d7eca8fa7574f0aa6bef8e73d7f6c3364fcaf82ff799eb7b341
Date: Fri, 03 Apr 2026 10:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775211333
