Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517EA8828
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745296794; cv=none; b=Mq7mS44Kda/cR/SQZMjlkWZACLau3r6KDMVgzhQ4bli7k+mu9ClCIY0x6on1rgW15erlyvPFL3ATXCxIEF9lYFrt/PdQ6W8VkSoTDiIucyCfP/kMpQoNA7emuQbOPut+bmDzUo96hZmWDLMqkyPyzBfeYZdfv1T15OeKszODzbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745296794; c=relaxed/simple;
	bh=CqRWYP7x/TONSkW1vQgQcg85jYu7Rp8lQU7CBJPcyOM=;
	h=To:Subject:From:Message-Id:Date; b=K6gcDGtThAdX4SfKsMdazKweyVyt8/7/+ureH3WJ0grWGBdUgsLe0q7Jux8oeAOuW+00QrsqIntUgv3yqc5TY9G2xaroWG3DKsHJMZoQQ/S79ceOODcRymirzffqeQPDpbV1dInGYeqnxX8d7EgqUt1Do3cUtu6azBFROR9xKDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YwIRi9BE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YwIRi9BE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA152C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745296793;
	bh=CqRWYP7x/TONSkW1vQgQcg85jYu7Rp8lQU7CBJPcyOM=;
	h=To:Subject:From:Date:From;
	b=YwIRi9BEp1PULxrGJgXLfEopojhjR4vUNGpy7A5Xev4SnKFyVMAVbuwoc8BzODwo8
	 Yi+dpjSd8IyXEY5JTvY8jHo2Bl7TnpJrhoi2WEfkdZD20A1IX4DHCQu7lwetW+4qCu
	 RkfEeIM04EkktoUy9WYcijV7vabKvYH7dj7AvmShzoNYLXq3u1jZSZJ9sroDOP1YaT
	 YQGcBxi7AK6DIUI56ek64iZUQVC8ofYC1W1kxw6RCc8u+mFUpJ9g2YPQ5inIC8blBv
	 OQsE+z9nR32AtQYQl4OimEbCJLibvrzQZsrONWEYFc9o03zOJuRRSRheD+ZKJwWLPX
	 HiX1k+wYjALUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A79CFC369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174529679363.10572.15173264387550178491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d780eef88bfcbdfee34c0737078dd71117f5de8e7ab07b6a2177f9be31bda3d5
Date: Tue, 22 Apr 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745296793
