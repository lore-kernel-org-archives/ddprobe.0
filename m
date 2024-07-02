Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 566731BD01F
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 15:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719935123; cv=none; b=nlzVGejXYC6CiJbxubRWH4tGX8/75cDcs9ZrTJqd4mswQhIdWopGMLy2nmMBZVXZLK3KPDkmblTWMayN0dVog3+zZh9IyU1/vvqTuC+MX3aSvQLrblUlyhprXoyA6qUj0gUV3HDUJZeiMMD7tNJTB8oAV30kvPm1DDw5zSbuMks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719935123; c=relaxed/simple;
	bh=K8SlWC2BwGHPi9MKeAs75J4mgZ2yho1178iv3+MTN78=;
	h=To:Subject:From:Message-Id:Date; b=P4ZmzQYrtUBtUg3vYRoQtr0VJed75arxft7jEchZA3eELwRAWggTqNgNoUBYcYr1uX+ccQTRAuwHhny2YVykp/Aa9JzTsMQIAUp0gO4KCveZ2/A9UV79GDJMrvZCKd8906ki8eEEFPJVCp7xT6E8vwUZHfI3bXv1r0FHdFe/5+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HKUKPJq6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HKUKPJq6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB011C4AF07
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 15:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719935122;
	bh=K8SlWC2BwGHPi9MKeAs75J4mgZ2yho1178iv3+MTN78=;
	h=To:Subject:From:Date:From;
	b=HKUKPJq645c3fv2JbjZ9GS4118clpYu7HEsXIyGlNdB1yRjRACS+Bmddu2XqGpLvr
	 o9A2rKq8xgnZENCSXB9JoOujcmqCW5CjfSVu77GL4/ECfgEotiePkwQJBp+4oEljgv
	 7GduIy9NY7bPtg1NahYUC9/OpLeCUJYAm6MD0SeXIaK/UpeHtp1vZ5bsgyVJpvcYos
	 f90C/ki0fqDFz4e2QfANEjrRUUjvVLpMSLmucPnm60s/EfZSK7nXgPudvwNtprG9cX
	 Xsc1crnEwvcUGGfXnJW1zlwLalMBXW7b1T2NJ4mgnneN6wQx1jF4TYq4Vg7UrPcao/
	 1bEYRjnlDqAIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8D51C30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 15:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171993512279.28372.12729325046296604554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df53a0c77a738347f0e179831d1c25081907c6fff26d337940e827624413ebab
Date: Tue, 02 Jul 2024 15:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719935122
