Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F5E29D0B
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746910194; cv=none; b=JOv/csx0YYPSkTWJZyF/TTYcU0flm/tAFvh42who44kkUn9Ui4L4LiB4JD5vluDWHAgIfxe2FYbNpSqrDAmlpKk09tqHoSn26qvxr8HMqrs9EkkL0LdMRibRy4vX8sTLgmutqr/2Q2gJy8SKM67x0CUcAO3fU2l3bc2Rqmi+B20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746910194; c=relaxed/simple;
	bh=YzviEWV+xrOpss/csMllXvnt3IE67byibVSc4LIJrEI=;
	h=To:Subject:From:Message-Id:Date; b=XI8NrDvYnrVdzjuXV8CQhwFK/bMG4XpGujAb7+2oxMURJ2fcxs/VvvfYGJdJCb/evuJ6+ghnVuhrUPUJ0p3rkRdE8I6+7SiUw8SpLd76F6o6bw3Oomir7r7iOr6qOoRYefxfLk11VNtIzlnelho1FY8Vh7gTLJzrNeu5lcZo2hI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qsorgwBA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qsorgwBA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6645C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746910193;
	bh=YzviEWV+xrOpss/csMllXvnt3IE67byibVSc4LIJrEI=;
	h=To:Subject:From:Date:From;
	b=qsorgwBA+Gr0VmUZuq8haVuNuo9QBQhkxg5+lF2iSvXStPg0pL8jrvbQwdRJ4Zejq
	 JXpfltSPzjOn6RfvN6gsagzoDmpA6Lmx/CNAwr4/zutfjeqA4Q2SoGIeSiZuEvP3lJ
	 OXwGOXpwj4/7UlCrB+/1RBmnjj7LUfRlVZDoCACkhJf23DiHjkcxNQoizZSvK44piH
	 WsC5RxTBr7TJB5HYqXu/6JvLzVII4+xEFlZoskGYQa61t7jSf72p8BVfzWMCdrSdrO
	 1B31S6XTMUXdo9jQzX3xTiix9H1gd3jdSXRrGu1f8Xmya/+ctdmBKGBrzbXHjAx3PW
	 ecLnEVeMQCNUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DA4C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174691019357.28973.10100035912212101970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7439978f476d86d8516403570c7b470d08d91675525ff2a106750310ed385347
Date: Sat, 10 May 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746910193
