Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A7953033D6
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785091834; cv=none; b=NxiUTubcliIly3/F0QtCSWwqTZTTwsBkTdjcW+eseljnH01J+hQn1bJzfLd35UALVy/OaSUsj7Be9y5fot5Dsp8lEQSIL9T1KMkKlrdJ6Hu0YfdQ1FHogDAHxmz9kI4ixF/vo0sq8foMvMZZb/rfYlEdjDuTQggmtTV21kmX2+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785091834; c=relaxed/simple;
	bh=lXHcNf+e3WX8DddBWNb4ufNqxHBJpwQyXYBRHneN17s=;
	h=To:Subject:From:Message-Id:Date; b=Hf3FQkvubbwpdbPxkcySby7V5NlXbkyggmFbztgJEGTGiQWMiSo4AgQKJuUbR5sDckSZ9ZeT+d/RgJB3qDM6v0N0bTmQ0Uzn2R3oLJGwcU1Nptld0vhEQQ4IMY1m3NaC+fg0lGVBQneO+8jxJoNzt+vts67AdT9ze6t4o1ghrxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W0pN91iw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W0pN91iw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF912C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785091833;
	bh=lXHcNf+e3WX8DddBWNb4ufNqxHBJpwQyXYBRHneN17s=;
	h=To:Subject:From:Date:From;
	b=W0pN91iwxIvcXKv0T697mZcysJ/aS00HOwatOobGBQpxdxGbVImxirSl6U0ShBU5U
	 H1Xlqw0xvHm6KJx8AeolhiT5+r2gijOFzNGZICKUs0Xn0BZT+W3BMpzNGpzKwWIYtI
	 O0G3PaJQaANigAgJMHiUnWGgrZNOA6KUu6GDCB2vbuHJBwOvwzvfG6B8Nwmho90q5t
	 adQqKQ8fw+7a8Pm07yBwwtAROyMQe6MC9PUZZniVL/EZSzjAzCsN5T85P86X7DxefR
	 cqga/tGZNsTlYEbJ74aef7++XjqTRdMiAU6NbdKh53DpFONG/wwAkCEdZCwVKSrXtN
	 8C6FNpHVeVaqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD732C531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178509183368.29598.7313311809948689305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15620e0952aaa630c48c696bfe678277f3ff7895deaf0068266d6d3437a06811
Date: Sun, 26 Jul 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785091833
