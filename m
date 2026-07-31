Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C65C3BA222
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785508234; cv=none; b=B9aneRD/96nI+zZzTLJBXj6fwiArMGyk50ovSMJcx3ziI+3XzDZFTtrKlaetEa9ysQanJ5UReYOk6Li1FR4Ud0KJdZSY1ntjefL7cqKm2sHEYiujxoL4bJlO4Ds3fz1ezm3dwEcSq3YH8sr4z600Qg0k6sNA8WxoV5Ls4yvgd8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785508234; c=relaxed/simple;
	bh=HJs6RWRq8J5Q4+4UqSEPEc9uR9qSXKpi45hywniE8Q4=;
	h=To:Subject:From:Message-Id:Date; b=E9kySlx7OLC40TzkoRRXbgH6QViy+1J88o7sYA6L+TjdSG0XgZFwz+lpg3VKFbEv1A4fGJM+rC2elxiSsSFQVkMUQk+Z7DGZnWoWOw7m35lMKE7OGGycL9i86fuYBBDGnafLecrbKP6wdfbo5zWg2UvoXDpGSKVH0h6U6zVZwr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=idHlXN6W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="idHlXN6W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04BFC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785508233;
	bh=HJs6RWRq8J5Q4+4UqSEPEc9uR9qSXKpi45hywniE8Q4=;
	h=To:Subject:From:Date:From;
	b=idHlXN6WAbq+zht2lR4AzVuc9pU6v0KhG0a4oUcYp1oM3bSTgxM/fuSZqv4IUUGe4
	 2+pIL23gVSfOe2cMeOup2244fqLqlBOB/DrApiVvo4NLDCnmEgsqoS0348T/9tKmYq
	 F6aS7QVfRQVX0Z3O3k6+Fm3ZbxNkOC6wNWqNaSlFjt/Ylm/DF2acuHYprHCo4rWB7F
	 aWS+IwXjlVUjvyR5ffCJAHGwt8N3NAdX2t2sHgWe3vXBbjkJSZgRF+irVphEqPLY+6
	 pS6JGQwHNYpRjc6Qw1DBjzcIUqW3oJs5EkhXtf3LXLvET1j8cRB6Ne0pkz5YcWHBSb
	 ATiEedCS9JV7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5A2C54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178550823370.9524.9889667355012236723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cb3958362764a861866180da258479f4b31f26865df0a1ccd230089232db378
Date: Fri, 31 Jul 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785508233
