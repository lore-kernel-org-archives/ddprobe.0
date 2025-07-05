Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F7370813
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751703594; cv=none; b=afTru1UqcKExIb1lhm9Tqc34BIK/cKsXlSfoqY7ZQ237VdHuKcfrQbSjGZ9tEu6S7qpClTqCB5g8W/LUJgvHy+UohCJS2d5FM8PZUxCX5y8Zi46dRd9kDY23TLq3rx5yItbQ2HHxTNzMOheCWSN4zq+CiKNTZDwr9L6OiBJ2sAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751703594; c=relaxed/simple;
	bh=LIZIyn4XGM05YMiwvzY86kKha6tuJWyF6t9sUDoVdyc=;
	h=To:Subject:From:Message-Id:Date; b=SJsRXLuup32PCQmE9guy27RWehi9Mz95tNoUOIGZ8mupxx/XWBlviWJiND4sK5H2rPQ8XsfmaGc3Sd9dUnJamgjN8glCEd0+2uLoCNWRMFuwAtsZilZXIbm5g8Ql4dqDaynBz0IUSExIdnqc8Yj9yQfWutYrWbyysQL1qMc+9rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VSs28DYx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VSs28DYx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0545C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751703593;
	bh=LIZIyn4XGM05YMiwvzY86kKha6tuJWyF6t9sUDoVdyc=;
	h=To:Subject:From:Date:From;
	b=VSs28DYxQFNV6XJ9/CfPzXj9hRtl+hwHaiX53jVr5PYvy3y2ArlpWToKSxMVzOfzo
	 FfewugEsiSmcFmTcEVlqipwoSNqQJP6WTylmzzp/yYXvW8MybmsPwAJ8i+vYNcpg4f
	 BYZC4OUvh94ozjr7npLWfxzwHc8kYyosOKq1SFP5OXkTIcl2H2rSCErzI4r7mh27dX
	 FHSRMnjK/tw3QYhmZqClYH+rzYcx0D6qSnDK3mLw3NENi6be8Yjof6HbnNlIamWZYF
	 WEwyqLPaZK8g6gw3yNXDx+Np4zTLPdOcoyV9WyL7LkDfsbdnySBjYc+E2bxElthsMX
	 /obmaXMVebeaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917B5C8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175170359357.17612.4054596579808206487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbad14eada022b84a608a678033bd8bbde9209d9d60125c32213149f8321b62e
Date: Sat, 05 Jul 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751703593
