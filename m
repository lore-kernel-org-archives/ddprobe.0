Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D19CB33EB1B
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789828234; cv=none; b=Iph9659rGki9JeYw5CN/KukPQd0c0pjuYeu2JSrXLzBa8qufFjNlWOSlrYjAw4LINwX4d2aY8Ld+B8lOEqPRqhjDHqMLzCpXPltBoWxjDMtyIqGUWt7TZTlBpuGevInYObdtDzTeprVWnlvwQFIMIfq/2Xzlwr1ijxPAdN/fRC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789828234; c=relaxed/simple;
	bh=v9NYxQ09D35bhiqum03qgumQmLX+VGBpYUpZqrZ024A=;
	h=To:Subject:From:Message-Id:Date; b=ZN6jnt2qdHUYTJUrB+Unp0IP41H+o1g97rIruQATtBXhEotTUQGp2X1zS5RBfaKgYxCys5pfA9xfvC1v4OsqCZ76XVqKVnOIwB6wncBMsVJnAJxUbCm4zau/cAEEuIZ6jo+W9Yj+BFh22ntvyAdpNpUHnfurOyyUnbphPyYG7JU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ExCICRvB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ExCICRvB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC9D0C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789828233;
	bh=v9NYxQ09D35bhiqum03qgumQmLX+VGBpYUpZqrZ024A=;
	h=To:Subject:From:Date:From;
	b=ExCICRvBfD3SmeANKdMuGcdrgb1uNKT/SyeCDa6QGI9EgFoOlxznVYn6P1PClWqZD
	 KWvVyo/zvX3dpmlZ56gV0blA5n7uX1yhSdQpX//t5OvcKOdrdNaAU4/Uve5XV1mQSO
	 fer4oLoFKJJ2uUqmp9mKbSNDv+Lf4v7KCIY0NvjfNTKxq3UZ2Rywtt+UkwOuCcrzmU
	 Q9uLB4POX4PtMRopX2PUIqXkrppBWtszjAyQ+GwNMalg6hkylr67p2zZr8A/FWnwUl
	 RVRsUls97JzxhtT8Hwy3pkDPZqFue8Mg2SQywJVDjeySrXTGd05yo2zPTkS1VS4Ces
	 gIzU2rkhZAZMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAA0C982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178982823368.3808.17574385783910819256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4ab19a3ae8f0e1b7a88951bd0903117979cab20baa270d9cbbe32a8dbbcbd32
Date: Sat, 19 Sep 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789828233
