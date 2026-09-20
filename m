Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF11238A299
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789937434; cv=none; b=iV7BSerS1+ryRkKuosBi0hg/m+3zHlTV7WTDYlCtnC3E6nD9Ya1KxLukB5VYQFrqw8j9HEXYqhZfgFdWRPL/wDXh42XStddUXAjapUMMWH/Lm1LMEPFYXLQfujb6WlvvHQ8fb69rnshQiUk8UGaKXJ8r5lZeI1ZPde8fJFcf1KM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789937434; c=relaxed/simple;
	bh=duUG34oicgrVHMdzNU1oCHf7cSukigy/OkIO+AmX5Qk=;
	h=To:Subject:From:Message-Id:Date; b=anBr+m7p9lKUEJXS6FzDwwQqB/a9iOd6veWgVIb7McPQ9HuJ68UpcBpADD2dW0P0tQcojIaSFQeNAw0Et3nikNUDzW/uSJiFfblp8b7Fm9lOChb3SA8RYblHbOOKiYL7aQ3jRbZwzfVnoww6hDEU5P061Z+jc5/7aGk5QlA0h8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EB2fhwEi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EB2fhwEi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9534C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789937433;
	bh=duUG34oicgrVHMdzNU1oCHf7cSukigy/OkIO+AmX5Qk=;
	h=To:Subject:From:Date:From;
	b=EB2fhwEiRPmVI7VnnhsCqL7SrHcKv+lWGz4kCojQusjKNlfgvNVmFTvfOpzkceDgr
	 6vA5hoDQm1YSTwN6pPQc8ZPVwTYajHkXaNd48oxl6f2+/XQXiWGQIM32V4iDT4PyYH
	 G0DLE+YYEfg7P8AEuzougb05ts31djIzkSRrNui6Jkj8R6QzjIF08ljnZ7ZOJvmKdM
	 EbIyeVOpk2Lk4hoE+sEhEXWc7y90+4ZcxddLiQdqT3k24Glv7bQU9A9yF2DkZZkdQJ
	 6gxgo4SX1RQEY4QwxniPnlTQGdybRssqlWfAWLIfGseQj70xqrFq9FZyDCBGem6OBB
	 phdVpyDXaXqsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF987C982DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178993743368.5904.17932319887804670236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2789a0416dd93a68613bc6a703ade0b9046ec3f30cf524f9b465d936405fc0e
Date: Sun, 20 Sep 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789937433
