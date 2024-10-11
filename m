Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30DD8193436
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728682554; cv=none; b=ZWpzyNx8Kx7KkLvaBDwljVW99mWGrFs2hSbbkf2qxLyImZqnYVnkSrDn7aivEQXJbR/aMUfBOQvYLfq+RMA9B6dyuLiwV+q1uG2E5WOtyLn1ks+w+CUfEjYcdWz+4Fn8JZGLcwbyltYgkwQ0kWyohVPbqi0oc7HC7nI+BfIQ0cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728682554; c=relaxed/simple;
	bh=l7S4N6eyL/kWAngf0IgdhWYleK5cDd9l++tE9FxVeXI=;
	h=To:Subject:From:Message-Id:Date; b=skpuT6gL78al4uzTJhZhRXGGFDU34nvFZnr7sjOdMF8bJiSEnb6FCRNpPrzXcfZJds/NxfFlamuU58eMWK4bMUpL01oCQD3qDUfjQje/2IiEHz+7RKGrXHla+UGBs8Ycra8TjjzEKvEli9nauP4e0RPbttWtHXGuXbrXoD3II7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/n//bsW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/n//bsW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1412C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728682553;
	bh=l7S4N6eyL/kWAngf0IgdhWYleK5cDd9l++tE9FxVeXI=;
	h=To:Subject:From:Date:From;
	b=B/n//bsWJjYa2ccHv5Eq9Q2g61JN6qP/ppIl5WtRiT5tmX/hBBw+EQOAS/HXbxNUj
	 TRGnjIKQCvNhJg/5vxq0IynNhhyKKqUcV5bjFA9ydSPpwhsD9b1jYCmt3yiOhbmAEI
	 8cOeCSR29Zt9lQTFeLXioWKFuaya9HYN6UEIryzBTepwiMe9vlD99LJ9y0wRI8OwdE
	 X+MZ/fpw3kBlFHWvwFz8O++MP3tsN93jiAQt9cw/f3+ABZC38YxJ1EqxedSJLyLUll
	 hBeJDx1q2siPwNPYZrl2fz+9N29b3IDDJIzjmj52bHut/8OZftY23YlWMiI6lcsID+
	 YQXK7evX2epUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C11D0EE3F
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172868255361.6794.5295350899940103133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 230d6f2cf89e0b17aae808b827c5c04fdc8c3f9631dcdfce07035ec311703cec
Date: Fri, 11 Oct 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728682553
