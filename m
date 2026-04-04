Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41BAB1A6805
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 20:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775334334; cv=none; b=KxQPCdrzIL4O2oT2OT+L55XxHJ1Al5zV6MOW192iMwIbn7lPDezdRHqnyRPUZh0jZcgPkyMaqpCN00j8oPqtsc2omNHXCEjzZBlewzUOAz8bomGi0/feKr4w/l8AnXQvKwK6YndYgN2MzJ+hqTmSiAuwNDjAAEvaWaGfvmnxLOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775334334; c=relaxed/simple;
	bh=6Dq0Xz2S6E6HHYRTJ+U9OZBHRFMvHoxhgaURVRfwXjQ=;
	h=To:Subject:From:Message-Id:Date; b=WmUSy3G0SrkzcI0tEUKKW6Ke5eRIxwTVgvV/VREmTKLIJ/Ic6MIlapwZRsKhIyCCdK8Tv83eruuBonmpXvlFeWKJefTGNJ1/d1CweyWAPqt1UTGHADJ0reaB0iExHyzCqlx5pjiiFG5pfcoUUPpg5mxyVlS05BW1fThSEJm/zT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B11BM/O6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B11BM/O6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA31C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 20:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775334333;
	bh=6Dq0Xz2S6E6HHYRTJ+U9OZBHRFMvHoxhgaURVRfwXjQ=;
	h=To:Subject:From:Date:From;
	b=B11BM/O6frpxTEon1KW3q/vx+bSf1XkfEj4N9syqZsVc41UEqqDkSnOjSmeAkm+kp
	 KurFjHpRXDierAKLDPgi8LnZsaymf/EkgUIX0QTOWcJDjL9FW11tLHSUHm7ZZZa+WY
	 iktwy6h14oZVHeSe/oEoBYwuhth6cQItEECMRoLeVdB+l/Vn6KZU939RszeK+wb54e
	 1RhBISP/64MKXTdYEt4h9zcjC4xlHIOmEU+MBishlTKXj6uh0RNKVS1jI0kSvjhhVp
	 7ghpMzC6E/KKlA2m+Su+3JCxbPY404beIE3cg6DpxJOBnlzq0C0PCW8ZahP6xZDJkD
	 HU7AmWb6ia+xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD279E63FF6
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 20:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177533433368.2302.4298074732324008556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 204ae6050494596fb8ee9cc621e7ad5d5c12eb3a8bdc9f3dcf2aa15645d56b38
Date: Sat, 04 Apr 2026 20:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775334333
